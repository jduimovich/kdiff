# kustomize changes tracked by commits 
### This file generated at Tue Mar 19 04:05:15 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 829ce6b9 to 855d61a0 on Tue Mar 19 03:19:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5ce8b54e..36af874a 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index c368749b..9bc7280a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url 
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
<h3>1: Staging changes from 829ce6b9 to 855d61a0 on Tue Mar 19 03:19:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5ce8b54e..36af874a 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index c368749b..9bc7280a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-829ce6b9/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1199c1199
<         image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
1290c1290
<             image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40 
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
<h3>1: Development changes from 829ce6b9 to 855d61a0 on Tue Mar 19 03:19:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5ce8b54e..36af874a 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index c368749b..9bc7280a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+  newTag: 93f0ff0a0ef11d491d249180f8380eba1d9abcce
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-829ce6b9/development/components/integration/development/kustomize.out.yaml
1198c1198
<         image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
1292c1292
<             image: quay.io/redhat-appstudio/integration-service:93f0ff0a0ef11d491d249180f8380eba1d9abcce
---
>             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40 
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
<h3>2: Production changes from db4440bc to 829ce6b9 on Tue Mar 19 01:13:14 2024 </h3>  
 
<details> 
<summary>Git Diff (695 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 796c0ad1..9a4b4cb1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3036fccf..df4a098a 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 1b7f2ef7..bc2ec1ef 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1da3cb1e..948ec7fb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 796b507c..d3dd9177 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 78940544..f3fad6eb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>2: Staging changes from db4440bc to 829ce6b9 on Tue Mar 19 01:13:14 2024 </h3>  
 
<details> 
<summary>Git Diff (695 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 796c0ad1..9a4b4cb1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3036fccf..df4a098a 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 1b7f2ef7..bc2ec1ef 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1da3cb1e..948ec7fb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 796b507c..d3dd9177 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 78940544..f3fad6eb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (513 lines)</summary>  

``` 
./commit-db4440bc/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1332c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1379,1424d1420
<       initContainers:
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1512a1509,1510
>         - -threadiness
>         - "32"
1530c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1911,1940d1908
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2039,2071d2006
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2083c2018
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
./commit-db4440bc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1332c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1379,1424d1420
<       initContainers:
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1512a1509,1510
>         - -threadiness
>         - "32"
1530c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1911,1940d1908
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2039,2071d2006
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2083c2018
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
./commit-db4440bc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
899a900,941
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1332c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1379,1424d1420
<       initContainers:
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1512a1509,1510
>         - -threadiness
>         - "32"
1530c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1911,1940d1908
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2039,2071d2006
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2083c2018
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93 
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
<h3>2: Development changes from db4440bc to 829ce6b9 on Tue Mar 19 01:13:14 2024 </h3>  
 
<details> 
<summary>Git Diff (695 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 796c0ad1..9a4b4cb1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 3036fccf..df4a098a 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 1b7f2ef7..bc2ec1ef 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1da3cb1e..948ec7fb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 796b507c..d3dd9177 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 78940544..f3fad6eb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -896,48 +896,6 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.webhook: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "sampling": {
-        "initial": 100,
-        "thereafter": 100
-      },
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/component: resolvers
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-pipelines
-    operator.tekton.dev/operand-name: tektoncd-pipelines
-  name: config-logging
-  namespace: openshift-pipelines
----
-apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -1371,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1418,6 +1376,52 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1506,8 +1510,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1525,7 +1527,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1906,6 +1908,36 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     options:
+      configMaps:
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -2004,6 +2036,39 @@ spec:
   pruner:
     disabled: true
   targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: CatalogSource
@@ -2015,7 +2080,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (167 lines)</summary>  

``` 
./commit-db4440bc/development/components/pipeline-service/development/kustomize.out.yaml
900a901,942
>   loglevel.controller: info
>   loglevel.webhook: info
>   zap-logger-config: |
>     {
>       "level": "info",
>       "development": false,
>       "sampling": {
>         "initial": 100,
>         "thereafter": 100
>       },
>       "outputPaths": ["stdout"],
>       "errorOutputPaths": ["stderr"],
>       "encoding": "json",
>       "encoderConfig": {
>         "timeKey": "ts",
>         "levelKey": "level",
>         "nameKey": "logger",
>         "callerKey": "caller",
>         "messageKey": "msg",
>         "stacktraceKey": "stacktrace",
>         "lineEnding": "",
>         "levelEncoder": "",
>         "timeEncoder": "iso8601",
>         "durationEncoder": "string",
>         "callerEncoder": ""
>       }
>     }
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   labels:
>     app.kubernetes.io/component: resolvers
>     app.kubernetes.io/instance: default
>     app.kubernetes.io/part-of: tekton-pipelines
>     operator.tekton.dev/operand-name: tektoncd-pipelines
>   name: config-logging
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> data:
1308c1350
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1441,1485d1482
<       - env:
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: db.user
<               name: tekton-results-database
<         - name: DB_PASSWORD
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: tekton-results-database
<         - name: DB_HOST
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: tekton-results-database
<         - name: DB_NAME
<           valueFrom:
<             secretKeyRef:
<               key: db.name
<               name: tekton-results-database
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
<         name: migrator
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 32Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             add:
<             - NET_BIND_SERVICE
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
1571c1568
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
2022,2051d2018
<       configMaps:
<         config-logging:
<           data:
<             loglevel.controller: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2142,2174d2108
<   trigger:
<     options:
<       configMaps:
<         config-logging-triggers:
<           data:
<             loglevel.controller: info
<             loglevel.eventlistener: info
<             loglevel.webhook: info
<             zap-logger-config: |
<               {
<                 "level": "info",
<                 "development": false,
<                 "sampling": {
<                   "initial": 100,
<                   "thereafter": 100
<                 },
<                 "outputPaths": ["stdout"],
<                 "errorOutputPaths": ["stderr"],
<                 "encoding": "json",
<                 "encoderConfig": {
<                   "timeKey": "ts",
<                   "levelKey": "level",
<                   "nameKey": "logger",
<                   "callerKey": "caller",
<                   "messageKey": "msg",
<                   "stacktraceKey": "stacktrace",
<                   "lineEnding": "",
<                   "levelEncoder": "",
<                   "timeEncoder": "iso8601",
<                   "durationEncoder": "string",
<                   "callerEncoder": ""
<                 }
<               }
2186c2120
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93 
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
<h3>3: Production changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
   host:
     roleBindings: 
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
<h3>3: Staging changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
   host:
     roleBindings: 
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
<h3>3: Development changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
   host:
     roleBindings: 
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
<h3>4: Production changes from 2a55d6ee to ea983d05 on Mon Mar 18 14:37:39 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9e8d5030..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2a55d6ee/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a 
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
<h3>4: Staging changes from 2a55d6ee to ea983d05 on Mon Mar 18 14:37:39 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9e8d5030..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2a55d6ee/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a 
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
<h3>4: Development changes from 2a55d6ee to ea983d05 on Mon Mar 18 14:37:39 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9e8d5030..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2a55d6ee/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a 
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
