# kustomize changes tracked by commits 
### This file generated at Thu Sep 26 16:06:18 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6063cf84 to 6b9d7aa2 on Thu Sep 26 14:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e988c922..beb080ed 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1574,6 +1574,13 @@ spec:
                         cpu: 100m
                       limits:
                         memory: 2Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1611,11 +1618,11 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f479daaf..dc5697ea 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 1Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2bf23bad..80946c25 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 6063cf84 to 6b9d7aa2 on Thu Sep 26 14:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e988c922..beb080ed 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1574,6 +1574,13 @@ spec:
                         cpu: 100m
                       limits:
                         memory: 2Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1611,11 +1618,11 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f479daaf..dc5697ea 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 1Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2bf23bad..80946c25 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-6063cf84/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2065,2071d2064
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2125c2118
<       buckets: 8
---
>       buckets: 4
2129c2122
<       replicas: 4
---
>       replicas: 2
./commit-6063cf84/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2065,2071d2064
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2125c2118
<       buckets: 8
---
>       buckets: 4
2129c2122
<       replicas: 4
---
>       replicas: 2 
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
<h3>1: Development changes from 6063cf84 to 6b9d7aa2 on Thu Sep 26 14:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e988c922..beb080ed 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1574,6 +1574,13 @@ spec:
                         cpu: 100m
                       limits:
                         memory: 2Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1611,11 +1618,11 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f479daaf..dc5697ea 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 1Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2bf23bad..80946c25 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
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
<h3>2: Production changes from 6819aae5 to 6063cf84 on Thu Sep 26 12:29:04 2024 </h3>  
 
