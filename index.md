# kustomize changes tracked by commits 
### This file generated at Thu Mar  7 16:04:52 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cfd3f048 to 4a6428b4 on Thu Mar 7 15:50:21 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 4fd33c20..6277c0ab 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2294cc24..1670c08c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
+    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
 
 namespace: release-service 
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
<h3>1: Staging changes from cfd3f048 to 4a6428b4 on Thu Mar 7 15:50:21 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 4fd33c20..6277c0ab 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2294cc24..1670c08c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
+    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
 
 namespace: release-service 
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
<h3>1: Development changes from cfd3f048 to 4a6428b4 on Thu Mar 7 15:50:21 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 4fd33c20..6277c0ab 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=2518642f06f601d05935c4f6f152a04c695e5467
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2294cc24..1670c08c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=2518642f06f601d05935c4f6f152a04c695e5467
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
+    newTag: 2518642f06f601d05935c4f6f152a04c695e5467
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-cfd3f048/development/components/release/development/kustomize.out.yaml
1790c1790
<         image: quay.io/redhat-appstudio/release-service:2518642f06f601d05935c4f6f152a04c695e5467
---
>         image: quay.io/redhat-appstudio/release-service:17f77107fc32d17de3dc5820d2d5156b2ca896ba 
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
<h3>2: Production changes from 14a43eda to cfd3f048 on Thu Mar 7 14:49:18 2024 </h3>  
 
