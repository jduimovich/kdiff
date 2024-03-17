# kustomize changes tracked by commits 
### This file generated at Sun Mar 17 20:01:55 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 87a604f5 to 928c3f39 on Sun Mar 17 09:53:13 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index 1ad29e70..a14b05a4 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=39977c46443adc47e59f57e343c87b393c4e50b8
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 39977c46443adc47e59f57e343c87b393c4e50b8
+  newTag: fbf54d731422e7d526526e3038ec02206af480b2
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 4c581428..33e65cb3 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=39977c46443adc47e59f57e343c87b393c4e50b8
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 39977c46443adc47e59f57e343c87b393c4e50b8
+  newTag: fbf54d731422e7d526526e3038ec02206af480b2 
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
<h3>1: Staging changes from 87a604f5 to 928c3f39 on Sun Mar 17 09:53:13 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index 1ad29e70..a14b05a4 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=39977c46443adc47e59f57e343c87b393c4e50b8
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 39977c46443adc47e59f57e343c87b393c4e50b8
+  newTag: fbf54d731422e7d526526e3038ec02206af480b2
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 4c581428..33e65cb3 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=39977c46443adc47e59f57e343c87b393c4e50b8
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 39977c46443adc47e59f57e343c87b393c4e50b8
+  newTag: fbf54d731422e7d526526e3038ec02206af480b2 
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
<h3>1: Development changes from 87a604f5 to 928c3f39 on Sun Mar 17 09:53:13 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index 1ad29e70..a14b05a4 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=39977c46443adc47e59f57e343c87b393c4e50b8
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 39977c46443adc47e59f57e343c87b393c4e50b8
+  newTag: fbf54d731422e7d526526e3038ec02206af480b2
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 4c581428..33e65cb3 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=39977c46443adc47e59f57e343c87b393c4e50b8
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=fbf54d731422e7d526526e3038ec02206af480b2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 39977c46443adc47e59f57e343c87b393c4e50b8
+  newTag: fbf54d731422e7d526526e3038ec02206af480b2 
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
<h3>2: Production changes from 1819edc5 to 87a604f5 on Sat Mar 16 12:01:28 2024 </h3>  
 
