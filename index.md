# kustomize changes tracked by commits 
### This file generated at Wed Aug 28 12:05:23 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a91c8832 to 09f7ab89 on Wed Aug 28 11:38:36 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index c13c2052..94162119 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -58,4 +58,5 @@ spec:
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
         - notification-controller
+        - rhtap-integration-tenant
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-a91c8832/production/components/cluster-secret-store/production/kustomize.out.yaml
41d40
<     - rhtap-integration-tenant 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a91c8832 to 09f7ab89 on Wed Aug 28 11:38:36 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index c13c2052..94162119 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -58,4 +58,5 @@ spec:
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
         - notification-controller
+        - rhtap-integration-tenant
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-a91c8832/staging/components/cluster-secret-store/staging/kustomize.out.yaml
41d40
<     - rhtap-integration-tenant 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a91c8832 to 09f7ab89 on Wed Aug 28 11:38:36 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index c13c2052..94162119 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -58,4 +58,5 @@ spec:
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
         - notification-controller
+        - rhtap-integration-tenant
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 73d9ad46 to a91c8832 on Wed Aug 28 06:00:30 2024 </h3>  
 
<details> 
<summary>Git Diff (1042 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 11a64df7..ded397c9 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -20,15 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -77,27 +68,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -481,23 +451,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1392,77 +1345,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1d82a50f..faae709a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-m01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 05561ee5..2bd243ef 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -21,12 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..cf7d9ab4
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-m01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a6654e07..23c716be 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 05561ee5..2bd243ef 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -21,12 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..a00ae46e
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-rh01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 920d4c0a..c758dce8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index c7375acc..79354316 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -31,12 +37,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..596f3a31
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6ec18e4a..fc2bb1a1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-p02/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index c7375acc..79354316 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -31,12 +37,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..a49903fd
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-p02/chains-signing-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (600 lines)</summary>  

``` 
./commit-73d9ad46/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1723a1771,1841
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1744,1769d1861
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: production/pipeline-service/stone-prod-m01/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-73d9ad46/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1723a1771,1841
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1744,1769d1861
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-73d9ad46/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1723a1771,1841
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1744,1769d1861
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: production/pipeline-service/stone-prod-p01/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-73d9ad46/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1723a1771,1841
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1744,1769d1861
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: production/pipeline-service/stone-prod-p02/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 73d9ad46 to a91c8832 on Wed Aug 28 06:00:30 2024 </h3>  
 
<details> 
<summary>Git Diff (1042 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 11a64df7..ded397c9 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -20,15 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -77,27 +68,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -481,23 +451,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1392,77 +1345,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1d82a50f..faae709a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-m01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 05561ee5..2bd243ef 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -21,12 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..cf7d9ab4
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-m01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a6654e07..23c716be 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 05561ee5..2bd243ef 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -21,12 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..a00ae46e
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-rh01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 920d4c0a..c758dce8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index c7375acc..79354316 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -31,12 +37,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..596f3a31
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6ec18e4a..fc2bb1a1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-p02/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index c7375acc..79354316 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -31,12 +37,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..a49903fd
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-p02/chains-signing-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 73d9ad46 to a91c8832 on Wed Aug 28 06:00:30 2024 </h3>  
 
<details> 
<summary>Git Diff (1042 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 11a64df7..ded397c9 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -20,15 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -77,27 +68,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -481,23 +451,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1392,77 +1345,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1d82a50f..faae709a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-m01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 05561ee5..2bd243ef 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -21,12 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..cf7d9ab4
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-m01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a6654e07..23c716be 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 05561ee5..2bd243ef 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -21,12 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..a00ae46e
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-rh01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 920d4c0a..c758dce8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index c7375acc..79354316 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -31,12 +37,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..596f3a31
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6ec18e4a..fc2bb1a1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1768,77 +1721,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1862,6 +1744,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/stone-prod-p02/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index c7375acc..79354316 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
@@ -31,12 +37,3 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - target:
-      kind: ExternalSecret
-      name: tekton-chains-public-key
-    patch: |
-      $patch: delete
-      apiVersion: external-secrets.io/v1beta1
-      kind: ExternalSecret
-      metadata:
-        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..a49903fd
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/stone-prod-p02/chains-signing-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 06d48a61 to 73d9ad46 on Wed Aug 28 04:48:47 2024 </h3>  
 
<details> 
<summary>Git Diff (57 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 37a7b041..78acf8d8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index 2bd243ef..dda1dafe 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,3 +27,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: tekton-config-patch.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
new file mode 100644
index 00000000..9fd45a9d
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
@@ -0,0 +1,18 @@
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    options:
+      configMaps:
+        config-defaults:
+          data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 06d48a61 to 73d9ad46 on Wed Aug 28 04:48:47 2024 </h3>  
 
<details> 
<summary>Git Diff (57 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 37a7b041..78acf8d8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index 2bd243ef..dda1dafe 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,3 +27,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: tekton-config-patch.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
new file mode 100644
index 00000000..9fd45a9d
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
@@ -0,0 +1,18 @@
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    options:
+      configMaps:
+        config-defaults:
+          data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-06d48a61/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 06d48a61 to 73d9ad46 on Wed Aug 28 04:48:47 2024 </h3>  
 
<details> 
<summary>Git Diff (57 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 37a7b041..78acf8d8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index 2bd243ef..dda1dafe 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,3 +27,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: tekton-config-patch.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
new file mode 100644
index 00000000..9fd45a9d
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
@@ -0,0 +1,18 @@
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    options:
+      configMaps:
+        config-defaults:
+          data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 60d576e1 to 06d48a61 on Tue Aug 27 20:22:49 2024 </h3>  
 
<details> 
<summary>Git Diff (105 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 266571a3..6325686a 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,6 +19,12 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
new file mode 100644
index 00000000..42eae999
--- /dev/null
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+- route.yaml
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
new file mode 100644
index 00000000..20ff6fe2
--- /dev/null
+++ b/components/workspaces/production/stone-prd-host1/route.yaml
@@ -0,0 +1,18 @@
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    provider: workspaces
+    app: rest-api-server
+  name: workspaces-rest-api-server
+  namespace: workspaces-system
+spec:
+  port:
+    targetPort: 8000
+  tls:
+    termination: edge
+  to:
+    kind: Service
+    name: workspaces-rest-api-server
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..1d59ebf8
--- /dev/null
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..1d59ebf8
--- /dev/null
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-06d48a61/production/components: workspaces 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 60d576e1 to 06d48a61 on Tue Aug 27 20:22:49 2024 </h3>  
 
<details> 
<summary>Git Diff (105 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 266571a3..6325686a 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,6 +19,12 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
new file mode 100644
index 00000000..42eae999
--- /dev/null
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+- route.yaml
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
new file mode 100644
index 00000000..20ff6fe2
--- /dev/null
+++ b/components/workspaces/production/stone-prd-host1/route.yaml
@@ -0,0 +1,18 @@
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    provider: workspaces
+    app: rest-api-server
+  name: workspaces-rest-api-server
+  namespace: workspaces-system
+spec:
+  port:
+    targetPort: 8000
+  tls:
+    termination: edge
+  to:
+    kind: Service
+    name: workspaces-rest-api-server
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..1d59ebf8
--- /dev/null
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..1d59ebf8
--- /dev/null
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 60d576e1 to 06d48a61 on Tue Aug 27 20:22:49 2024 </h3>  
 
<details> 
<summary>Git Diff (105 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 266571a3..6325686a 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,6 +19,12 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
new file mode 100644
index 00000000..42eae999
--- /dev/null
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+- route.yaml
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
new file mode 100644
index 00000000..20ff6fe2
--- /dev/null
+++ b/components/workspaces/production/stone-prd-host1/route.yaml
@@ -0,0 +1,18 @@
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    provider: workspaces
+    app: rest-api-server
+  name: workspaces-rest-api-server
+  namespace: workspaces-system
+spec:
+  port:
+    targetPort: 8000
+  tls:
+    termination: edge
+  to:
+    kind: Service
+    name: workspaces-rest-api-server
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..1d59ebf8
--- /dev/null
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..1d59ebf8
--- /dev/null
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base/
+images:
+- name: quay.io/konflux-workspaces/workspaces-server
+  newTag: v0.1.0-alpha5
+- name: quay.io/konflux-workspaces/workspaces-operator
+  newTag: v0.1.0-alpha5
+
+configMapGenerator:
+- behavior: merge
+  literals:
+  - log.level=0
+  name: rest-api-server-config 
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
```
 
</details> 
<br> 


</div>