<details> 
<summary>Git Diff (320 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index f93c5622..2a6bb3f9 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 53f36ab9..abdaa837 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 2957dba2..7aedc9a8 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d11263b2..71319245 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 4a2a2f71..1a2d2062 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 21025d9c..1bbade96 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false 
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
<h3>2: Staging changes from 14a43eda to cfd3f048 on Thu Mar 7 14:49:18 2024 </h3>  
 
<details> 
<summary>Git Diff (320 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index f93c5622..2a6bb3f9 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 53f36ab9..abdaa837 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 2957dba2..7aedc9a8 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d11263b2..71319245 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 4a2a2f71..1a2d2062 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 21025d9c..1bbade96 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (216 lines)</summary>  

``` 
./commit-14a43eda/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1362,1363c1362,1363
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1478,1479d1477
<         - -threadiness
<         - "32"
1890,1900d1887
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
1904,1916d1890
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
1918,1952d1891
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
./commit-14a43eda/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1362,1363c1362,1363
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1478,1479d1477
<         - -threadiness
<         - "32"
1890,1900d1887
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
1904,1916d1890
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
1918,1952d1891
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
./commit-14a43eda/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1362,1363c1362,1363
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1478,1479d1477
<         - -threadiness
<         - "32"
1890,1900d1887
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
1904,1916d1890
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
1918,1952d1891
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2 
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
<h3>2: Development changes from 14a43eda to cfd3f048 on Thu Mar 7 14:49:18 2024 </h3>  
 
<details> 
<summary>Git Diff (320 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index f93c5622..2a6bb3f9 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 53f36ab9..abdaa837 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 2957dba2..7aedc9a8 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d11263b2..71319245 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 4a2a2f71..1a2d2062 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 21025d9c..1bbade96 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1359,8 +1359,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 5m
-            memory: 128Mi
+            cpu: 100m
+            memory: 512Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1475,6 +1475,8 @@ spec:
         - 10m
         - -threadiness
         - "32"
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1885,10 +1887,69 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
       disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (75 lines)</summary>  

``` 
./commit-14a43eda/development/components/pipeline-service/development/kustomize.out.yaml
1338,1339c1338,1339
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1548,1549c1548,1549
<             cpu: 250m
<             memory: 2Gi
---
>             cpu: 100m
>             memory: 64Mi
1999,2009d1998
<             template:
<               spec:
<                 containers:
<                 - name: proxy
<                   resources:
<                     limits:
<                       cpu: 500m
<                       memory: 500Mi
<                     requests:
<                       cpu: 100m
<                       memory: 100Mi
2013,2025d2001
<         tekton-pipelines-webhook:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: webhook
<                   resources:
<                     limits:
<                       cpu: "1"
<                       memory: 1Gi
<                     requests:
<                       cpu: 200m
<                       memory: 200Mi
2027,2061d2002
<       horizontalPodAutoscalers:
<         tekton-operator-proxy-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2
<         tekton-pipelines-webhook:
<           spec:
<             maxReplicas: 6
<             metrics:
<             - resource:
<                 name: cpu
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             - resource:
<                 name: memory
<                 target:
<                   averageUtilization: 100
<                   type: Utilization
<               type: Resource
<             minReplicas: 2 
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
<h3>3: Production changes from 94797662 to 14a43eda on Thu Mar 7 13:57:00 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 32d6c450..9a91a684 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=52cd9c927aa8858c4136147389ab620283bbdacb
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=741cb3cc24c649732d1bfb9ccc69f5f839a9a2ab 
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
<h3>3: Staging changes from 94797662 to 14a43eda on Thu Mar 7 13:57:00 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 32d6c450..9a91a684 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=52cd9c927aa8858c4136147389ab620283bbdacb
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=741cb3cc24c649732d1bfb9ccc69f5f839a9a2ab 
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
<h3>3: Development changes from 94797662 to 14a43eda on Thu Mar 7 13:57:00 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 32d6c450..9a91a684 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=52cd9c927aa8858c4136147389ab620283bbdacb
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=741cb3cc24c649732d1bfb9ccc69f5f839a9a2ab 
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
<h3>4: Production changes from 57ef7edf to 94797662 on Thu Mar 7 08:46:13 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 6c32225a..83ba107e 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -7,12 +7,6 @@ spec:
   template:
     includedNamespaces:
       - toolchain-host-operator
-    includedResources:
-      - bannedusers.toolchain.dev.openshift.com
-      - masteruserrecords.toolchain.dev.openshift.com
-      - spacebindings.toolchain.dev.openshift.com
-      - spaces.toolchain.dev.openshift.com
-      - usersignups.toolchain.dev.openshift.com
     storageLocation: velero-aws-1
     ttl: 720h0m0s
   useOwnerReferencesInBackup: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-57ef7edf/production/components/backup/production/stone-prd-host1/kustomize.out.yaml
115a116,121
>     includedResources:
>     - bannedusers.toolchain.dev.openshift.com
>     - masteruserrecords.toolchain.dev.openshift.com
>     - spacebindings.toolchain.dev.openshift.com
>     - spaces.toolchain.dev.openshift.com
>     - usersignups.toolchain.dev.openshift.com
./commit-57ef7edf/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
172a173,178
>     includedResources:
>     - bannedusers.toolchain.dev.openshift.com
>     - masteruserrecords.toolchain.dev.openshift.com
>     - spacebindings.toolchain.dev.openshift.com
>     - spaces.toolchain.dev.openshift.com
>     - usersignups.toolchain.dev.openshift.com 
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
<h3>4: Staging changes from 57ef7edf to 94797662 on Thu Mar 7 08:46:13 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 6c32225a..83ba107e 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -7,12 +7,6 @@ spec:
   template:
     includedNamespaces:
       - toolchain-host-operator
-    includedResources:
-      - bannedusers.toolchain.dev.openshift.com
-      - masteruserrecords.toolchain.dev.openshift.com
-      - spacebindings.toolchain.dev.openshift.com
-      - spaces.toolchain.dev.openshift.com
-      - usersignups.toolchain.dev.openshift.com
     storageLocation: velero-aws-1
     ttl: 720h0m0s
   useOwnerReferencesInBackup: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-57ef7edf/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
172a173,178
>     includedResources:
>     - bannedusers.toolchain.dev.openshift.com
>     - masteruserrecords.toolchain.dev.openshift.com
>     - spacebindings.toolchain.dev.openshift.com
>     - spaces.toolchain.dev.openshift.com
>     - usersignups.toolchain.dev.openshift.com
./commit-57ef7edf/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
115a116,121
>     includedResources:
>     - bannedusers.toolchain.dev.openshift.com
>     - masteruserrecords.toolchain.dev.openshift.com
>     - spacebindings.toolchain.dev.openshift.com
>     - spaces.toolchain.dev.openshift.com
>     - usersignups.toolchain.dev.openshift.com 
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
<h3>4: Development changes from 57ef7edf to 94797662 on Thu Mar 7 08:46:13 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 6c32225a..83ba107e 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -7,12 +7,6 @@ spec:
   template:
     includedNamespaces:
       - toolchain-host-operator
-    includedResources:
-      - bannedusers.toolchain.dev.openshift.com
-      - masteruserrecords.toolchain.dev.openshift.com
-      - spacebindings.toolchain.dev.openshift.com
-      - spaces.toolchain.dev.openshift.com
-      - usersignups.toolchain.dev.openshift.com
     storageLocation: velero-aws-1
     ttl: 720h0m0s
   useOwnerReferencesInBackup: true 
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
