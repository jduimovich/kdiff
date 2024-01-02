# kustomize changes tracked by commits 
### This file generated at Tue Jan  2 12:02:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a601cbe7 to 3252d30e on Mon Jan 1 13:23:29 2024 </h3>  
 
<details> 
<summary>Git Diff (131 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index f3705244..b4503aa0 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -7,13 +7,6 @@ metadata:
   name: instance
 spec:
   outputs:
-    - cloudwatch:
-        groupBy: namespaceName
-        region: us-east-1
-      name: remote-cloudwatch
-      secret:
-        name: cloudwatch-forwarder
-      type: cloudwatch
     - name: splunk-receiver-application
       secret:
         name: log-forwarder-splunk-rhtap-application-secret
@@ -25,12 +18,6 @@ spec:
       type: splunk
       url: https://http-inputs-rhcorporate.splunkcloud.com
   pipelines:
-    - inputRefs:
-        - application
-      name: fluentd-cloudwatch-logforward
-      outputRefs:
-        - remote-cloudwatch
-      parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-app-index
       inputRefs:
         - application
@@ -38,7 +25,7 @@ spec:
         - splunk-receiver-application
       parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-audit-index
-      inputRefs:      
+      inputRefs:
         - infrastructure
         - audit
       outputRefs:
diff --git a/components/monitoring/logging/base/external-secrets/kustomization.yaml b/components/monitoring/logging/base/external-secrets/kustomization.yaml
index 2c74e47d..5b894fef 100644
--- a/components/monitoring/logging/base/external-secrets/kustomization.yaml
+++ b/components/monitoring/logging/base/external-secrets/kustomization.yaml
@@ -1,6 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- monitoring-logging-cloudwatch-forwarder.yaml
 - splunk-log-forwarder-external-secrets.yaml
 namespace: openshift-logging
diff --git a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml b/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
deleted file mode 100644
index 78f513c1..00000000
--- a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: monitoring-logging-cloudwatch-forwarder
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-  - extract:
-      key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: cloudwatch-forwarder
\ No newline at end of file
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/kustomization.yaml
index dc846a65..3eee4ac5 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a7526b42..00000000
--- a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/monitoring/logging/fluentd/cloudwatch-forwarder
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/kustomization.yaml
index f0114934..2d89aa0c 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a285a6f3..00000000
--- a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/monitoring/logging/fluentd/cloudwatch-forwarder 
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

./commit-3252d30e/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3252d30e/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from a601cbe7 to 3252d30e on Mon Jan 1 13:23:29 2024 </h3>  
 
<details> 
<summary>Git Diff (131 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index f3705244..b4503aa0 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -7,13 +7,6 @@ metadata:
   name: instance
 spec:
   outputs:
-    - cloudwatch:
-        groupBy: namespaceName
-        region: us-east-1
-      name: remote-cloudwatch
-      secret:
-        name: cloudwatch-forwarder
-      type: cloudwatch
     - name: splunk-receiver-application
       secret:
         name: log-forwarder-splunk-rhtap-application-secret
@@ -25,12 +18,6 @@ spec:
       type: splunk
       url: https://http-inputs-rhcorporate.splunkcloud.com
   pipelines:
-    - inputRefs:
-        - application
-      name: fluentd-cloudwatch-logforward
-      outputRefs:
-        - remote-cloudwatch
-      parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-app-index
       inputRefs:
         - application
@@ -38,7 +25,7 @@ spec:
         - splunk-receiver-application
       parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-audit-index
-      inputRefs:      
+      inputRefs:
         - infrastructure
         - audit
       outputRefs:
diff --git a/components/monitoring/logging/base/external-secrets/kustomization.yaml b/components/monitoring/logging/base/external-secrets/kustomization.yaml
index 2c74e47d..5b894fef 100644
--- a/components/monitoring/logging/base/external-secrets/kustomization.yaml
+++ b/components/monitoring/logging/base/external-secrets/kustomization.yaml
@@ -1,6 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- monitoring-logging-cloudwatch-forwarder.yaml
 - splunk-log-forwarder-external-secrets.yaml
 namespace: openshift-logging
diff --git a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml b/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
deleted file mode 100644
index 78f513c1..00000000
--- a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: monitoring-logging-cloudwatch-forwarder
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-  - extract:
-      key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: cloudwatch-forwarder
\ No newline at end of file
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/kustomization.yaml
index dc846a65..3eee4ac5 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a7526b42..00000000
--- a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/monitoring/logging/fluentd/cloudwatch-forwarder
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/kustomization.yaml
index f0114934..2d89aa0c 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a285a6f3..00000000
--- a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/monitoring/logging/fluentd/cloudwatch-forwarder 
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

./commit-3252d30e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3252d30e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3252d30e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from a601cbe7 to 3252d30e on Mon Jan 1 13:23:29 2024 </h3>  
 
<details> 
<summary>Git Diff (131 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index f3705244..b4503aa0 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -7,13 +7,6 @@ metadata:
   name: instance
 spec:
   outputs:
-    - cloudwatch:
-        groupBy: namespaceName
-        region: us-east-1
-      name: remote-cloudwatch
-      secret:
-        name: cloudwatch-forwarder
-      type: cloudwatch
     - name: splunk-receiver-application
       secret:
         name: log-forwarder-splunk-rhtap-application-secret
@@ -25,12 +18,6 @@ spec:
       type: splunk
       url: https://http-inputs-rhcorporate.splunkcloud.com
   pipelines:
-    - inputRefs:
-        - application
-      name: fluentd-cloudwatch-logforward
-      outputRefs:
-        - remote-cloudwatch
-      parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-app-index
       inputRefs:
         - application
@@ -38,7 +25,7 @@ spec:
         - splunk-receiver-application
       parse: json
     - name: fluentd-forward-logs-to-splunk-rhtap-audit-index
-      inputRefs:      
+      inputRefs:
         - infrastructure
         - audit
       outputRefs:
diff --git a/components/monitoring/logging/base/external-secrets/kustomization.yaml b/components/monitoring/logging/base/external-secrets/kustomization.yaml
index 2c74e47d..5b894fef 100644
--- a/components/monitoring/logging/base/external-secrets/kustomization.yaml
+++ b/components/monitoring/logging/base/external-secrets/kustomization.yaml
@@ -1,6 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- monitoring-logging-cloudwatch-forwarder.yaml
 - splunk-log-forwarder-external-secrets.yaml
 namespace: openshift-logging
diff --git a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml b/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
deleted file mode 100644
index 78f513c1..00000000
--- a/components/monitoring/logging/base/external-secrets/monitoring-logging-cloudwatch-forwarder.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: monitoring-logging-cloudwatch-forwarder
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-  - extract:
-      key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: cloudwatch-forwarder
\ No newline at end of file
diff --git a/components/monitoring/logging/production/kustomization.yaml b/components/monitoring/logging/production/kustomization.yaml
index dc846a65..3eee4ac5 100644
--- a/components/monitoring/logging/production/kustomization.yaml
+++ b/components/monitoring/logging/production/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a7526b42..00000000
--- a/components/monitoring/logging/production/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/monitoring/logging/fluentd/cloudwatch-forwarder
diff --git a/components/monitoring/logging/staging/kustomization.yaml b/components/monitoring/logging/staging/kustomization.yaml
index f0114934..2d89aa0c 100644
--- a/components/monitoring/logging/staging/kustomization.yaml
+++ b/components/monitoring/logging/staging/kustomization.yaml
@@ -4,12 +4,6 @@ resources:
 - ../base
 - ../base/external-secrets
 patches:
-  - path: monitoring-logging-cloudwatch-forwarder-path.yaml
-    target:
-      name: monitoring-logging-cloudwatch-forwarder
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - target:
       group: external-secrets.io
       version: v1beta1
diff --git a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml b/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
deleted file mode 100644
index a285a6f3..00000000
--- a/components/monitoring/logging/staging/monitoring-logging-cloudwatch-forwarder-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/monitoring/logging/fluentd/cloudwatch-forwarder 
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

./commit-3252d30e/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from dacd149d to a601cbe7 on Sun Dec 31 12:57:34 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index c0d156b0..bbe40298 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -88,6 +88,8 @@ spec:
             mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -105,6 +107,8 @@ spec:
           emptyDir: {}
         - name: nginx-tmp
           emptyDir: {}
+        - name: run
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-a601cbe7/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a601cbe7/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from dacd149d to a601cbe7 on Sun Dec 31 12:57:34 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index c0d156b0..bbe40298 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -88,6 +88,8 @@ spec:
             mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -105,6 +107,8 @@ spec:
           emptyDir: {}
         - name: nginx-tmp
           emptyDir: {}
+        - name: run
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-dacd149d/staging/components/ui/staging/kustomize.out.yaml
577,578d576
<         - mountPath: /run
<           name: run
621,622d618
<       - emptyDir: {}
<         name: run 
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

./commit-a601cbe7/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a601cbe7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-a601cbe7/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from dacd149d to a601cbe7 on Sun Dec 31 12:57:34 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index c0d156b0..bbe40298 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -88,6 +88,8 @@ spec:
             mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -105,6 +107,8 @@ spec:
           emptyDir: {}
         - name: nginx-tmp
           emptyDir: {}
+        - name: run
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-a601cbe7/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from 0102aae6 to dacd149d on Sun Dec 31 12:37:40 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0150d852..c0d156b0 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -85,7 +85,7 @@ spec:
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
           - name: logs
-            mountPath: /var/log
+            mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
         securityContext: 
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

./commit-dacd149d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-dacd149d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 0102aae6 to dacd149d on Sun Dec 31 12:37:40 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0150d852..c0d156b0 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -85,7 +85,7 @@ spec:
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
           - name: logs
-            mountPath: /var/log
+            mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
         securityContext: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0102aae6/staging/components/ui/staging/kustomize.out.yaml
573c573
<         - mountPath: /var/log/nginx
---
>         - mountPath: /var/log 
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

./commit-dacd149d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-dacd149d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-dacd149d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 0102aae6 to dacd149d on Sun Dec 31 12:37:40 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0150d852..c0d156b0 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -85,7 +85,7 @@ spec:
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
           - name: logs
-            mountPath: /var/log
+            mountPath: /var/log/nginx
           - name: nginx-tmp
             mountPath: /var/lib/nginx/tmp
         securityContext: 
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

./commit-dacd149d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from 63e88ae2 to 0102aae6 on Sun Dec 31 10:33:51 2023 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0424e029..0150d852 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -84,6 +84,10 @@ spec:
             readOnly: true
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
+          - name: logs
+            mountPath: /var/log
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -97,6 +101,10 @@ spec:
           name: proxy
         - name: chrome-static
           emptyDir: {}
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-0102aae6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0102aae6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 63e88ae2 to 0102aae6 on Sun Dec 31 10:33:51 2023 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0424e029..0150d852 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -84,6 +84,10 @@ spec:
             readOnly: true
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
+          - name: logs
+            mountPath: /var/log
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -97,6 +101,10 @@ spec:
           name: proxy
         - name: chrome-static
           emptyDir: {}
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-63e88ae2/staging/components/ui/staging/kustomize.out.yaml
573,576d572
<         - mountPath: /var/log
<           name: logs
<         - mountPath: /var/lib/nginx/tmp
<           name: nginx-tmp
615,618d610
<       - emptyDir: {}
<         name: logs
<       - emptyDir: {}
<         name: nginx-tmp 
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

./commit-0102aae6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0102aae6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0102aae6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 63e88ae2 to 0102aae6 on Sun Dec 31 10:33:51 2023 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0424e029..0150d852 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -84,6 +84,10 @@ spec:
             readOnly: true
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
+          - name: logs
+            mountPath: /var/log
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -97,6 +101,10 @@ spec:
           name: proxy
         - name: chrome-static
           emptyDir: {}
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-0102aae6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