<details> 
<summary>Git Diff (631 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 6a93f849..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,22 +43,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
-  - path: stay-at-1-13-handle-bump-to-nightly-separately.yaml
-    target:
-      kind: Subscription
-      namespace: openshift-operators
-      name: openshift-pipelines-operator
-
-patchesStrategicMerge:
-  - |-
-    apiVersion: operators.coreos.com/v1alpha1
-    kind: CatalogSource
-    metadata:
-      name: custom-operators
-      namespace: openshift-marketplace
-    $patch: delete
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
deleted file mode 100644
index cc8436e8..00000000
--- a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
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
index f7d76e86..00000000
--- a/components/pipeline-service/production/base/update-results-watcher-performance.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-- op: replace
-  path: /spec/template/spec/containers/1/resources/requests/cpu
-  value: "250m"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5d4df75d..16cbf899 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1ef7e137..af214d1c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 28bf8eec..d99eaa6e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (420 lines)</summary>  

``` 
./commit-1819edc5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1373c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1394,1395c1394,1395
<             cpu: 5m
<             memory: 128Mi
---
>             cpu: 100m
>             memory: 512Mi
1420,1465d1419
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
1553a1508,1509
>         - -threadiness
>         - "32"
1571c1527
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1583c1539
<             cpu: 100m
---
>             cpu: 250m
1711,1718d1666
<           # If the secret is not marked as immutable, make it so.
<           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
<             echo "Making secret immutable"
<             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
<               --patch='{"immutable": true}' \
<             | kubectl apply -f -
<           fi
< 
1963a1912,1922
>             template:
>               spec:
>                 containers:
>                 - name: proxy
>                   resources:
>                     limits:
>                       cpu: 500m
>                       memory: 500Mi
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
1966a1926,1938
>         tekton-pipelines-webhook:
>           spec:
>             template:
>               spec:
>                 containers:
>                 - name: webhook
>                   resources:
>                     limits:
>                       cpu: "1"
>                       memory: 1Gi
>                     requests:
>                       cpu: 200m
>                       memory: 200Mi
1967a1940,1974
>       horizontalPodAutoscalers:
>         tekton-operator-proxy-webhook:
>           spec:
>             maxReplicas: 6
>             metrics:
>             - resource:
>                 name: cpu
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             - resource:
>                 name: memory
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             minReplicas: 2
>         tekton-pipelines-webhook:
>           spec:
>             maxReplicas: 6
>             metrics:
>             - resource:
>                 name: cpu
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             - resource:
>                 name: memory
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             minReplicas: 2
./commit-1819edc5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1373c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1394,1395c1394,1395
<             cpu: 5m
<             memory: 128Mi
---
>             cpu: 100m
>             memory: 512Mi
1420,1465d1419
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
1553a1508,1509
>         - -threadiness
>         - "32"
1571c1527
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1583c1539
<             cpu: 100m
---
>             cpu: 250m
1711,1718d1666
<           # If the secret is not marked as immutable, make it so.
<           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
<             echo "Making secret immutable"
<             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
<               --patch='{"immutable": true}' \
<             | kubectl apply -f -
<           fi
< 
1963a1912,1922
>             template:
>               spec:
>                 containers:
>                 - name: proxy
>                   resources:
>                     limits:
>                       cpu: 500m
>                       memory: 500Mi
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
1966a1926,1938
>         tekton-pipelines-webhook:
>           spec:
>             template:
>               spec:
>                 containers:
>                 - name: webhook
>                   resources:
>                     limits:
>                       cpu: "1"
>                       memory: 1Gi
>                     requests:
>                       cpu: 200m
>                       memory: 200Mi
1967a1940,1974
>       horizontalPodAutoscalers:
>         tekton-operator-proxy-webhook:
>           spec:
>             maxReplicas: 6
>             metrics:
>             - resource:
>                 name: cpu
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             - resource:
>                 name: memory
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             minReplicas: 2
>         tekton-pipelines-webhook:
>           spec:
>             maxReplicas: 6
>             metrics:
>             - resource:
>                 name: cpu
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             - resource:
>                 name: memory
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             minReplicas: 2
./commit-1819edc5/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1373c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
1394,1395c1394,1395
<             cpu: 5m
<             memory: 128Mi
---
>             cpu: 100m
>             memory: 512Mi
1420,1465d1419
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
1553a1508,1509
>         - -threadiness
>         - "32"
1571c1527
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
1583c1539
<             cpu: 100m
---
>             cpu: 250m
1711,1718d1666
<           # If the secret is not marked as immutable, make it so.
<           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
<             echo "Making secret immutable"
<             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
<               --patch='{"immutable": true}' \
<             | kubectl apply -f -
<           fi
< 
1963a1912,1922
>             template:
>               spec:
>                 containers:
>                 - name: proxy
>                   resources:
>                     limits:
>                       cpu: 500m
>                       memory: 500Mi
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
1966a1926,1938
>         tekton-pipelines-webhook:
>           spec:
>             template:
>               spec:
>                 containers:
>                 - name: webhook
>                   resources:
>                     limits:
>                       cpu: "1"
>                       memory: 1Gi
>                     requests:
>                       cpu: 200m
>                       memory: 200Mi
1967a1940,1974
>       horizontalPodAutoscalers:
>         tekton-operator-proxy-webhook:
>           spec:
>             maxReplicas: 6
>             metrics:
>             - resource:
>                 name: cpu
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             - resource:
>                 name: memory
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             minReplicas: 2
>         tekton-pipelines-webhook:
>           spec:
>             maxReplicas: 6
>             metrics:
>             - resource:
>                 name: cpu
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             - resource:
>                 name: memory
>                 target:
>                   averageUtilization: 100
>                   type: Utilization
>               type: Resource
>             minReplicas: 2 
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
<h3>2: Staging changes from 1819edc5 to 87a604f5 on Sat Mar 16 12:01:28 2024 </h3>  
 
<details> 
<summary>Git Diff (631 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 6a93f849..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,22 +43,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
-  - path: stay-at-1-13-handle-bump-to-nightly-separately.yaml
-    target:
-      kind: Subscription
-      namespace: openshift-operators
-      name: openshift-pipelines-operator
-
-patchesStrategicMerge:
-  - |-
-    apiVersion: operators.coreos.com/v1alpha1
-    kind: CatalogSource
-    metadata:
-      name: custom-operators
-      namespace: openshift-marketplace
-    $patch: delete
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
deleted file mode 100644
index cc8436e8..00000000
--- a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
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
index f7d76e86..00000000
--- a/components/pipeline-service/production/base/update-results-watcher-performance.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-- op: replace
-  path: /spec/template/spec/containers/1/resources/requests/cpu
-  value: "250m"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5d4df75d..16cbf899 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1ef7e137..af214d1c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 28bf8eec..d99eaa6e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 1819edc5 to 87a604f5 on Sat Mar 16 12:01:28 2024 </h3>  
 
<details> 
<summary>Git Diff (631 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 6a93f849..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,22 +43,3 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
-  - path: update-results-watcher-performance.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
-  - path: stay-at-1-13-handle-bump-to-nightly-separately.yaml
-    target:
-      kind: Subscription
-      namespace: openshift-operators
-      name: openshift-pipelines-operator
-
-patchesStrategicMerge:
-  - |-
-    apiVersion: operators.coreos.com/v1alpha1
-    kind: CatalogSource
-    metadata:
-      name: custom-operators
-      namespace: openshift-marketplace
-    $patch: delete
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
deleted file mode 100644
index cc8436e8..00000000
--- a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
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
index f7d76e86..00000000
--- a/components/pipeline-service/production/base/update-results-watcher-performance.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-- op: replace
-  path: /spec/template/spec/containers/1/resources/requests/cpu
-  value: "250m"
-- op: replace
-  path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5d4df75d..16cbf899 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1ef7e137..af214d1c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 28bf8eec..d99eaa6e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
             cpu: 100m
             memory: 512Mi
           requests:
-            cpu: 100m
-            memory: 512Mi
+            cpu: 5m
+            memory: 128Mi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -1417,6 +1417,52 @@ spec:
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
@@ -1505,8 +1551,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1524,7 +1568,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1536,7 +1580,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 250m
+            cpu: 100m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1664,6 +1708,14 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
@@ -1909,69 +1961,10 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
       disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 2d884204 to 1819edc5 on Sat Mar 16 02:40:29 2024 </h3>  
 
<details> 
<summary>Git Diff (631 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index bce2c7ff..6a93f849 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,3 +43,22 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: stay-at-1-13-handle-bump-to-nightly-separately.yaml
+    target:
+      kind: Subscription
+      namespace: openshift-operators
+      name: openshift-pipelines-operator
+
+patchesStrategicMerge:
+  - |-
+    apiVersion: operators.coreos.com/v1alpha1
+    kind: CatalogSource
+    metadata:
+      name: custom-operators
+      namespace: openshift-marketplace
+    $patch: delete
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
new file mode 100644
index 00000000..cc8436e8
--- /dev/null
+++ b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
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
index 00000000..f7d76e86
--- /dev/null
+++ b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
@@ -0,0 +1,6 @@
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 16cbf899..5d4df75d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index af214d1c..1ef7e137 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d99eaa6e..28bf8eec 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
<summary>Kustomize Generated Diff (420 lines)</summary>  

``` 
./commit-2d884204/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1373c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1394,1395c1394,1395
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1419a1420,1465
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
1508,1509d1553
<         - -threadiness
<         - "32"
1527c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1539c1583
<             cpu: 250m
---
>             cpu: 100m
1666a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1912,1922d1963
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
1926,1938d1966
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
1940,1974d1967
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
./commit-2d884204/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1373c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1394,1395c1394,1395
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1419a1420,1465
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
1508,1509d1553
<         - -threadiness
<         - "32"
1527c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1539c1583
<             cpu: 250m
---
>             cpu: 100m
1666a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1912,1922d1963
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
1926,1938d1966
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
1940,1974d1967
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
./commit-2d884204/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1373c1373
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1394,1395c1394,1395
<             cpu: 100m
<             memory: 512Mi
---
>             cpu: 5m
>             memory: 128Mi
1419a1420,1465
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
1508,1509d1553
<         - -threadiness
<         - "32"
1527c1571
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1539c1583
<             cpu: 250m
---
>             cpu: 100m
1666a1711,1718
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
>           fi
> 
1912,1922d1963
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
1926,1938d1966
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
1940,1974d1967
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 2d884204 to 1819edc5 on Sat Mar 16 02:40:29 2024 </h3>  
 
<details> 
<summary>Git Diff (631 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index bce2c7ff..6a93f849 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,3 +43,22 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: stay-at-1-13-handle-bump-to-nightly-separately.yaml
+    target:
+      kind: Subscription
+      namespace: openshift-operators
+      name: openshift-pipelines-operator
+
+patchesStrategicMerge:
+  - |-
+    apiVersion: operators.coreos.com/v1alpha1
+    kind: CatalogSource
+    metadata:
+      name: custom-operators
+      namespace: openshift-marketplace
+    $patch: delete
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
new file mode 100644
index 00000000..cc8436e8
--- /dev/null
+++ b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
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
index 00000000..f7d76e86
--- /dev/null
+++ b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
@@ -0,0 +1,6 @@
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 16cbf899..5d4df75d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index af214d1c..1ef7e137 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d99eaa6e..28bf8eec 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 2d884204 to 1819edc5 on Sat Mar 16 02:40:29 2024 </h3>  
 
<details> 
<summary>Git Diff (631 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index bce2c7ff..6a93f849 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -43,3 +43,22 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: stay-at-1-13-handle-bump-to-nightly-separately.yaml
+    target:
+      kind: Subscription
+      namespace: openshift-operators
+      name: openshift-pipelines-operator
+
+patchesStrategicMerge:
+  - |-
+    apiVersion: operators.coreos.com/v1alpha1
+    kind: CatalogSource
+    metadata:
+      name: custom-operators
+      namespace: openshift-marketplace
+    $patch: delete
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
new file mode 100644
index 00000000..cc8436e8
--- /dev/null
+++ b/components/pipeline-service/production/base/stay-at-1-13-handle-bump-to-nightly-separately.yaml
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
index 00000000..f7d76e86
--- /dev/null
+++ b/components/pipeline-service/production/base/update-results-watcher-performance.yaml
@@ -0,0 +1,6 @@
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 16cbf899..5d4df75d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index af214d1c..1ef7e137 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index d99eaa6e..28bf8eec 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1370,7 +1370,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1391,8 +1391,8 @@ spec:
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
@@ -1417,52 +1417,6 @@ spec:
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
@@ -1551,6 +1505,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1568,7 +1524,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1580,7 +1536,7 @@ spec:
             cpu: 250m
             memory: 3Gi
           requests:
-            cpu: 100m
+            cpu: 250m
             memory: 3Gi
         securityContext:
           allowPrivilegeEscalation: false
@@ -1708,14 +1664,6 @@ spec:
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
@@ -1961,10 +1909,69 @@ spec:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from e67a54b4 to 2d884204 on Fri Mar 15 17:08:30 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index fd36c31f..9e8d5030 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
+      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e67a54b4/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
378c378
<   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a
---
>   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75 
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
<h3>4: Staging changes from e67a54b4 to 2d884204 on Fri Mar 15 17:08:30 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index fd36c31f..9e8d5030 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
+      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e67a54b4/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
378c378
<   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a
---
>   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75 
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
<h3>4: Development changes from e67a54b4 to 2d884204 on Fri Mar 15 17:08:30 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index fd36c31f..9e8d5030 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
+      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e67a54b4/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
378c378
<   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a
---
>   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75 
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
