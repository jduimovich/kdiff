# kustomize changes tracked by commits 
### This file generated at Wed Feb  7 20:04:09 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1179eaca to e492811b on Wed Feb 7 19:03:45 2024 </h3>  
 
<details> 
<summary>Git Diff (160 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4684e15..eefd4141 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1883,8 +1894,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: Red Hat Trusted App Pipeline
-          custom-console-name: Red Hat Trusted App Pipeline
+          application-name: Red Hat Konflux
+          custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index de5c012b..fc5da799 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1883,8 +1894,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: Red Hat Trusted App Pipeline
-          custom-console-name: Red Hat Trusted App Pipeline
+          application-name: Red Hat Konflux
+          custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 0136d41d..af6ec09e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (78 lines)</summary>  

``` 
./commit-1179eaca/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
6,15d5
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
23c13
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
280d269
<   - patch
1213c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
1897,1898c1886,1887
<           application-name: Red Hat Konflux
<           custom-console-name: Red Hat Konflux
---
>           application-name: Red Hat Trusted App Pipeline
>           custom-console-name: Red Hat Trusted App Pipeline
./commit-1179eaca/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
6,15d5
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
23c13
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
280d269
<   - patch
1213c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
1897,1898c1886,1887
<           application-name: Red Hat Konflux
<           custom-console-name: Red Hat Konflux
---
>           application-name: Red Hat Trusted App Pipeline
>           custom-console-name: Red Hat Trusted App Pipeline
./commit-1179eaca/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
6,15d5
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
23c13
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
280d269
<   - patch
1213c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b 
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
<h3>1: Staging changes from 1179eaca to e492811b on Wed Feb 7 19:03:45 2024 </h3>  
 
<details> 
<summary>Git Diff (160 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4684e15..eefd4141 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1883,8 +1894,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: Red Hat Trusted App Pipeline
-          custom-console-name: Red Hat Trusted App Pipeline
+          application-name: Red Hat Konflux
+          custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index de5c012b..fc5da799 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1883,8 +1894,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: Red Hat Trusted App Pipeline
-          custom-console-name: Red Hat Trusted App Pipeline
+          application-name: Red Hat Konflux
+          custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 0136d41d..af6ec09e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>1: Development changes from 1179eaca to e492811b on Wed Feb 7 19:03:45 2024 </h3>  
 
<details> 
<summary>Git Diff (160 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4684e15..eefd4141 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1883,8 +1894,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: Red Hat Trusted App Pipeline
-          custom-console-name: Red Hat Trusted App Pipeline
+          application-name: Red Hat Konflux
+          custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index de5c012b..fc5da799 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1883,8 +1894,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: Red Hat Trusted App Pipeline
-          custom-console-name: Red Hat Trusted App Pipeline
+          application-name: Red Hat Konflux
+          custom-console-name: Red Hat Konflux
           custom-console-url: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 0136d41d..af6ec09e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1199,7 +1210,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>2: Production changes from c212233a to 1179eaca on Wed Feb 7 16:57:00 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 81b3c2d1..8794adf9 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=29e4eb7800118504f1f367cb151f3f08c720c066
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 92680e59..1cb9ae10 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=29e4eb7800118504f1f367cb151f3f08c720c066
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 29e4eb7800118504f1f367cb151f3f08c720c066
+    newTag: 3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c212233a to 1179eaca on Wed Feb 7 16:57:00 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 81b3c2d1..8794adf9 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=29e4eb7800118504f1f367cb151f3f08c720c066
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 92680e59..1cb9ae10 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=29e4eb7800118504f1f367cb151f3f08c720c066
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 29e4eb7800118504f1f367cb151f3f08c720c066
+    newTag: 3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
 
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
<h3>2: Development changes from c212233a to 1179eaca on Wed Feb 7 16:57:00 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 81b3c2d1..8794adf9 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=29e4eb7800118504f1f367cb151f3f08c720c066
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 92680e59..1cb9ae10 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=29e4eb7800118504f1f367cb151f3f08c720c066
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 29e4eb7800118504f1f367cb151f3f08c720c066
+    newTag: 3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c212233a/development/components/release/development/kustomize.out.yaml
1697c1697
<         image: quay.io/redhat-appstudio/release-service:3b6255c66b5e6f69385feca861ce5aadfe6a6e2b
---
>         image: quay.io/redhat-appstudio/release-service:29e4eb7800118504f1f367cb151f3f08c720c066 
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
<h3>3: Production changes from d1267a37 to c212233a on Wed Feb 7 15:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 23b3234c..65275395 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -179,7 +179,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -351,7 +351,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -529,7 +529,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])) by (status_code) / sum(rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A" 
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
<h3>3: Staging changes from d1267a37 to c212233a on Wed Feb 7 15:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 23b3234c..65275395 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -179,7 +179,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -351,7 +351,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -529,7 +529,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])) by (status_code) / sum(rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A" 
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
<h3>3: Development changes from d1267a37 to c212233a on Wed Feb 7 15:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 23b3234c..65275395 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -179,7 +179,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -351,7 +351,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -529,7 +529,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])) by (status_code) / sum(rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A" 
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
<h3>4: Production changes from 739c5819 to d1267a37 on Wed Feb 7 14:15:00 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/OWNERS b/components/sandbox/OWNERS
index 69264da5..26363336 100644
--- a/components/sandbox/OWNERS
+++ b/components/sandbox/OWNERS
@@ -6,3 +6,6 @@ approvers:
 - xcoulon
 - alexeykazakov
 - rajivnathan
+- filariow
+- sadlerap
+- dperaza4dustbit 
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
<h3>4: Staging changes from 739c5819 to d1267a37 on Wed Feb 7 14:15:00 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/OWNERS b/components/sandbox/OWNERS
index 69264da5..26363336 100644
--- a/components/sandbox/OWNERS
+++ b/components/sandbox/OWNERS
@@ -6,3 +6,6 @@ approvers:
 - xcoulon
 - alexeykazakov
 - rajivnathan
+- filariow
+- sadlerap
+- dperaza4dustbit 
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
<h3>4: Development changes from 739c5819 to d1267a37 on Wed Feb 7 14:15:00 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/OWNERS b/components/sandbox/OWNERS
index 69264da5..26363336 100644
--- a/components/sandbox/OWNERS
+++ b/components/sandbox/OWNERS
@@ -6,3 +6,6 @@ approvers:
 - xcoulon
 - alexeykazakov
 - rajivnathan
+- filariow
+- sadlerap
+- dperaza4dustbit 
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