<details> 
<summary>Git Diff (391 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 26e96a32..dde32258 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - nvme-storage-configurator
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
new file mode 100644
index 00000000..db67a811
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nvme-storage-configurator.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
new file mode 100644
index 00000000..505a3aa4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
@@ -0,0 +1,40 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/nvme-storage-configurator
+                environment: staging
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: nvme-storage-configurator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: default
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 588724c3..d9c1e73f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..ccca8a68 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/clusterrolebinding.yaml b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
new file mode 100644
index 00000000..aa240418
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
@@ -0,0 +1,67 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: node-maintenance
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - pods/eviction
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - extensions
+  resources:
+  - daemonsets
+  verbs:
+  - get
+- apiGroups:
+  - apps
+  resources:
+  - daemonsets
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: node-maintenance
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: node-maintenance
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: nvme-storage-configurator-privileged
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: system:openshift:scc:privileged
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
new file mode 100644
index 00000000..60ecaad6
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -0,0 +1,61 @@
+apiVersion: apps/v1
+kind: DaemonSet
+metadata:
+  name: nvme-storage-configurator
+  labels:
+    app: nvme-storage-configurator
+spec:
+  selector:
+    matchLabels:
+      app: nvme-storage-configurator
+  template:
+    metadata:
+      labels:
+        app: nvme-storage-configurator
+    spec:
+      nodeSelector:
+        konflux-ci.dev/storage: "nvme"
+      tolerations:
+        - key: konflux-ci.dev/storage
+          operator: "Equal"
+          value: "nvme"
+          effect: "NoSchedule"
+      hostPID: true
+      serviceAccount: nvme-storage-configurator
+      initContainers:
+        - name: install
+          image: "quay.io/openshift/origin-network-tools"
+          command: ['/bin/bash', '-c', '/bin/bash -x /scripts/install.sh']
+          env:
+          - name: NODE_NAME
+            valueFrom:
+              fieldRef:
+                apiVersion: v1
+                fieldPath: spec.nodeName
+          securityContext:
+            privileged: true
+          volumeMounts:
+            - mountPath: /scripts
+              name: script-config
+            - mountPath: /host-etc-systemd-dir
+              name: etc-systemd-dir
+            - mountPath: /host-usr-local-bin
+              name: usr-local-bin
+            - mountPath: /host-dev-dir
+              name: dev-dir
+      containers:
+        - name: pause
+          image: registry.redhat.io/rhel8/pause:8.10
+      volumes:
+        - name: etc-systemd-dir
+          hostPath:
+            path: /etc/systemd/system
+        - name: usr-local-bin
+          hostPath:
+            path: /usr/local/bin
+        - name: dev-dir
+          hostPath:
+            path: /dev
+        - name: script-config
+          configMap:
+            name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/base/install.sh b/configs/nvme-storage-configurator/base/install.sh
new file mode 100644
index 00000000..120d5ab9
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/install.sh
@@ -0,0 +1,24 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+if [ -f /host-etc-systemd-dir/nvme-init-done ]; then
+    echo 'NVMe init already done'
+    oc adm uncordon $NODE_NAME
+    exit 0
+fi
+
+cp /scripts/mount.sh /host-usr-local-bin/mount.sh
+chmod 0755 /host-usr-local-bin/mount.sh
+
+cp /scripts/nvme-storage.service /host-etc-systemd-dir/nvme-storage.service
+chmod 0644 /host-etc-systemd-dir/nvme-storage.service
+
+oc adm cordon $NODE_NAME
+oc adm drain $NODE_NAME --delete-emptydir-data --ignore-daemonsets --grace-period=-1
+
+nsenter -t 1 -m -u -i -n -p -- systemctl daemon-reload
+nsenter -t 1 -m -u -i -n -p -- systemctl enable nvme-storage.service
+touch /host-etc-systemd-dir/nvme-init-done
+nsenter -t 1 -m -u -i -n -p -- systemctl reboot
diff --git a/configs/nvme-storage-configurator/base/kustomization.yaml b/configs/nvme-storage-configurator/base/kustomization.yaml
new file mode 100644
index 00000000..dc340693
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - namespace.yaml
+  - serviceaccount.yaml
+  - clusterrolebinding.yaml
+  - daemonset.yaml
+configMapGenerator:
+- name: nvme-storage-configurator
+  files:
+  - install.sh
+  - mount.sh
+  - nvme-storage.service
diff --git a/configs/nvme-storage-configurator/base/mount.sh b/configs/nvme-storage-configurator/base/mount.sh
new file mode 100644
index 00000000..ac1ac009
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/mount.sh
@@ -0,0 +1,36 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+DEVICE="$( ls /dev/disk/by-id/nvme-Amazon_EC2_NVMe_Instance_Storage_* | sort | head -n1 )"
+echo "Going to use device $DEVICE"
+
+export MOUNT_POINT="/var/home/nvme"
+export TARGET_DIR="/var/lib"
+export FSTYPE="xfs"
+
+mkdir -p ${MOUNT_POINT}
+
+if lsblk -no FSTYPE "$DEVICE" | grep -qE '\S'; then
+    echo "File system already exists on $DEVICE."
+else
+    echo "No file system found on $DEVICE. Creating XFS filesystem..."
+    mkfs -t "$FSTYPE" "$DEVICE"
+fi
+
+if ! grep -q "$DEVICE $MOUNT_POINT" /etc/fstab; then
+    echo "$DEVICE $MOUNT_POINT $FSTYPE defaults 0 0" >> /etc/fstab
+fi
+
+mount ${MOUNT_POINT}
+
+mkdir -p ${MOUNT_POINT}/var-lib-kubelet-pods
+mount --bind ${MOUNT_POINT}/var-lib-kubelet-pods ${TARGET_DIR}/kubelet/pods
+
+mkdir -p ${MOUNT_POINT}/var-lib-containers
+mount --bind ${MOUNT_POINT}/var-lib-containers ${TARGET_DIR}/containers
+
+restorecon -R -v -F /var/lib/kubelet/pods /var/lib/containers
+
+echo "Filesystem setup and mounting complete."
diff --git a/configs/nvme-storage-configurator/base/namespace.yaml b/configs/nvme-storage-configurator/base/namespace.yaml
new file mode 100644
index 00000000..933e7fd2
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/nvme-storage.service b/configs/nvme-storage-configurator/base/nvme-storage.service
new file mode 100644
index 00000000..2eec30d3
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/nvme-storage.service
@@ -0,0 +1,15 @@
+[Unit]
+Description=Custom Service for NVMe Storage
+DefaultDependencies=no
+Before=kubelet-dependencies.target
+After=sysinit.target 
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+StandardOutput=tty
+StandardError=tty
+ExecStart=/usr/local/bin/configuration.sh
+
+[Install]
+RequiredBy=local-fs.target
diff --git a/configs/nvme-storage-configurator/base/serviceaccount.yaml b/configs/nvme-storage-configurator/base/serviceaccount.yaml
new file mode 100644
index 00000000..3935b20b
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/serviceaccount.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/production/kustomization.yaml b/configs/nvme-storage-configurator/production/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/production/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base
diff --git a/configs/nvme-storage-configurator/staging/kustomization.yaml b/configs/nvme-storage-configurator/staging/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6819aae5 to 6063cf84 on Thu Sep 26 12:29:04 2024 </h3>  
 
<details> 
<summary>Git Diff (391 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 26e96a32..dde32258 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - nvme-storage-configurator
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
new file mode 100644
index 00000000..db67a811
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nvme-storage-configurator.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
new file mode 100644
index 00000000..505a3aa4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
@@ -0,0 +1,40 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/nvme-storage-configurator
+                environment: staging
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: nvme-storage-configurator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: default
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 588724c3..d9c1e73f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..ccca8a68 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/clusterrolebinding.yaml b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
new file mode 100644
index 00000000..aa240418
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
@@ -0,0 +1,67 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: node-maintenance
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - pods/eviction
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - extensions
+  resources:
+  - daemonsets
+  verbs:
+  - get
+- apiGroups:
+  - apps
+  resources:
+  - daemonsets
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: node-maintenance
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: node-maintenance
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: nvme-storage-configurator-privileged
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: system:openshift:scc:privileged
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
new file mode 100644
index 00000000..60ecaad6
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -0,0 +1,61 @@
+apiVersion: apps/v1
+kind: DaemonSet
+metadata:
+  name: nvme-storage-configurator
+  labels:
+    app: nvme-storage-configurator
+spec:
+  selector:
+    matchLabels:
+      app: nvme-storage-configurator
+  template:
+    metadata:
+      labels:
+        app: nvme-storage-configurator
+    spec:
+      nodeSelector:
+        konflux-ci.dev/storage: "nvme"
+      tolerations:
+        - key: konflux-ci.dev/storage
+          operator: "Equal"
+          value: "nvme"
+          effect: "NoSchedule"
+      hostPID: true
+      serviceAccount: nvme-storage-configurator
+      initContainers:
+        - name: install
+          image: "quay.io/openshift/origin-network-tools"
+          command: ['/bin/bash', '-c', '/bin/bash -x /scripts/install.sh']
+          env:
+          - name: NODE_NAME
+            valueFrom:
+              fieldRef:
+                apiVersion: v1
+                fieldPath: spec.nodeName
+          securityContext:
+            privileged: true
+          volumeMounts:
+            - mountPath: /scripts
+              name: script-config
+            - mountPath: /host-etc-systemd-dir
+              name: etc-systemd-dir
+            - mountPath: /host-usr-local-bin
+              name: usr-local-bin
+            - mountPath: /host-dev-dir
+              name: dev-dir
+      containers:
+        - name: pause
+          image: registry.redhat.io/rhel8/pause:8.10
+      volumes:
+        - name: etc-systemd-dir
+          hostPath:
+            path: /etc/systemd/system
+        - name: usr-local-bin
+          hostPath:
+            path: /usr/local/bin
+        - name: dev-dir
+          hostPath:
+            path: /dev
+        - name: script-config
+          configMap:
+            name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/base/install.sh b/configs/nvme-storage-configurator/base/install.sh
new file mode 100644
index 00000000..120d5ab9
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/install.sh
@@ -0,0 +1,24 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+if [ -f /host-etc-systemd-dir/nvme-init-done ]; then
+    echo 'NVMe init already done'
+    oc adm uncordon $NODE_NAME
+    exit 0
+fi
+
+cp /scripts/mount.sh /host-usr-local-bin/mount.sh
+chmod 0755 /host-usr-local-bin/mount.sh
+
+cp /scripts/nvme-storage.service /host-etc-systemd-dir/nvme-storage.service
+chmod 0644 /host-etc-systemd-dir/nvme-storage.service
+
+oc adm cordon $NODE_NAME
+oc adm drain $NODE_NAME --delete-emptydir-data --ignore-daemonsets --grace-period=-1
+
+nsenter -t 1 -m -u -i -n -p -- systemctl daemon-reload
+nsenter -t 1 -m -u -i -n -p -- systemctl enable nvme-storage.service
+touch /host-etc-systemd-dir/nvme-init-done
+nsenter -t 1 -m -u -i -n -p -- systemctl reboot
diff --git a/configs/nvme-storage-configurator/base/kustomization.yaml b/configs/nvme-storage-configurator/base/kustomization.yaml
new file mode 100644
index 00000000..dc340693
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - namespace.yaml
+  - serviceaccount.yaml
+  - clusterrolebinding.yaml
+  - daemonset.yaml
+configMapGenerator:
+- name: nvme-storage-configurator
+  files:
+  - install.sh
+  - mount.sh
+  - nvme-storage.service
diff --git a/configs/nvme-storage-configurator/base/mount.sh b/configs/nvme-storage-configurator/base/mount.sh
new file mode 100644
index 00000000..ac1ac009
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/mount.sh
@@ -0,0 +1,36 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+DEVICE="$( ls /dev/disk/by-id/nvme-Amazon_EC2_NVMe_Instance_Storage_* | sort | head -n1 )"
+echo "Going to use device $DEVICE"
+
+export MOUNT_POINT="/var/home/nvme"
+export TARGET_DIR="/var/lib"
+export FSTYPE="xfs"
+
+mkdir -p ${MOUNT_POINT}
+
+if lsblk -no FSTYPE "$DEVICE" | grep -qE '\S'; then
+    echo "File system already exists on $DEVICE."
+else
+    echo "No file system found on $DEVICE. Creating XFS filesystem..."
+    mkfs -t "$FSTYPE" "$DEVICE"
+fi
+
+if ! grep -q "$DEVICE $MOUNT_POINT" /etc/fstab; then
+    echo "$DEVICE $MOUNT_POINT $FSTYPE defaults 0 0" >> /etc/fstab
+fi
+
+mount ${MOUNT_POINT}
+
+mkdir -p ${MOUNT_POINT}/var-lib-kubelet-pods
+mount --bind ${MOUNT_POINT}/var-lib-kubelet-pods ${TARGET_DIR}/kubelet/pods
+
+mkdir -p ${MOUNT_POINT}/var-lib-containers
+mount --bind ${MOUNT_POINT}/var-lib-containers ${TARGET_DIR}/containers
+
+restorecon -R -v -F /var/lib/kubelet/pods /var/lib/containers
+
+echo "Filesystem setup and mounting complete."
diff --git a/configs/nvme-storage-configurator/base/namespace.yaml b/configs/nvme-storage-configurator/base/namespace.yaml
new file mode 100644
index 00000000..933e7fd2
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/nvme-storage.service b/configs/nvme-storage-configurator/base/nvme-storage.service
new file mode 100644
index 00000000..2eec30d3
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/nvme-storage.service
@@ -0,0 +1,15 @@
+[Unit]
+Description=Custom Service for NVMe Storage
+DefaultDependencies=no
+Before=kubelet-dependencies.target
+After=sysinit.target 
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+StandardOutput=tty
+StandardError=tty
+ExecStart=/usr/local/bin/configuration.sh
+
+[Install]
+RequiredBy=local-fs.target
diff --git a/configs/nvme-storage-configurator/base/serviceaccount.yaml b/configs/nvme-storage-configurator/base/serviceaccount.yaml
new file mode 100644
index 00000000..3935b20b
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/serviceaccount.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/production/kustomization.yaml b/configs/nvme-storage-configurator/production/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/production/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base
diff --git a/configs/nvme-storage-configurator/staging/kustomization.yaml b/configs/nvme-storage-configurator/staging/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base 
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
<h3>2: Development changes from 6819aae5 to 6063cf84 on Thu Sep 26 12:29:04 2024 </h3>  
 
<details> 
<summary>Git Diff (391 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 26e96a32..dde32258 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - nvme-storage-configurator
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
new file mode 100644
index 00000000..db67a811
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nvme-storage-configurator.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
new file mode 100644
index 00000000..505a3aa4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
@@ -0,0 +1,40 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/nvme-storage-configurator
+                environment: staging
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: nvme-storage-configurator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: default
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 588724c3..d9c1e73f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..ccca8a68 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/clusterrolebinding.yaml b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
new file mode 100644
index 00000000..aa240418
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
@@ -0,0 +1,67 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: node-maintenance
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - pods/eviction
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - extensions
+  resources:
+  - daemonsets
+  verbs:
+  - get
+- apiGroups:
+  - apps
+  resources:
+  - daemonsets
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: node-maintenance
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: node-maintenance
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: nvme-storage-configurator-privileged
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: system:openshift:scc:privileged
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
new file mode 100644
index 00000000..60ecaad6
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -0,0 +1,61 @@
+apiVersion: apps/v1
+kind: DaemonSet
+metadata:
+  name: nvme-storage-configurator
+  labels:
+    app: nvme-storage-configurator
+spec:
+  selector:
+    matchLabels:
+      app: nvme-storage-configurator
+  template:
+    metadata:
+      labels:
+        app: nvme-storage-configurator
+    spec:
+      nodeSelector:
+        konflux-ci.dev/storage: "nvme"
+      tolerations:
+        - key: konflux-ci.dev/storage
+          operator: "Equal"
+          value: "nvme"
+          effect: "NoSchedule"
+      hostPID: true
+      serviceAccount: nvme-storage-configurator
+      initContainers:
+        - name: install
+          image: "quay.io/openshift/origin-network-tools"
+          command: ['/bin/bash', '-c', '/bin/bash -x /scripts/install.sh']
+          env:
+          - name: NODE_NAME
+            valueFrom:
+              fieldRef:
+                apiVersion: v1
+                fieldPath: spec.nodeName
+          securityContext:
+            privileged: true
+          volumeMounts:
+            - mountPath: /scripts
+              name: script-config
+            - mountPath: /host-etc-systemd-dir
+              name: etc-systemd-dir
+            - mountPath: /host-usr-local-bin
+              name: usr-local-bin
+            - mountPath: /host-dev-dir
+              name: dev-dir
+      containers:
+        - name: pause
+          image: registry.redhat.io/rhel8/pause:8.10
+      volumes:
+        - name: etc-systemd-dir
+          hostPath:
+            path: /etc/systemd/system
+        - name: usr-local-bin
+          hostPath:
+            path: /usr/local/bin
+        - name: dev-dir
+          hostPath:
+            path: /dev
+        - name: script-config
+          configMap:
+            name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/base/install.sh b/configs/nvme-storage-configurator/base/install.sh
new file mode 100644
index 00000000..120d5ab9
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/install.sh
@@ -0,0 +1,24 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+if [ -f /host-etc-systemd-dir/nvme-init-done ]; then
+    echo 'NVMe init already done'
+    oc adm uncordon $NODE_NAME
+    exit 0
+fi
+
+cp /scripts/mount.sh /host-usr-local-bin/mount.sh
+chmod 0755 /host-usr-local-bin/mount.sh
+
+cp /scripts/nvme-storage.service /host-etc-systemd-dir/nvme-storage.service
+chmod 0644 /host-etc-systemd-dir/nvme-storage.service
+
+oc adm cordon $NODE_NAME
+oc adm drain $NODE_NAME --delete-emptydir-data --ignore-daemonsets --grace-period=-1
+
+nsenter -t 1 -m -u -i -n -p -- systemctl daemon-reload
+nsenter -t 1 -m -u -i -n -p -- systemctl enable nvme-storage.service
+touch /host-etc-systemd-dir/nvme-init-done
+nsenter -t 1 -m -u -i -n -p -- systemctl reboot
diff --git a/configs/nvme-storage-configurator/base/kustomization.yaml b/configs/nvme-storage-configurator/base/kustomization.yaml
new file mode 100644
index 00000000..dc340693
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - namespace.yaml
+  - serviceaccount.yaml
+  - clusterrolebinding.yaml
+  - daemonset.yaml
+configMapGenerator:
+- name: nvme-storage-configurator
+  files:
+  - install.sh
+  - mount.sh
+  - nvme-storage.service
diff --git a/configs/nvme-storage-configurator/base/mount.sh b/configs/nvme-storage-configurator/base/mount.sh
new file mode 100644
index 00000000..ac1ac009
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/mount.sh
@@ -0,0 +1,36 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+DEVICE="$( ls /dev/disk/by-id/nvme-Amazon_EC2_NVMe_Instance_Storage_* | sort | head -n1 )"
+echo "Going to use device $DEVICE"
+
+export MOUNT_POINT="/var/home/nvme"
+export TARGET_DIR="/var/lib"
+export FSTYPE="xfs"
+
+mkdir -p ${MOUNT_POINT}
+
+if lsblk -no FSTYPE "$DEVICE" | grep -qE '\S'; then
+    echo "File system already exists on $DEVICE."
+else
+    echo "No file system found on $DEVICE. Creating XFS filesystem..."
+    mkfs -t "$FSTYPE" "$DEVICE"
+fi
+
+if ! grep -q "$DEVICE $MOUNT_POINT" /etc/fstab; then
+    echo "$DEVICE $MOUNT_POINT $FSTYPE defaults 0 0" >> /etc/fstab
+fi
+
+mount ${MOUNT_POINT}
+
+mkdir -p ${MOUNT_POINT}/var-lib-kubelet-pods
+mount --bind ${MOUNT_POINT}/var-lib-kubelet-pods ${TARGET_DIR}/kubelet/pods
+
+mkdir -p ${MOUNT_POINT}/var-lib-containers
+mount --bind ${MOUNT_POINT}/var-lib-containers ${TARGET_DIR}/containers
+
+restorecon -R -v -F /var/lib/kubelet/pods /var/lib/containers
+
+echo "Filesystem setup and mounting complete."
diff --git a/configs/nvme-storage-configurator/base/namespace.yaml b/configs/nvme-storage-configurator/base/namespace.yaml
new file mode 100644
index 00000000..933e7fd2
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/nvme-storage.service b/configs/nvme-storage-configurator/base/nvme-storage.service
new file mode 100644
index 00000000..2eec30d3
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/nvme-storage.service
@@ -0,0 +1,15 @@
+[Unit]
+Description=Custom Service for NVMe Storage
+DefaultDependencies=no
+Before=kubelet-dependencies.target
+After=sysinit.target 
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+StandardOutput=tty
+StandardError=tty
+ExecStart=/usr/local/bin/configuration.sh
+
+[Install]
+RequiredBy=local-fs.target
diff --git a/configs/nvme-storage-configurator/base/serviceaccount.yaml b/configs/nvme-storage-configurator/base/serviceaccount.yaml
new file mode 100644
index 00000000..3935b20b
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/serviceaccount.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/production/kustomization.yaml b/configs/nvme-storage-configurator/production/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/production/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base
diff --git a/configs/nvme-storage-configurator/staging/kustomization.yaml b/configs/nvme-storage-configurator/staging/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-6819aae5/development/app-of-apps-development.yaml
868,909d867
<   name: nvme-storage-configurator
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           values:
<             environment: staging
<             sourceRoot: configs/nvme-storage-configurator
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: nvme-storage-configurator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata: 
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
<h3>3: Production changes from c64ce545 to 6819aae5 on Thu Sep 26 10:41:40 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index da421997..a244e75c 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 33dd638a..024af953 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=54cded685c2bee18637d863ae76267580f195775
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
+      - verify_ec_task_git_revision=7f092114b9879067f0afa1cee877ce318eeedb39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-c64ce545/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
332c332
<   verify_ec_task_git_revision: 7f092114b9879067f0afa1cee877ce318eeedb39
---
>   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from c64ce545 to 6819aae5 on Thu Sep 26 10:41:40 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index da421997..a244e75c 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 33dd638a..024af953 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=54cded685c2bee18637d863ae76267580f195775
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
+      - verify_ec_task_git_revision=7f092114b9879067f0afa1cee877ce318eeedb39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-c64ce545/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
332c332
<   verify_ec_task_git_revision: 7f092114b9879067f0afa1cee877ce318eeedb39
---
>   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709 
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
<h3>3: Development changes from c64ce545 to 6819aae5 on Thu Sep 26 10:41:40 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index da421997..a244e75c 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 33dd638a..024af953 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=6f645bc469e86daaefcc00d42f154691eba9be71
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=54cded685c2bee18637d863ae76267580f195775
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=120ea78bf962fd9930f959747e0f02c4957a5774
+      - verify_ec_task_git_revision=7f092114b9879067f0afa1cee877ce318eeedb39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-c64ce545/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:7f092114b9879067f0afa1cee877ce318eeedb39@sha256:89a1f811f68d68248b7cdacf950ce4e77af783cb2c7c6951cff35fc6fd058816
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:120ea78bf962fd9930f959747e0f02c4957a5774@sha256:f8c23c20775d958d888a150c28d0e8e9f028272a842c5fec4416f519e9031831
332c332
<   verify_ec_task_git_revision: 7f092114b9879067f0afa1cee877ce318eeedb39
---
>   verify_ec_task_git_revision: 120ea78bf962fd9930f959747e0f02c4957a5774
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-26792e1@sha256:ef9d3cf7396da0aeeb262f4cbc7cedc80d9716928f8698ccae612ba744659f23
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8b6f1ca@sha256:689fcd2433a5a302b132edef90e076c24acc7dd0d8859e66724c61d785eef989
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7ccc545@sha256:fb31b08c41bd0b0e2d6474575af024abb7e58b87fdb7d777dc0e7ac65d444709 
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
<h3>4: Production changes from 3cfbc7ea to c64ce545 on Thu Sep 26 02:23:53 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 3d95abe1..ade79e52 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -32,3 +32,11 @@ rules:
   verbs:
   - get
   - patch
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-3cfbc7ea/production/components/release/production/kustomize.out.yaml
931,938d930
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 3cfbc7ea to c64ce545 on Thu Sep 26 02:23:53 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 3d95abe1..ade79e52 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -32,3 +32,11 @@ rules:
   verbs:
   - get
   - patch
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-3cfbc7ea/staging/components/release/staging/kustomize.out.yaml
931,938d930
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch 
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
<h3>4: Development changes from 3cfbc7ea to c64ce545 on Thu Sep 26 02:23:53 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index 3d95abe1..ade79e52 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -32,3 +32,11 @@ rules:
   verbs:
   - get
   - patch
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-3cfbc7ea/development/components/release/development/kustomize.out.yaml
1005,1012d1004
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch 
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
