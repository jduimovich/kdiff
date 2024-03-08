# kustomize changes tracked by commits 
### This file generated at Fri Mar  8 12:04:12 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6e16da15 to 668f83cf on Fri Mar 8 10:53:23 2024 </h3>  
 
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
<h3>1: Staging changes from 6e16da15 to 668f83cf on Fri Mar 8 10:53:23 2024 </h3>  
 
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
<h3>1: Development changes from 6e16da15 to 668f83cf on Fri Mar 8 10:53:23 2024 </h3>  
 
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

<div>
<h3>2: Production changes from b1ce8f52 to 6e16da15 on Fri Mar 8 03:44:10 2024 </h3>  
 
<details> 
<summary>Git Diff (441 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
index 760cbaf5..6a08230d 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/memory
-  value: "3Gi"
+  value: "4Gi"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/memory
-  value: "3Gi"
\ No newline at end of file
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index bce2c7ff..b5dce0eb 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,3 +43,13 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: stay-at-1-13-until-nightly-revert-sorted.yaml
+    target:
+      kind: Subscription
+      namespace: openshift-operators
+      name: openshift-pipelines-operator
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
new file mode 100644
index 00000000..cc8436e8
--- /dev/null
+++ b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/channel
+  value: "pipelines-1.13"
+- op: replace
+  path: /spec/source
+  value: "redhat-operators"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/update-results-watcher-performance.yaml b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d4623ca7..366c6167 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 98cd9930..dacffb3f 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 690b3071..5741fdc2 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (258 lines)</summary>  

``` 
./commit-b1ce8f52/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1340c1340
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1386a1387,1432
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
1475,1476d1520
<         - -threadiness
<         - "32"
1494c1538
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1504c1548
<             memory: 4Gi
---
>             memory: 3Gi
1506,1507c1550,1551
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 3Gi
1920,1935d1963
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
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
./commit-b1ce8f52/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1340c1340
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1386a1387,1432
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
1475,1476d1520
<         - -threadiness
<         - "32"
1494c1538
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1504c1548
<             memory: 4Gi
---
>             memory: 3Gi
1506,1507c1550,1551
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 3Gi
1920,1935d1963
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
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
./commit-b1ce8f52/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1340c1340
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1386a1387,1432
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
1475,1476d1520
<         - -threadiness
<         - "32"
1494c1538
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1504c1548
<             memory: 4Gi
---
>             memory: 3Gi
1506,1507c1550,1551
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 3Gi
1920,1935d1963
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
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m 
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
<h3>2: Staging changes from b1ce8f52 to 6e16da15 on Fri Mar 8 03:44:10 2024 </h3>  
 
<details> 
<summary>Git Diff (441 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
index 760cbaf5..6a08230d 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/memory
-  value: "3Gi"
+  value: "4Gi"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/memory
-  value: "3Gi"
\ No newline at end of file
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index bce2c7ff..b5dce0eb 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,3 +43,13 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: stay-at-1-13-until-nightly-revert-sorted.yaml
+    target:
+      kind: Subscription
+      namespace: openshift-operators
+      name: openshift-pipelines-operator
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
new file mode 100644
index 00000000..cc8436e8
--- /dev/null
+++ b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/channel
+  value: "pipelines-1.13"
+- op: replace
+  path: /spec/source
+  value: "redhat-operators"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/update-results-watcher-performance.yaml b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d4623ca7..366c6167 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 98cd9930..dacffb3f 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 690b3071..5741fdc2 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
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
<h3>2: Development changes from b1ce8f52 to 6e16da15 on Fri Mar 8 03:44:10 2024 </h3>  
 
<details> 
<summary>Git Diff (441 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
index 760cbaf5..6a08230d 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/memory
-  value: "3Gi"
+  value: "4Gi"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/memory
-  value: "3Gi"
\ No newline at end of file
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index bce2c7ff..b5dce0eb 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,3 +43,13 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: stay-at-1-13-until-nightly-revert-sorted.yaml
+    target:
+      kind: Subscription
+      namespace: openshift-operators
+      name: openshift-pipelines-operator
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
new file mode 100644
index 00000000..cc8436e8
--- /dev/null
+++ b/components/pipeline-service/production/base/stay-at-1-13-until-nightly-revert-sorted.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/channel
+  value: "pipelines-1.13"
+- op: replace
+  path: /spec/source
+  value: "redhat-operators"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/update-results-watcher-performance.yaml b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d4623ca7..366c6167 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 98cd9930..dacffb3f 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 690b3071..5741fdc2 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1337,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1384,52 +1384,6 @@ spec:
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
@@ -1518,6 +1472,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1535,7 +1491,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
@@ -1545,10 +1501,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 3Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 3Gi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1963,6 +1919,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:4aa7add007908a73c45717504cacb17b9cc01314d0636127612748ce2f0cfe93
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
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
<h3>3: Production changes from a220adcd to b1ce8f52 on Thu Mar 7 20:02:09 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index f96983a6..3ae7c588 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret-konflux-ci
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret-konflux-ci
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 93d4de83..1517b4dc 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,5 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index 65cd79ed..ba934adf 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,6 +13,12 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-a220adcd/production/components/tekton-ci/production/kustomize.out.yaml
12d11
< - name: quay-push-secret-konflux-ci
20d18
< - name: quay-push-secret-konflux-ci
136,161d133
<     template:
<       data:
<         .dockerconfigjson: '{{ .config }}'
<       engineVersion: v2
<       type: kubernetes.io/dockerconfigjson
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: quay-push-secret-konflux-ci
<   namespace: tekton-ci
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/tekton-ci/quay-push-secret-konflux-ci
<   refreshInterval: 15m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quay-push-secret-konflux-ci 
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
<h3>3: Staging changes from a220adcd to b1ce8f52 on Thu Mar 7 20:02:09 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index f96983a6..3ae7c588 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret-konflux-ci
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret-konflux-ci
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 93d4de83..1517b4dc 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,5 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index 65cd79ed..ba934adf 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,6 +13,12 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-a220adcd/staging/components/tekton-ci/staging/kustomize.out.yaml
12d11
< - name: quay-push-secret-konflux-ci
20d18
< - name: quay-push-secret-konflux-ci
136,161d133
<     template:
<       data:
<         .dockerconfigjson: '{{ .config }}'
<       engineVersion: v2
<       type: kubernetes.io/dockerconfigjson
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: quay-push-secret-konflux-ci
<   namespace: tekton-ci
< spec:
<   dataFrom:
<   - extract:
<       key: staging/build/tekton-ci/quay-push-secret-konflux-ci
<   refreshInterval: 15m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quay-push-secret-konflux-ci 
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
<h3>3: Development changes from a220adcd to b1ce8f52 on Thu Mar 7 20:02:09 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index f96983a6..3ae7c588 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret-konflux-ci
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret-konflux-ci
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 93d4de83..1517b4dc 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,5 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index 65cd79ed..ba934adf 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,6 +13,12 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
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
<h3>4: Production changes from 0c5d5074 to a220adcd on Thu Mar 7 19:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (54 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index aea590ed..ec2b0738 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -1,10 +1,4 @@
 ---
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/cpu
   value: "250m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 71319245..d7fa1bf6 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1a2d2062..dbb78a41 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1bbade96..6ea2e3e7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
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
<h3>4: Staging changes from 0c5d5074 to a220adcd on Thu Mar 7 19:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (54 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index aea590ed..ec2b0738 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -1,10 +1,4 @@
 ---
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/cpu
   value: "250m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 71319245..d7fa1bf6 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1a2d2062..dbb78a41 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1bbade96..6ea2e3e7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-0c5d5074/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1477a1478,1479
>         - -threadiness
>         - "32"
./commit-0c5d5074/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1477a1478,1479
>         - -threadiness
>         - "32"
./commit-0c5d5074/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1477a1478,1479
>         - -threadiness
>         - "32" 
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
<h3>4: Development changes from 0c5d5074 to a220adcd on Thu Mar 7 19:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (54 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index aea590ed..ec2b0738 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -1,10 +1,4 @@
 ---
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/cpu
   value: "250m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 71319245..d7fa1bf6 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1a2d2062..dbb78a41 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1bbade96..6ea2e3e7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
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
