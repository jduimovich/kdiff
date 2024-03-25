# kustomize changes tracked by commits 
### This file generated at Mon Mar 25 12:05:38 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d199d2aa to 5a44bb88 on Mon Mar 25 11:37:38 2024 </h3>  
 
<details> 
<summary>Git Diff (973 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1fd0447c..68269b3d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4037883a..67fc2300 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 3770aeff..784dfa48 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d8565d0b..3d07813b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (789 lines)</summary>  

``` 
./commit-d199d2aa/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
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
1331c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1377a1420,1465
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1483c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1495c1583
<             cpu: 250m
---
>             cpu: 100m
1622a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1868,1897d1963
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
1902,1912d1967
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
1916,1928d1970
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
1930,1964d1971
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
1996,2044d2002
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
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
2055c2013
<   channel: latest
---
>   channel: pipelines-1.13
2057c2015
<   source: custom-operators
---
>   source: redhat-operators
./commit-d199d2aa/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
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
1331c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1377a1420,1465
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1483c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1495c1583
<             cpu: 250m
---
>             cpu: 100m
1622a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1868,1897d1963
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
1902,1912d1967
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
1916,1928d1970
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
1930,1964d1971
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
1996,2044d2002
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
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
2055c2013
<   channel: latest
---
>   channel: pipelines-1.13
2057c2015
<   source: custom-operators
---
>   source: redhat-operators
./commit-d199d2aa/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
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
1331c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1377a1420,1465
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1483c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1495c1583
<             cpu: 250m
---
>             cpu: 100m
1622a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1868,1897d1963
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
1902,1912d1967
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
1916,1928d1970
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
1930,1964d1971
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
1996,2044d2002
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
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
2055c2013
<   channel: latest
---
>   channel: pipelines-1.13
2057c2015
<   source: custom-operators
---
>   source: redhat-operators 
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
<h3>1: Staging changes from d199d2aa to 5a44bb88 on Mon Mar 25 11:37:38 2024 </h3>  
 
<details> 
<summary>Git Diff (973 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1fd0447c..68269b3d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4037883a..67fc2300 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 3770aeff..784dfa48 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d8565d0b..3d07813b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from d199d2aa to 5a44bb88 on Mon Mar 25 11:37:38 2024 </h3>  
 
<details> 
<summary>Git Diff (973 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1fd0447c..68269b3d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4037883a..67fc2300 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 3770aeff..784dfa48 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d8565d0b..3d07813b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
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
@@ -1370,7 +1328,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1417,52 +1375,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1568,7 +1480,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1492,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1620,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1961,14 +1865,103 @@ spec:
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
@@ -2000,6 +1993,55 @@ spec:
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
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
 ---
 apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
@@ -2010,9 +2052,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
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
<h3>2: Production changes from 6738549a to d199d2aa on Mon Mar 25 09:31:09 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8bb13a4..380345ce 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 23590e79..8618e1ac 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6738549a to d199d2aa on Mon Mar 25 09:31:09 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8bb13a4..380345ce 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 23590e79..8618e1ac 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6738549a/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1199c1199
<         image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>         image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5
1290c1290
<             image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>             image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6738549a to d199d2aa on Mon Mar 25 09:31:09 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8bb13a4..380345ce 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 23590e79..8618e1ac 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=b41879a5907336841c199ed6ff122b2d032a9eb5
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b41879a5907336841c199ed6ff122b2d032a9eb5
+  newTag: 2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6738549a/development/components/integration/development/kustomize.out.yaml
1198c1198
<         image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>         image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5
1292c1292
<             image: quay.io/redhat-appstudio/integration-service:2b89dd379969c6fbd5ee33a8cc7d4a85fb736237
---
>             image: quay.io/redhat-appstudio/integration-service:b41879a5907336841c199ed6ff122b2d032a9eb5 
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
<h3>3: Production changes from a8689b9b to 6738549a on Sun Mar 24 13:43:42 2024 </h3>  
 
<details> 
<summary>Git Diff (290 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 9a4b4cb1..3bdb4f2c 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index df4a098a..f72d51c9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index bc2ec1ef..7d4c0cc0 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c4fe2f13..31df4c4b 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2ffd052e..3be8a938 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 815d8415..56053a12 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] | 
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
<h3>3: Staging changes from a8689b9b to 6738549a on Sun Mar 24 13:43:42 2024 </h3>  
 
<details> 
<summary>Git Diff (290 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 9a4b4cb1..3bdb4f2c 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index df4a098a..f72d51c9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index bc2ec1ef..7d4c0cc0 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c4fe2f13..31df4c4b 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2ffd052e..3be8a938 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 815d8415..56053a12 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] | 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (180 lines)</summary>  

``` 
./commit-a8689b9b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1332c1332
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1378a1379,1424
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1484c1530
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1545c1591
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
./commit-a8689b9b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1332c1332
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1378a1379,1424
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1484c1530
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1545c1591
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
./commit-a8689b9b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1332c1332
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1378a1379,1424
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1484c1530
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1545c1591
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a8689b9b to 6738549a on Sun Mar 24 13:43:42 2024 </h3>  
 
<details> 
<summary>Git Diff (290 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 9a4b4cb1..3bdb4f2c 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index df4a098a..f72d51c9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index bc2ec1ef..7d4c0cc0 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=618ca08478a8d945cad1274800a3d982be4dee06
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c4fe2f13..31df4c4b 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 2ffd052e..3be8a938 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 815d8415..56053a12 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1329,7 +1329,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1376,52 +1376,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1527,7 +1481,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
         name: watcher
         ports:
         - containerPort: 9090
@@ -1588,7 +1542,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] | 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-a8689b9b/development/components/pipeline-service/development/kustomize.out.yaml
1308c1308
<         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1440a1441,1485
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1526c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f 
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
<h3>4: Production changes from 88cd69e5 to a8689b9b on Fri Mar 22 22:02:08 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index e56ea4f3..67c6eb5f 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4863efdb4d1ee29572a6f6052a19e514757a50a0
+    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index f61c8750..434b4b78 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4863efdb4d1ee29572a6f6052a19e514757a50a0
+    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index cef64817..5a5229a8 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 0b09839a..b3fb198b 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-88cd69e5/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59
---
>         image: quay.io/redhat-appstudio/application-service:4863efdb4d1ee29572a6f6052a19e514757a50a0 
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
<h3>4: Staging changes from 88cd69e5 to a8689b9b on Fri Mar 22 22:02:08 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index e56ea4f3..67c6eb5f 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4863efdb4d1ee29572a6f6052a19e514757a50a0
+    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index f61c8750..434b4b78 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4863efdb4d1ee29572a6f6052a19e514757a50a0
+    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index cef64817..5a5229a8 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 0b09839a..b3fb198b 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-88cd69e5/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59
---
>         image: quay.io/redhat-appstudio/application-service:4863efdb4d1ee29572a6f6052a19e514757a50a0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 88cd69e5 to a8689b9b on Fri Mar 22 22:02:08 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index e56ea4f3..67c6eb5f 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4863efdb4d1ee29572a6f6052a19e514757a50a0
+    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index f61c8750..434b4b78 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4863efdb4d1ee29572a6f6052a19e514757a50a0
+    newTag: 77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index cef64817..5a5229a8 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 0b09839a..b3fb198b 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4863efdb4d1ee29572a6f6052a19e514757a50a0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=77ecf15672dac31a503d0541a32e8d13a79d5d59
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-88cd69e5/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:77ecf15672dac31a503d0541a32e8d13a79d5d59
---
>         image: quay.io/redhat-appstudio/application-service:4863efdb4d1ee29572a6f6052a19e514757a50a0 
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
