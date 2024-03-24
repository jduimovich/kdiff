# kustomize changes tracked by commits 
### This file generated at Sun Mar 24 20:01:56 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a8689b9b to 6738549a on Sun Mar 24 13:43:42 2024 </h3>  
 
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
<h3>1: Staging changes from a8689b9b to 6738549a on Sun Mar 24 13:43:42 2024 </h3>  
 
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
<h3>1: Development changes from a8689b9b to 6738549a on Sun Mar 24 13:43:42 2024 </h3>  
 
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
<h3>2: Production changes from 88cd69e5 to a8689b9b on Fri Mar 22 22:02:08 2024 </h3>  
 
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
<h3>2: Staging changes from 88cd69e5 to a8689b9b on Fri Mar 22 22:02:08 2024 </h3>  
 
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
<h3>2: Development changes from 88cd69e5 to a8689b9b on Fri Mar 22 22:02:08 2024 </h3>  
 
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

<div>
<h3>3: Production changes from 913e24c9 to 88cd69e5 on Fri Mar 22 19:45:26 2024 </h3>  
 
<details> 
<summary>Git Diff (748 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/konflux-ci/konflux-ci.yaml b/argo-cd-apps/base/konflux-ci/konflux-ci.yaml
new file mode 100644
index 00000000..1f1da93c
--- /dev/null
+++ b/argo-cd-apps/base/konflux-ci/konflux-ci.yaml
@@ -0,0 +1,50 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ci
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/konflux-ci
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/konflux-ci: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: konflux-ci-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-ci
+        server: '{{server}}'
+      ignoreDifferences:
+      - group: ""
+        kind: "ServiceAccount"
+        name: appstudio-pipeline
+        jqPathExpressions:
+        - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/konflux-ci/kustomization.yaml b/argo-cd-apps/base/konflux-ci/kustomization.yaml
new file mode 100644
index 00000000..0dd8f6f5
--- /dev/null
+++ b/argo-cd-apps/base/konflux-ci/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- konflux-ci.yaml
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 0d682a37..c6aa992c 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ../../base/member
   - ../../base/all-clusters
   - ../../base/tekton-ci
+  - ../../base/konflux-ci
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config
@@ -72,6 +73,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: konflux-ci
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 22dc7187..67c10427 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -69,6 +69,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: konflux-ci
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/build-templates/base/e2e/rolebinding.yaml b/components/build-templates/base/e2e/rolebinding.yaml
index 740dfc98..3cd122e0 100644
--- a/components/build-templates/base/e2e/rolebinding.yaml
+++ b/components/build-templates/base/e2e/rolebinding.yaml
@@ -11,6 +11,9 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -24,11 +27,14 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
-  name:  admin-buildpipelineselectors-from-tekton-ci-namespace
+  name:  admin-buildpipelineselectors-from-ci-namespaces
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -37,6 +43,9 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
@@ -64,4 +73,4 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
   name: build-admin
-  
\ No newline at end of file
+  
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index c3b1d649..f052a540 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -36,6 +36,7 @@ spec:
         - build-templates-e2e
         - build-service
         - tekton-ci
+        - konflux-ci
         - image-controller
         - multi-platform-controller
         - jvm-build-service
diff --git a/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml b/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml
new file mode 100644
index 00000000..a4a1ef08
--- /dev/null
+++ b/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: appstudio-pipelines-runner-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner
+subjects:
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
diff --git a/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml b/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml
new file mode 100644
index 00000000..0763010c
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml
@@ -0,0 +1,20 @@
+
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: clair-in-ci-db-github-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/integration-service/tekton-ci/clair-in-ci-db-github-token"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: clair-in-ci-db-github-token
diff --git a/components/konflux-ci/base/external-secrets/github-secret.yaml b/components/konflux-ci/base/external-secrets/github-secret.yaml
new file mode 100644
index 00000000..4644ab0f
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/github-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: github
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/build/tekton-ci/github-read-only"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: github
diff --git a/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml b/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml
new file mode 100644
index 00000000..c5ac1dc1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: infra-deployments-pr-creator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/infra-deployments-pr-creator
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: infra-deployments-pr-creator
diff --git a/components/konflux-ci/base/external-secrets/kustomization.yaml b/components/konflux-ci/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..57bbd947
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
+- infra-deployments-pr-creator.yaml
+- snyk-shared-token.yaml
+- slack-webhook-notification-secret.yaml
+- github-secret.yaml
+- clair-in-ci-db-github-token.yaml
+- registry-redhat-io-pull-secret.yaml
+namespace: konflux-ci
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
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
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
new file mode 100644
index 00000000..6f1237e1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml b/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6dcf1cc1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/tekton-ci/registry-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml b/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml
new file mode 100644
index 00000000..5a7b755e
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: slack-webhook-notification-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/build/tekton-ci/slack-webhook-notification-secret"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: slack-webhook-notification-secret
diff --git a/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml b/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml
new file mode 100644
index 00000000..c8a98f3d
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: snyk-shared-token 
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "staging/build/tekton-ci/snyk-shared-secret" # will be added by the overlays
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: snyk-secret
diff --git a/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml b/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml
new file mode 100644
index 00000000..06ae3996
--- /dev/null
+++ b/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: konflux-ci-maintainers
+  namespace: konflux-ci
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-build
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/konflux-ci/base/kustomization.yaml b/components/konflux-ci/base/kustomization.yaml
new file mode 100644
index 00000000..1ef0c64e
--- /dev/null
+++ b/components/konflux-ci/base/kustomization.yaml
@@ -0,0 +1,15 @@
+resources:
+- namespace.yaml
+- serviceaccount.yaml
+- repository.yaml
+- konflux-ci-maintainers-rb.yaml
+- appstudio-pipelines-runner-rolebinding.yaml
+
+# Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/konflux-ci/base/namespace.yaml b/components/konflux-ci/base/namespace.yaml
new file mode 100644
index 00000000..b6add57e
--- /dev/null
+++ b/components/konflux-ci/base/namespace.yaml
@@ -0,0 +1,7 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: konflux-ci
+  annotations:
+    # Keeps PipelineRuns for 24h.
+    operator.tekton.dev/prune.keep-since: 1440
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
new file mode 100644
index 00000000..c2361022
--- /dev/null
+++ b/components/konflux-ci/base/repository.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: sprayproxy
+spec:
+  url: "https://github.com/konflux-ci/sprayproxy"
diff --git a/components/konflux-ci/base/serviceaccount.yaml b/components/konflux-ci/base/serviceaccount.yaml
new file mode 100644
index 00000000..4b4d59b9
--- /dev/null
+++ b/components/konflux-ci/base/serviceaccount.yaml
@@ -0,0 +1,10 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: appstudio-pipeline
+secrets:
+  - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
+imagePullSecrets:
+  - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
diff --git a/components/konflux-ci/production/infra-deployments-pr-creator.yaml b/components/konflux-ci/production/infra-deployments-pr-creator.yaml
new file mode 100644
index 00000000..1ec17021
--- /dev/null
+++ b/components/konflux-ci/production/infra-deployments-pr-creator.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/infra-deployments-pr-creator
diff --git a/components/konflux-ci/production/kustomization.yaml b/components/konflux-ci/production/kustomization.yaml
new file mode 100644
index 00000000..ba934adf
--- /dev/null
+++ b/components/konflux-ci/production/kustomization.yaml
@@ -0,0 +1,33 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../base/external-secrets
+- plnsvc-ci-secret.yaml
+- plnsvc-codecov-secret.yaml
+
+patches:
+  - path: quay-push-secret.yaml
+    target:
+      name: quay-push-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: infra-deployments-pr-creator.yaml
+    target:
+      name: infra-deployments-pr-creator
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: snyk-shared-token.yaml
+    target:
+      name: snyk-shared-token
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/konflux-ci/production/plnsvc-ci-secret.yaml b/components/konflux-ci/production/plnsvc-ci-secret.yaml
new file mode 100644
index 00000000..e4adb330
--- /dev/null
+++ b/components/konflux-ci/production/plnsvc-ci-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: plnsvc-ci-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/pipeline-service/plnsvc-ci
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: plnsvc-ci-secret
diff --git a/components/konflux-ci/production/plnsvc-codecov-secret.yaml b/components/konflux-ci/production/plnsvc-codecov-secret.yaml
new file mode 100644
index 00000000..5442145e
--- /dev/null
+++ b/components/konflux-ci/production/plnsvc-codecov-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: plnsvc-codecov-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/pipeline-service/codecov
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: plnsvc-codecov-secret
diff --git a/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml b/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci
diff --git a/components/konflux-ci/production/quay-push-secret.yaml b/components/konflux-ci/production/quay-push-secret.yaml
new file mode 100644
index 00000000..b4fdd4c0
--- /dev/null
+++ b/components/konflux-ci/production/quay-push-secret.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret
diff --git a/components/konflux-ci/production/snyk-shared-token.yaml b/components/konflux-ci/production/snyk-shared-token.yaml
new file mode 100644
index 00000000..900fddd6
--- /dev/null
+++ b/components/konflux-ci/production/snyk-shared-token.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/snyk-shared-secret 
diff --git a/components/konflux-ci/staging/kustomization.yaml b/components/konflux-ci/staging/kustomization.yaml
new file mode 100644
index 00000000..479bc600
--- /dev/null
+++ b/components/konflux-ci/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../base/external-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7b37f7ff..4037883a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4415904c..3770aeff 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2f8517bd..d8565d0b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9ceb04c9..c4fe2f13 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 326c8c22..2ffd052e 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4ad07cf8..815d8415 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 12dac8cb..b3d8b7df 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -78,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: sprayproxy
-spec:
-  url: "https://github.com/konflux-ci/sprayproxy"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: pipeline-service-exporter
 spec:
diff --git a/docs/deployment/extending-the-service.md b/docs/deployment/extending-the-service.md
index b1be4144..cda44bf0 100644
--- a/docs/deployment/extending-the-service.md
+++ b/docs/deployment/extending-the-service.md
@@ -117,7 +117,7 @@ More examples of using Kustomize to drive deployments using GitOps can be [found
 ## Component testing and building of images
 
 [Pipelines as Code](https://pipelinesascode.com/) is deployed and available for testing and building of images.
-To test and run builds for a component, add your github repository to `components/tekton-ci/repository.yaml`.
+To test and run builds for a component, add your github repository to `components/tekton-ci/repository.yaml` if you want to publish to quay.io/redhat-appstudio or `components/konflux-ci/repository.yaml` if you want to publish to quay.io/konflux-ci.
 
 Target repository has to have installed GitHub app - [Red Hat Trusted App Pipeline](https://github.com/apps/red-hat-trusted-app-pipeline) and pipelineRuns created in `.tekton` folder, example [Build Service](https://github.com/redhat-appstudio/build-service/tree/main/.tekton). Target image repository in quay.io must exist and robot account `redhat-appstudio+production_tektonci` has to have `write` permission on the repository.
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-913e24c9/production/components/build-templates/production/kustomize.out.yaml
91c91
<   name: admin-buildpipelineselectors-from-ci-namespaces
---
>   name: admin-buildpipelineselectors-from-tekton-ci-namespace
101,103d100
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
146,148d142
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
163,165d156
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
./commit-913e24c9/production/components/cluster-secret-store/production/kustomize.out.yaml
19d18
<     - konflux-ci
./commit-88cd69e5/production/components: konflux-ci
./commit-913e24c9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1632c1632
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
./commit-913e24c9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1632c1632
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
./commit-913e24c9/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1632c1632
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
./commit-913e24c9/production/components/tekton-ci/production/kustomize.out.yaml
415a416,424
>   name: sprayproxy
> spec:
>   url: https://github.com/konflux-ci/sprayproxy
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>3: Staging changes from 913e24c9 to 88cd69e5 on Fri Mar 22 19:45:26 2024 </h3>  
 
<details> 
<summary>Git Diff (748 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/konflux-ci/konflux-ci.yaml b/argo-cd-apps/base/konflux-ci/konflux-ci.yaml
new file mode 100644
index 00000000..1f1da93c
--- /dev/null
+++ b/argo-cd-apps/base/konflux-ci/konflux-ci.yaml
@@ -0,0 +1,50 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ci
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/konflux-ci
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/konflux-ci: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: konflux-ci-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-ci
+        server: '{{server}}'
+      ignoreDifferences:
+      - group: ""
+        kind: "ServiceAccount"
+        name: appstudio-pipeline
+        jqPathExpressions:
+        - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/konflux-ci/kustomization.yaml b/argo-cd-apps/base/konflux-ci/kustomization.yaml
new file mode 100644
index 00000000..0dd8f6f5
--- /dev/null
+++ b/argo-cd-apps/base/konflux-ci/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- konflux-ci.yaml
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 0d682a37..c6aa992c 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ../../base/member
   - ../../base/all-clusters
   - ../../base/tekton-ci
+  - ../../base/konflux-ci
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config
@@ -72,6 +73,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: konflux-ci
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 22dc7187..67c10427 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -69,6 +69,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: konflux-ci
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/build-templates/base/e2e/rolebinding.yaml b/components/build-templates/base/e2e/rolebinding.yaml
index 740dfc98..3cd122e0 100644
--- a/components/build-templates/base/e2e/rolebinding.yaml
+++ b/components/build-templates/base/e2e/rolebinding.yaml
@@ -11,6 +11,9 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -24,11 +27,14 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
-  name:  admin-buildpipelineselectors-from-tekton-ci-namespace
+  name:  admin-buildpipelineselectors-from-ci-namespaces
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -37,6 +43,9 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
@@ -64,4 +73,4 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
   name: build-admin
-  
\ No newline at end of file
+  
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index c3b1d649..f052a540 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -36,6 +36,7 @@ spec:
         - build-templates-e2e
         - build-service
         - tekton-ci
+        - konflux-ci
         - image-controller
         - multi-platform-controller
         - jvm-build-service
diff --git a/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml b/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml
new file mode 100644
index 00000000..a4a1ef08
--- /dev/null
+++ b/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: appstudio-pipelines-runner-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner
+subjects:
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
diff --git a/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml b/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml
new file mode 100644
index 00000000..0763010c
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml
@@ -0,0 +1,20 @@
+
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: clair-in-ci-db-github-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/integration-service/tekton-ci/clair-in-ci-db-github-token"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: clair-in-ci-db-github-token
diff --git a/components/konflux-ci/base/external-secrets/github-secret.yaml b/components/konflux-ci/base/external-secrets/github-secret.yaml
new file mode 100644
index 00000000..4644ab0f
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/github-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: github
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/build/tekton-ci/github-read-only"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: github
diff --git a/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml b/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml
new file mode 100644
index 00000000..c5ac1dc1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: infra-deployments-pr-creator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/infra-deployments-pr-creator
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: infra-deployments-pr-creator
diff --git a/components/konflux-ci/base/external-secrets/kustomization.yaml b/components/konflux-ci/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..57bbd947
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
+- infra-deployments-pr-creator.yaml
+- snyk-shared-token.yaml
+- slack-webhook-notification-secret.yaml
+- github-secret.yaml
+- clair-in-ci-db-github-token.yaml
+- registry-redhat-io-pull-secret.yaml
+namespace: konflux-ci
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
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
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
new file mode 100644
index 00000000..6f1237e1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml b/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6dcf1cc1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/tekton-ci/registry-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml b/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml
new file mode 100644
index 00000000..5a7b755e
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: slack-webhook-notification-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/build/tekton-ci/slack-webhook-notification-secret"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: slack-webhook-notification-secret
diff --git a/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml b/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml
new file mode 100644
index 00000000..c8a98f3d
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: snyk-shared-token 
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "staging/build/tekton-ci/snyk-shared-secret" # will be added by the overlays
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: snyk-secret
diff --git a/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml b/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml
new file mode 100644
index 00000000..06ae3996
--- /dev/null
+++ b/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: konflux-ci-maintainers
+  namespace: konflux-ci
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-build
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/konflux-ci/base/kustomization.yaml b/components/konflux-ci/base/kustomization.yaml
new file mode 100644
index 00000000..1ef0c64e
--- /dev/null
+++ b/components/konflux-ci/base/kustomization.yaml
@@ -0,0 +1,15 @@
+resources:
+- namespace.yaml
+- serviceaccount.yaml
+- repository.yaml
+- konflux-ci-maintainers-rb.yaml
+- appstudio-pipelines-runner-rolebinding.yaml
+
+# Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/konflux-ci/base/namespace.yaml b/components/konflux-ci/base/namespace.yaml
new file mode 100644
index 00000000..b6add57e
--- /dev/null
+++ b/components/konflux-ci/base/namespace.yaml
@@ -0,0 +1,7 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: konflux-ci
+  annotations:
+    # Keeps PipelineRuns for 24h.
+    operator.tekton.dev/prune.keep-since: 1440
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
new file mode 100644
index 00000000..c2361022
--- /dev/null
+++ b/components/konflux-ci/base/repository.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: sprayproxy
+spec:
+  url: "https://github.com/konflux-ci/sprayproxy"
diff --git a/components/konflux-ci/base/serviceaccount.yaml b/components/konflux-ci/base/serviceaccount.yaml
new file mode 100644
index 00000000..4b4d59b9
--- /dev/null
+++ b/components/konflux-ci/base/serviceaccount.yaml
@@ -0,0 +1,10 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: appstudio-pipeline
+secrets:
+  - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
+imagePullSecrets:
+  - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
diff --git a/components/konflux-ci/production/infra-deployments-pr-creator.yaml b/components/konflux-ci/production/infra-deployments-pr-creator.yaml
new file mode 100644
index 00000000..1ec17021
--- /dev/null
+++ b/components/konflux-ci/production/infra-deployments-pr-creator.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/infra-deployments-pr-creator
diff --git a/components/konflux-ci/production/kustomization.yaml b/components/konflux-ci/production/kustomization.yaml
new file mode 100644
index 00000000..ba934adf
--- /dev/null
+++ b/components/konflux-ci/production/kustomization.yaml
@@ -0,0 +1,33 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../base/external-secrets
+- plnsvc-ci-secret.yaml
+- plnsvc-codecov-secret.yaml
+
+patches:
+  - path: quay-push-secret.yaml
+    target:
+      name: quay-push-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: infra-deployments-pr-creator.yaml
+    target:
+      name: infra-deployments-pr-creator
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: snyk-shared-token.yaml
+    target:
+      name: snyk-shared-token
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/konflux-ci/production/plnsvc-ci-secret.yaml b/components/konflux-ci/production/plnsvc-ci-secret.yaml
new file mode 100644
index 00000000..e4adb330
--- /dev/null
+++ b/components/konflux-ci/production/plnsvc-ci-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: plnsvc-ci-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/pipeline-service/plnsvc-ci
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: plnsvc-ci-secret
diff --git a/components/konflux-ci/production/plnsvc-codecov-secret.yaml b/components/konflux-ci/production/plnsvc-codecov-secret.yaml
new file mode 100644
index 00000000..5442145e
--- /dev/null
+++ b/components/konflux-ci/production/plnsvc-codecov-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: plnsvc-codecov-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/pipeline-service/codecov
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: plnsvc-codecov-secret
diff --git a/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml b/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci
diff --git a/components/konflux-ci/production/quay-push-secret.yaml b/components/konflux-ci/production/quay-push-secret.yaml
new file mode 100644
index 00000000..b4fdd4c0
--- /dev/null
+++ b/components/konflux-ci/production/quay-push-secret.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret
diff --git a/components/konflux-ci/production/snyk-shared-token.yaml b/components/konflux-ci/production/snyk-shared-token.yaml
new file mode 100644
index 00000000..900fddd6
--- /dev/null
+++ b/components/konflux-ci/production/snyk-shared-token.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/snyk-shared-secret 
diff --git a/components/konflux-ci/staging/kustomization.yaml b/components/konflux-ci/staging/kustomization.yaml
new file mode 100644
index 00000000..479bc600
--- /dev/null
+++ b/components/konflux-ci/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../base/external-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7b37f7ff..4037883a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4415904c..3770aeff 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2f8517bd..d8565d0b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9ceb04c9..c4fe2f13 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 326c8c22..2ffd052e 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4ad07cf8..815d8415 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 12dac8cb..b3d8b7df 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -78,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: sprayproxy
-spec:
-  url: "https://github.com/konflux-ci/sprayproxy"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: pipeline-service-exporter
 spec:
diff --git a/docs/deployment/extending-the-service.md b/docs/deployment/extending-the-service.md
index b1be4144..cda44bf0 100644
--- a/docs/deployment/extending-the-service.md
+++ b/docs/deployment/extending-the-service.md
@@ -117,7 +117,7 @@ More examples of using Kustomize to drive deployments using GitOps can be [found
 ## Component testing and building of images
 
 [Pipelines as Code](https://pipelinesascode.com/) is deployed and available for testing and building of images.
-To test and run builds for a component, add your github repository to `components/tekton-ci/repository.yaml`.
+To test and run builds for a component, add your github repository to `components/tekton-ci/repository.yaml` if you want to publish to quay.io/redhat-appstudio or `components/konflux-ci/repository.yaml` if you want to publish to quay.io/konflux-ci.
 
 Target repository has to have installed GitHub app - [Red Hat Trusted App Pipeline](https://github.com/apps/red-hat-trusted-app-pipeline) and pipelineRuns created in `.tekton` folder, example [Build Service](https://github.com/redhat-appstudio/build-service/tree/main/.tekton). Target image repository in quay.io must exist and robot account `redhat-appstudio+production_tektonci` has to have `write` permission on the repository.
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-913e24c9/staging/components/build-templates/staging/kustomize.out.yaml
89c89
<   name: admin-buildpipelineselectors-from-ci-namespaces
---
>   name: admin-buildpipelineselectors-from-tekton-ci-namespace
99,101d98
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
144,146d140
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
161,163d154
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
./commit-913e24c9/staging/components/cluster-secret-store/staging/kustomize.out.yaml
19d18
<     - konflux-ci
./commit-88cd69e5/staging/components: konflux-ci
./commit-913e24c9/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1591c1591
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
./commit-913e24c9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1591c1591
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
./commit-913e24c9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1591c1591
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
---
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
./commit-913e24c9/staging/components/tekton-ci/staging/kustomize.out.yaml
375a376,384
>   name: sprayproxy
> spec:
>   url: https://github.com/konflux-ci/sprayproxy
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>3: Development changes from 913e24c9 to 88cd69e5 on Fri Mar 22 19:45:26 2024 </h3>  
 
<details> 
<summary>Git Diff (748 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/konflux-ci/konflux-ci.yaml b/argo-cd-apps/base/konflux-ci/konflux-ci.yaml
new file mode 100644
index 00000000..1f1da93c
--- /dev/null
+++ b/argo-cd-apps/base/konflux-ci/konflux-ci.yaml
@@ -0,0 +1,50 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ci
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/konflux-ci
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/konflux-ci: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: konflux-ci-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-ci
+        server: '{{server}}'
+      ignoreDifferences:
+      - group: ""
+        kind: "ServiceAccount"
+        name: appstudio-pipeline
+        jqPathExpressions:
+        - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/konflux-ci/kustomization.yaml b/argo-cd-apps/base/konflux-ci/kustomization.yaml
new file mode 100644
index 00000000..0dd8f6f5
--- /dev/null
+++ b/argo-cd-apps/base/konflux-ci/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- konflux-ci.yaml
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 0d682a37..c6aa992c 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -5,6 +5,7 @@ resources:
   - ../../base/member
   - ../../base/all-clusters
   - ../../base/tekton-ci
+  - ../../base/konflux-ci
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config
@@ -72,6 +73,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: konflux-ci
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 22dc7187..67c10427 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -69,6 +69,11 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: konflux-ci
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/build-templates/base/e2e/rolebinding.yaml b/components/build-templates/base/e2e/rolebinding.yaml
index 740dfc98..3cd122e0 100644
--- a/components/build-templates/base/e2e/rolebinding.yaml
+++ b/components/build-templates/base/e2e/rolebinding.yaml
@@ -11,6 +11,9 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -24,11 +27,14 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
-  name:  admin-buildpipelineselectors-from-tekton-ci-namespace
+  name:  admin-buildpipelineselectors-from-ci-namespaces
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
@@ -37,6 +43,9 @@ subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline
   namespace: tekton-ci
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
@@ -64,4 +73,4 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
   name: build-admin
-  
\ No newline at end of file
+  
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index c3b1d649..f052a540 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -36,6 +36,7 @@ spec:
         - build-templates-e2e
         - build-service
         - tekton-ci
+        - konflux-ci
         - image-controller
         - multi-platform-controller
         - jvm-build-service
diff --git a/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml b/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml
new file mode 100644
index 00000000..a4a1ef08
--- /dev/null
+++ b/components/konflux-ci/base/appstudio-pipelines-runner-rolebinding.yaml
@@ -0,0 +1,12 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: appstudio-pipelines-runner-rolebinding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner
+subjects:
+- kind: ServiceAccount
+  name: appstudio-pipeline
+  namespace: konflux-ci
diff --git a/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml b/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml
new file mode 100644
index 00000000..0763010c
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/clair-in-ci-db-github-token.yaml
@@ -0,0 +1,20 @@
+
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: clair-in-ci-db-github-token
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/integration-service/tekton-ci/clair-in-ci-db-github-token"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: clair-in-ci-db-github-token
diff --git a/components/konflux-ci/base/external-secrets/github-secret.yaml b/components/konflux-ci/base/external-secrets/github-secret.yaml
new file mode 100644
index 00000000..4644ab0f
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/github-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: github
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/build/tekton-ci/github-read-only"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: github
diff --git a/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml b/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml
new file mode 100644
index 00000000..c5ac1dc1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/infra-deployments-pr-creator.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: infra-deployments-pr-creator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/infra-deployments-pr-creator
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: infra-deployments-pr-creator
diff --git a/components/konflux-ci/base/external-secrets/kustomization.yaml b/components/konflux-ci/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..57bbd947
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
+- infra-deployments-pr-creator.yaml
+- snyk-shared-token.yaml
+- slack-webhook-notification-secret.yaml
+- github-secret.yaml
+- clair-in-ci-db-github-token.yaml
+- registry-redhat-io-pull-secret.yaml
+namespace: konflux-ci
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
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
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
new file mode 100644
index 00000000..6f1237e1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml b/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6dcf1cc1
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/registry-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/tekton-ci/registry-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml b/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml
new file mode 100644
index 00000000..5a7b755e
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/slack-webhook-notification-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: slack-webhook-notification-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "production/build/tekton-ci/slack-webhook-notification-secret"
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: slack-webhook-notification-secret
diff --git a/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml b/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml
new file mode 100644
index 00000000..c8a98f3d
--- /dev/null
+++ b/components/konflux-ci/base/external-secrets/snyk-shared-token.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: snyk-shared-token 
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "staging/build/tekton-ci/snyk-shared-secret" # will be added by the overlays
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: snyk-secret
diff --git a/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml b/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml
new file mode 100644
index 00000000..06ae3996
--- /dev/null
+++ b/components/konflux-ci/base/konflux-ci-maintainers-rb.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: konflux-ci-maintainers
+  namespace: konflux-ci
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-build
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/konflux-ci/base/kustomization.yaml b/components/konflux-ci/base/kustomization.yaml
new file mode 100644
index 00000000..1ef0c64e
--- /dev/null
+++ b/components/konflux-ci/base/kustomization.yaml
@@ -0,0 +1,15 @@
+resources:
+- namespace.yaml
+- serviceaccount.yaml
+- repository.yaml
+- konflux-ci-maintainers-rb.yaml
+- appstudio-pipelines-runner-rolebinding.yaml
+
+# Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
diff --git a/components/konflux-ci/base/namespace.yaml b/components/konflux-ci/base/namespace.yaml
new file mode 100644
index 00000000..b6add57e
--- /dev/null
+++ b/components/konflux-ci/base/namespace.yaml
@@ -0,0 +1,7 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: konflux-ci
+  annotations:
+    # Keeps PipelineRuns for 24h.
+    operator.tekton.dev/prune.keep-since: 1440
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
new file mode 100644
index 00000000..c2361022
--- /dev/null
+++ b/components/konflux-ci/base/repository.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: sprayproxy
+spec:
+  url: "https://github.com/konflux-ci/sprayproxy"
diff --git a/components/konflux-ci/base/serviceaccount.yaml b/components/konflux-ci/base/serviceaccount.yaml
new file mode 100644
index 00000000..4b4d59b9
--- /dev/null
+++ b/components/konflux-ci/base/serviceaccount.yaml
@@ -0,0 +1,10 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: appstudio-pipeline
+secrets:
+  - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
+imagePullSecrets:
+  - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
diff --git a/components/konflux-ci/production/infra-deployments-pr-creator.yaml b/components/konflux-ci/production/infra-deployments-pr-creator.yaml
new file mode 100644
index 00000000..1ec17021
--- /dev/null
+++ b/components/konflux-ci/production/infra-deployments-pr-creator.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/infra-deployments-pr-creator
diff --git a/components/konflux-ci/production/kustomization.yaml b/components/konflux-ci/production/kustomization.yaml
new file mode 100644
index 00000000..ba934adf
--- /dev/null
+++ b/components/konflux-ci/production/kustomization.yaml
@@ -0,0 +1,33 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../base/external-secrets
+- plnsvc-ci-secret.yaml
+- plnsvc-codecov-secret.yaml
+
+patches:
+  - path: quay-push-secret.yaml
+    target:
+      name: quay-push-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: infra-deployments-pr-creator.yaml
+    target:
+      name: infra-deployments-pr-creator
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: snyk-shared-token.yaml
+    target:
+      name: snyk-shared-token
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/konflux-ci/production/plnsvc-ci-secret.yaml b/components/konflux-ci/production/plnsvc-ci-secret.yaml
new file mode 100644
index 00000000..e4adb330
--- /dev/null
+++ b/components/konflux-ci/production/plnsvc-ci-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: plnsvc-ci-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/pipeline-service/plnsvc-ci
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: plnsvc-ci-secret
diff --git a/components/konflux-ci/production/plnsvc-codecov-secret.yaml b/components/konflux-ci/production/plnsvc-codecov-secret.yaml
new file mode 100644
index 00000000..5442145e
--- /dev/null
+++ b/components/konflux-ci/production/plnsvc-codecov-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: plnsvc-codecov-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/pipeline-service/codecov
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: plnsvc-codecov-secret
diff --git a/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml b/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/konflux-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci
diff --git a/components/konflux-ci/production/quay-push-secret.yaml b/components/konflux-ci/production/quay-push-secret.yaml
new file mode 100644
index 00000000..b4fdd4c0
--- /dev/null
+++ b/components/konflux-ci/production/quay-push-secret.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret
diff --git a/components/konflux-ci/production/snyk-shared-token.yaml b/components/konflux-ci/production/snyk-shared-token.yaml
new file mode 100644
index 00000000..900fddd6
--- /dev/null
+++ b/components/konflux-ci/production/snyk-shared-token.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/snyk-shared-secret 
diff --git a/components/konflux-ci/staging/kustomization.yaml b/components/konflux-ci/staging/kustomization.yaml
new file mode 100644
index 00000000..479bc600
--- /dev/null
+++ b/components/konflux-ci/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../base/external-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7b37f7ff..4037883a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4415904c..3770aeff 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2f8517bd..d8565d0b 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1629,7 +1629,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9ceb04c9..c4fe2f13 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 326c8c22..2ffd052e 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4ad07cf8..815d8415 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1588,7 +1588,7 @@ spec:
               set -o errexit
               set -o nounset
               set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
                 echo "$namespace: Cleaning pac-gitauth secrets"
                 kubectl get secrets --namespace $namespace -o json | \
                   jq -r '.items[] |
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 12dac8cb..b3d8b7df 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -78,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: sprayproxy
-spec:
-  url: "https://github.com/konflux-ci/sprayproxy"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: pipeline-service-exporter
 spec:
diff --git a/docs/deployment/extending-the-service.md b/docs/deployment/extending-the-service.md
index b1be4144..cda44bf0 100644
--- a/docs/deployment/extending-the-service.md
+++ b/docs/deployment/extending-the-service.md
@@ -117,7 +117,7 @@ More examples of using Kustomize to drive deployments using GitOps can be [found
 ## Component testing and building of images
 
 [Pipelines as Code](https://pipelinesascode.com/) is deployed and available for testing and building of images.
-To test and run builds for a component, add your github repository to `components/tekton-ci/repository.yaml`.
+To test and run builds for a component, add your github repository to `components/tekton-ci/repository.yaml` if you want to publish to quay.io/redhat-appstudio or `components/konflux-ci/repository.yaml` if you want to publish to quay.io/konflux-ci.
 
 Target repository has to have installed GitHub app - [Red Hat Trusted App Pipeline](https://github.com/apps/red-hat-trusted-app-pipeline) and pipelineRuns created in `.tekton` folder, example [Build Service](https://github.com/redhat-appstudio/build-service/tree/main/.tekton). Target image repository in quay.io must exist and robot account `redhat-appstudio+production_tektonci` has to have `write` permission on the repository.
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-913e24c9/development/components/build-templates/development/kustomize.out.yaml
79c79
<   name: admin-buildpipelineselectors-from-ci-namespaces
---
>   name: admin-buildpipelineselectors-from-tekton-ci-namespace
89,91d88
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
134,136d130
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci
151,153d144
< - kind: ServiceAccount
<   name: appstudio-pipeline
<   namespace: konflux-ci 
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
<h3>4: Production changes from bf205a50 to 913e24c9 on Fri Mar 22 13:45:12 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/increase-build-controller-memory.yaml b/components/build-service/production/base/increase-build-controller-memory.yaml
deleted file mode 100644
index 3947b621..00000000
--- a/components/build-service/production/base/increase-build-controller-memory.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/template/spec/containers/0/resources/limits/memory
-  value: "512Mi"
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b6d765ac..55a3dcfd 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -22,7 +22,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: increase-build-controller-memory.yaml
-    target:
-      kind: Deployment
-      name: build-service-controller-manager 
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
<h3>4: Staging changes from bf205a50 to 913e24c9 on Fri Mar 22 13:45:12 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/increase-build-controller-memory.yaml b/components/build-service/production/base/increase-build-controller-memory.yaml
deleted file mode 100644
index 3947b621..00000000
--- a/components/build-service/production/base/increase-build-controller-memory.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/template/spec/containers/0/resources/limits/memory
-  value: "512Mi"
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b6d765ac..55a3dcfd 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -22,7 +22,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: increase-build-controller-memory.yaml
-    target:
-      kind: Deployment
-      name: build-service-controller-manager 
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
<h3>4: Development changes from bf205a50 to 913e24c9 on Fri Mar 22 13:45:12 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/increase-build-controller-memory.yaml b/components/build-service/production/base/increase-build-controller-memory.yaml
deleted file mode 100644
index 3947b621..00000000
--- a/components/build-service/production/base/increase-build-controller-memory.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/template/spec/containers/0/resources/limits/memory
-  value: "512Mi"
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index b6d765ac..55a3dcfd 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -22,7 +22,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: increase-build-controller-memory.yaml
-    target:
-      kind: Deployment
-      name: build-service-controller-manager 
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
