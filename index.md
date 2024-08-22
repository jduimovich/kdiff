# kustomize changes tracked by commits 
### This file generated at Thu Aug 22 08:05:18 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 954d7887 to 6c598876 on Thu Aug 22 06:51:21 2024 </h3>  
 
<details> 
<summary>Git Diff (888 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
new file mode 100644
index 00000000..d178ed04
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
@@ -0,0 +1,25 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  data:
+    - secretKey: "cosign.pub"
+      remoteRef:
+        key: ""  # will be added by the overlays
+        property: "cosign.pub"  # IMPORTANT: without specifying the public key as a property, the whole information from the vault key (including the private key) will be included!
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
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
index d68c0f31..14ff4b1c 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - chains-signing-secrets.yaml
+  - chains-public-key.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 148eb6c7..4bf404bb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
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
@@ -1395,77 +1348,6 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c26d1220..f0509b27 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 336d1757..79354316 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..57c6ad22
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78178749..f48ac479 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..caf2f13c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c4a65ded..ace41725 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..2d701bae
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 954d7887 to 6c598876 on Thu Aug 22 06:51:21 2024 </h3>  
 
<details> 
<summary>Git Diff (888 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
new file mode 100644
index 00000000..d178ed04
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
@@ -0,0 +1,25 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  data:
+    - secretKey: "cosign.pub"
+      remoteRef:
+        key: ""  # will be added by the overlays
+        property: "cosign.pub"  # IMPORTANT: without specifying the public key as a property, the whole information from the vault key (including the private key) will be included!
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
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
index d68c0f31..14ff4b1c 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - chains-signing-secrets.yaml
+  - chains-public-key.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 148eb6c7..4bf404bb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
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
@@ -1395,77 +1348,6 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c26d1220..f0509b27 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 336d1757..79354316 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..57c6ad22
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78178749..f48ac479 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..caf2f13c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c4a65ded..ace41725 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..2d701bae
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (450 lines)</summary>  

``` 
./commit-954d7887/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
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
1726a1774,1844
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
1747,1772d1864
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
<       key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
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
./commit-954d7887/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
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
1726a1774,1844
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
1747,1772d1864
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
<       key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
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
./commit-954d7887/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
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
1726a1774,1844
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
1747,1772d1864
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
<       key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 954d7887 to 6c598876 on Thu Aug 22 06:51:21 2024 </h3>  
 
<details> 
<summary>Git Diff (888 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
new file mode 100644
index 00000000..d178ed04
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
@@ -0,0 +1,25 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  data:
+    - secretKey: "cosign.pub"
+      remoteRef:
+        key: ""  # will be added by the overlays
+        property: "cosign.pub"  # IMPORTANT: without specifying the public key as a property, the whole information from the vault key (including the private key) will be included!
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
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
index d68c0f31..14ff4b1c 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - chains-signing-secrets.yaml
+  - chains-public-key.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 148eb6c7..4bf404bb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
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
@@ -1395,77 +1348,6 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c26d1220..f0509b27 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 336d1757..79354316 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..57c6ad22
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78178749..f48ac479 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..caf2f13c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c4a65ded..ace41725 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
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
@@ -1771,77 +1724,6 @@ spec:
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
@@ -1865,6 +1747,32 @@ spec:
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
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..2d701bae
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
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
<h3>2: Production changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index 2d4700a6..dedfeb67 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.prod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions:
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index d2bc15bb..f467fc17 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.preprod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index 2d4700a6..dedfeb67 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.prod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions:
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index d2bc15bb..f467fc17 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.preprod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions: 
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
<h3>2: Development changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index 2d4700a6..dedfeb67 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.prod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions:
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index d2bc15bb..f467fc17 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.preprod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions: 
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
<h3>3: Production changes from 14627864 to 83305652 on Wed Aug 21 20:10:07 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 5e9777d1..9b3ea7f6 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: a40a953
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c  
+    newTag: e3decf1   
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 0947b2f9..6db18ad3 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: 94f3475
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 3fcdfde
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-14627864/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
596c596
<         image: quay.io/cloudservices/chrome-service:6f08f67
---
>         image: quay.io/cloudservices/chrome-service:f3c8aa9
./commit-14627864/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
596c596
<         image: quay.io/cloudservices/chrome-service:6f08f67
---
>         image: quay.io/cloudservices/chrome-service:f3c8aa9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 14627864 to 83305652 on Wed Aug 21 20:10:07 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 5e9777d1..9b3ea7f6 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: a40a953
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c  
+    newTag: e3decf1   
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 0947b2f9..6db18ad3 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: 94f3475
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 3fcdfde
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-14627864/staging/components/ui/staging/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:94f3475
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
596c596
<         image: quay.io/cloudservices/chrome-service:3fcdfde
---
>         image: quay.io/cloudservices/chrome-service:f3c8aa9 
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
<h3>3: Development changes from 14627864 to 83305652 on Wed Aug 21 20:10:07 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 5e9777d1..9b3ea7f6 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: a40a953
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c  
+    newTag: e3decf1   
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 0947b2f9..6db18ad3 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: 94f3475
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 3fcdfde
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-14627864/development/components/ui/development/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:e3decf1
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c 
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
<h3>4: Production changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-a2c134e6/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:6f08f67
./commit-a2c134e6/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:6f08f67 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-a2c134e6/staging/components/ui/staging/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:94f3475
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:3fcdfde 
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
<h3>4: Development changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a2c134e6/development/components/ui/development/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:e3decf1 
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
