# kustomize changes tracked by commits 
### This file generated at Sat Mar  9 16:02:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 678d3197 to 580f75c3 on Fri Mar 8 18:39:26 2024 </h3>  
 
<details> 
<summary>Git Diff (441 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
index 6a08230d..760cbaf5 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/memory
-  value: "4Gi"
+  value: "3Gi"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/memory
-  value: "4Gi"
\ No newline at end of file
+  value: "3Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b5dce0eb..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,13 +43,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
-  - path: stay-at-1-13-until-nightly-revert-sorted.yaml
-    target:
-      kind: Subscription
-      namespace: openshift-operators
-      name: openshift-pipelines-operator
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
deleted file mode 100644
index cc8436e8..00000000
--- a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/channel
-  value: "pipelines-1.13"
-- op: replace
-  path: /spec/source
-  value: "redhat-operators"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/update-results-watcher-performance.yaml b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
deleted file mode 100644
index aea590ed..00000000
--- a/components/pipeline-service/production/base/update-results-watcher-performance.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/requests/cpu
-  value: "250m"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 366c6167..d4623ca7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index dacffb3f..98cd9930 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5741fdc2..690b3071 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (258 lines)</summary>  

``` 
./commit-678d3197/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1340c1340
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1387,1432d1386
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
1520a1475,1476
>         - -threadiness
>         - "32"
1538c1494
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1548c1504
<             memory: 3Gi
---
>             memory: 4Gi
1550,1551c1506,1507
<             cpu: 100m
<             memory: 3Gi
---
>             cpu: 250m
>             memory: 4Gi
1963a1920,1935
> ---
> apiVersion: operators.coreos.com/v1alpha1
> kind: CatalogSource
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
>   name: custom-operators
>   namespace: openshift-marketplace
> spec:
>   displayName: custom-operators
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
>   sourceType: grpc
>   updateStrategy:
>     registryPoll:
>       interval: 30m
./commit-678d3197/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1340c1340
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1387,1432d1386
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
1520a1475,1476
>         - -threadiness
>         - "32"
1538c1494
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1548c1504
<             memory: 3Gi
---
>             memory: 4Gi
1550,1551c1506,1507
<             cpu: 100m
<             memory: 3Gi
---
>             cpu: 250m
>             memory: 4Gi
1963a1920,1935
> ---
> apiVersion: operators.coreos.com/v1alpha1
> kind: CatalogSource
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
>   name: custom-operators
>   namespace: openshift-marketplace
> spec:
>   displayName: custom-operators
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
>   sourceType: grpc
>   updateStrategy:
>     registryPoll:
>       interval: 30m
./commit-678d3197/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1340c1340
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1387,1432d1386
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
1520a1475,1476
>         - -threadiness
>         - "32"
1538c1494
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1548c1504
<             memory: 3Gi
---
>             memory: 4Gi
1550,1551c1506,1507
<             cpu: 100m
<             memory: 3Gi
---
>             cpu: 250m
>             memory: 4Gi
1963a1920,1935
> ---
> apiVersion: operators.coreos.com/v1alpha1
> kind: CatalogSource
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
>   name: custom-operators
>   namespace: openshift-marketplace
> spec:
>   displayName: custom-operators
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
>   sourceType: grpc
>   updateStrategy:
>     registryPoll:
>       interval: 30m 
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
<h3>1: Staging changes from 678d3197 to 580f75c3 on Fri Mar 8 18:39:26 2024 </h3>  
 
<details> 
<summary>Git Diff (441 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
index 6a08230d..760cbaf5 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/memory
-  value: "4Gi"
+  value: "3Gi"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/memory
-  value: "4Gi"
\ No newline at end of file
+  value: "3Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b5dce0eb..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,13 +43,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
-  - path: stay-at-1-13-until-nightly-revert-sorted.yaml
-    target:
-      kind: Subscription
-      namespace: openshift-operators
-      name: openshift-pipelines-operator
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
deleted file mode 100644
index cc8436e8..00000000
--- a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/channel
-  value: "pipelines-1.13"
-- op: replace
-  path: /spec/source
-  value: "redhat-operators"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/update-results-watcher-performance.yaml b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
deleted file mode 100644
index aea590ed..00000000
--- a/components/pipeline-service/production/base/update-results-watcher-performance.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/requests/cpu
-  value: "250m"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 366c6167..d4623ca7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index dacffb3f..98cd9930 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5741fdc2..690b3071 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations: 
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
<h3>1: Development changes from 678d3197 to 580f75c3 on Fri Mar 8 18:39:26 2024 </h3>  
 
<details> 
<summary>Git Diff (441 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
index 6a08230d..760cbaf5 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/memory
-  value: "4Gi"
+  value: "3Gi"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/memory
-  value: "4Gi"
\ No newline at end of file
+  value: "3Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b5dce0eb..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,13 +43,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
-  - path: stay-at-1-13-until-nightly-revert-sorted.yaml
-    target:
-      kind: Subscription
-      namespace: openshift-operators
-      name: openshift-pipelines-operator
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
deleted file mode 100644
index cc8436e8..00000000
--- a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/channel
-  value: "pipelines-1.13"
-- op: replace
-  path: /spec/source
-  value: "redhat-operators"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/update-results-watcher-performance.yaml b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
deleted file mode 100644
index aea590ed..00000000
--- a/components/pipeline-service/production/base/update-results-watcher-performance.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/requests/cpu
-  value: "250m"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 366c6167..d4623ca7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index dacffb3f..98cd9930 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5741fdc2..690b3071 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,6 +1384,52 @@ spec:
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
@@ -1472,8 +1518,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1491,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1501,10 +1545,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 3Gi
           requests:
-            cpu: 250m
-            memory: 4Gi
+            cpu: 100m
+            memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1919,22 +1963,6 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations: 
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
<h3>2: Production changes from 31379834 to 678d3197 on Fri Mar 8 15:45:05 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml b/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
index 3c006d25..f9d67ce6 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
@@ -27,6 +27,12 @@ spec:
       destination:
         namespace: default
         server: '{{server}}'
+      ignoreDifferences:
+        - group: ""
+          kind: ServiceAccount
+          name: appstudio-pipeline
+          jqPathExpressions:
+          - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
       syncPolicy:
         automated: 
           prune: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-31379834/production/app-of-apps-production.yaml
216,221d215
<       ignoreDifferences:
<       - group: ""
<         jqPathExpressions:
<         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
<         kind: ServiceAccount
<         name: appstudio-pipeline 
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
<h3>2: Staging changes from 31379834 to 678d3197 on Fri Mar 8 15:45:05 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml b/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
index 3c006d25..f9d67ce6 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
@@ -27,6 +27,12 @@ spec:
       destination:
         namespace: default
         server: '{{server}}'
+      ignoreDifferences:
+        - group: ""
+          kind: ServiceAccount
+          name: appstudio-pipeline
+          jqPathExpressions:
+          - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
       syncPolicy:
         automated: 
           prune: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-31379834/staging/app-of-apps-staging.yaml
216,221d215
<       ignoreDifferences:
<       - group: ""
<         jqPathExpressions:
<         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
<         kind: ServiceAccount
<         name: appstudio-pipeline 
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
<h3>2: Development changes from 31379834 to 678d3197 on Fri Mar 8 15:45:05 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml b/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
index 3c006d25..f9d67ce6 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-templates/build-templates.yaml
@@ -27,6 +27,12 @@ spec:
       destination:
         namespace: default
         server: '{{server}}'
+      ignoreDifferences:
+        - group: ""
+          kind: ServiceAccount
+          name: appstudio-pipeline
+          jqPathExpressions:
+          - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
       syncPolicy:
         automated: 
           prune: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-31379834/development/app-of-apps-development.yaml
130,135d129
<       ignoreDifferences:
<       - group: ""
<         jqPathExpressions:
<         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
<         kind: ServiceAccount
<         name: appstudio-pipeline 
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
<h3>3: Production changes from 668f83cf to 31379834 on Fri Mar 8 14:30:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 5117f6ee..dbc02d56 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=dcfa9289bedbe71e7e40b384147144f182c67d6f
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=dcfa9289bedbe71e7e40b384147144f182c67d6f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=38cd27388b4c48856466d9822cad99a06070a90f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=38cd27388b4c48856466d9822cad99a06070a90f
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: dcfa9289bedbe71e7e40b384147144f182c67d6f
+  newTag: 38cd27388b4c48856466d9822cad99a06070a90f
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: dcfa9289bedbe71e7e40b384147144f182c67d6f
+  newTag: 38cd27388b4c48856466d9822cad99a06070a90f
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
./commit-668f83cf/production/components/multi-platform-controller/production/kustomize.out.yaml
186,211d185
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-monitor
<   namespace: multi-platform-controller
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: multi-platform-controller
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
256c230
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:38cd27388b4c48856466d9822cad99a06070a90f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:dcfa9289bedbe71e7e40b384147144f182c67d6f
259,261d232
<         ports:
<         - containerPort: 8080
<           name: http-metrics
298c269
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:38cd27388b4c48856466d9822cad99a06070a90f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:dcfa9289bedbe71e7e40b384147144f182c67d6f
460c431
<     imagePullPolicy: IfNotPresent
---
>     imagePullPolicy: Always
500c471
<     imagePullPolicy: IfNotPresent
---
>     imagePullPolicy: Always
581,613d551
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: update-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       set -o pipefail
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y" 
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
<h3>3: Staging changes from 668f83cf to 31379834 on Fri Mar 8 14:30:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 5117f6ee..dbc02d56 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=dcfa9289bedbe71e7e40b384147144f182c67d6f
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=dcfa9289bedbe71e7e40b384147144f182c67d6f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=38cd27388b4c48856466d9822cad99a06070a90f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=38cd27388b4c48856466d9822cad99a06070a90f
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: dcfa9289bedbe71e7e40b384147144f182c67d6f
+  newTag: 38cd27388b4c48856466d9822cad99a06070a90f
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: dcfa9289bedbe71e7e40b384147144f182c67d6f
+  newTag: 38cd27388b4c48856466d9822cad99a06070a90f
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
./commit-668f83cf/staging/components/multi-platform-controller/staging/kustomize.out.yaml
176,201d175
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-monitor
<   namespace: multi-platform-controller
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: multi-platform-controller
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
246c220
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:38cd27388b4c48856466d9822cad99a06070a90f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:dcfa9289bedbe71e7e40b384147144f182c67d6f
249,251d222
<         ports:
<         - containerPort: 8080
<           name: http-metrics
288c259
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:38cd27388b4c48856466d9822cad99a06070a90f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:dcfa9289bedbe71e7e40b384147144f182c67d6f
404c375
<     imagePullPolicy: IfNotPresent
---
>     imagePullPolicy: Always
444c415
<     imagePullPolicy: IfNotPresent
---
>     imagePullPolicy: Always
525,557d495
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: update-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       set -o pipefail
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y" 
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
<h3>3: Development changes from 668f83cf to 31379834 on Fri Mar 8 14:30:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 5117f6ee..dbc02d56 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=dcfa9289bedbe71e7e40b384147144f182c67d6f
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=dcfa9289bedbe71e7e40b384147144f182c67d6f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=38cd27388b4c48856466d9822cad99a06070a90f
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=38cd27388b4c48856466d9822cad99a06070a90f
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: dcfa9289bedbe71e7e40b384147144f182c67d6f
+  newTag: 38cd27388b4c48856466d9822cad99a06070a90f
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: dcfa9289bedbe71e7e40b384147144f182c67d6f
+  newTag: 38cd27388b4c48856466d9822cad99a06070a90f
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
./commit-668f83cf/development/components/multi-platform-controller/development/kustomize.out.yaml
137,162d136
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-monitor
<   namespace: multi-platform-controller
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: multi-platform-controller
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
208c182
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:38cd27388b4c48856466d9822cad99a06070a90f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:dcfa9289bedbe71e7e40b384147144f182c67d6f
211,213d184
<         ports:
<         - containerPort: 8080
<           name: http-metrics
250c221
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:38cd27388b4c48856466d9822cad99a06070a90f
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:dcfa9289bedbe71e7e40b384147144f182c67d6f
297c268
<     imagePullPolicy: IfNotPresent
---
>     imagePullPolicy: Always
337c308
<     imagePullPolicy: IfNotPresent
---
>     imagePullPolicy: Always
418,450d388
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: update-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       set -o pipefail
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y" 
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
<h3>4: Production changes from 6e16da15 to 668f83cf on Fri Mar 8 10:53:23 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 1517b4dc..93d4de83 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,7 +4,5 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
-  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
-  - name: quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-6e16da15/production/components/tekton-ci/production/kustomize.out.yaml
11a12
> - name: quay-push-secret-konflux-ci
18a20
> - name: quay-push-secret-konflux-ci 
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
<h3>4: Staging changes from 6e16da15 to 668f83cf on Fri Mar 8 10:53:23 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 1517b4dc..93d4de83 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,7 +4,5 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
-  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
-  - name: quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-6e16da15/staging/components/tekton-ci/staging/kustomize.out.yaml
11a12
> - name: quay-push-secret-konflux-ci
18a20
> - name: quay-push-secret-konflux-ci 
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
<h3>4: Development changes from 6e16da15 to 668f83cf on Fri Mar 8 10:53:23 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 1517b4dc..93d4de83 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,7 +4,5 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
-  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
-  - name: quay-push-secret-konflux-ci 
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
