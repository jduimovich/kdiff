# kustomize changes tracked by commits 
### This file generated at Mon Sep 16 12:07:23 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 58eeeda3 to c06c88f1 on Mon Sep 16 10:49:23 2024 </h3>  
 
<details> 
<summary>Git Diff (800 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 0ff71347..c4b02dac 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,6 +29,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -151,6 +159,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -170,6 +209,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -491,6 +551,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -507,6 +583,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1308,6 +1399,69 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 36d287dc..c3248029 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,6 +20,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -121,6 +129,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -140,6 +179,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -444,6 +504,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -460,6 +536,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1194,6 +1285,69 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 09d77146..a20129b9 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,6 +27,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -153,6 +161,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -172,6 +211,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -663,6 +723,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -679,6 +755,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1578,6 +1669,69 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4374c4aa..1692cfa3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,6 +27,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -153,6 +161,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -172,6 +211,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -663,6 +723,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -679,6 +755,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1578,6 +1669,69 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
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
<h3>1: Staging changes from 58eeeda3 to c06c88f1 on Mon Sep 16 10:49:23 2024 </h3>  
 
<details> 
<summary>Git Diff (800 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 0ff71347..c4b02dac 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,6 +29,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -151,6 +159,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -170,6 +209,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -491,6 +551,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -507,6 +583,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1308,6 +1399,69 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 36d287dc..c3248029 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,6 +20,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -121,6 +129,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -140,6 +179,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -444,6 +504,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -460,6 +536,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1194,6 +1285,69 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 09d77146..a20129b9 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,6 +27,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -153,6 +161,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -172,6 +211,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -663,6 +723,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -679,6 +755,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1578,6 +1669,69 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4374c4aa..1692cfa3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,6 +27,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -153,6 +161,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -172,6 +211,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -663,6 +723,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -679,6 +755,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1578,6 +1669,69 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (322 lines)</summary>  

``` 
./commit-58eeeda3/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
33,40d32
<   name: pac-secret-manager
<   namespace: openshift-pipelines
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
168,198d159
<   name: openshift-gitops-cronjobs-admin
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - pac-secret-manager
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - list
<   - patch
<   - create
<   - delete
< - apiGroups:
<   - batch
<   resources:
<   - cronjobs
<   verbs:
<   - get
<   - list
<   - patch
<   - create
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
217,237d177
<   name: pac-secret-manager
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - list
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
730,745d669
<   name: openshift-gitops-cronjobs-admin
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: openshift-gitops-cronjobs-admin
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
761,775d684
<   name: pac-secret-manager
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pac-secret-manager
< subjects:
< - kind: ServiceAccount
<   name: pac-secret-manager
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1671,1733d1579
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pac-secret-reaper
<   namespace: openshift-pipelines
< spec:
<   concurrencyPolicy: Forbid
<   jobTemplate:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       template:
<         metadata:
<           annotations:
<             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - |
<               # Delete "pac-gitauth-*" secrets older than a day
<               set -o errexit
<               set -o nounset
<               set -o pipefail
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
<                 echo "$namespace: Cleaning pac-gitauth secrets"
<                 kubectl get secrets --namespace $namespace -o json | \
<                   jq -r '.items[] |
<                     select(.metadata.name |
<                     startswith("pac-gitauth-")) |
<                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
<                     "secret/" + .metadata.name
<                   ' | \
<                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
<               done
<               echo "Done"
<             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
<             imagePullPolicy: Always
<             name: delete-pac-secrets
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<           restartPolicy: Never
<           serviceAccountName: pac-secret-manager
<   schedule: '*/10 * * * *'
./commit-58eeeda3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
33,40d32
<   name: pac-secret-manager
<   namespace: openshift-pipelines
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
168,198d159
<   name: openshift-gitops-cronjobs-admin
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - pac-secret-manager
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - list
<   - patch
<   - create
<   - delete
< - apiGroups:
<   - batch
<   resources:
<   - cronjobs
<   verbs:
<   - get
<   - list
<   - patch
<   - create
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
217,237d177
<   name: pac-secret-manager
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - list
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
730,745d669
<   name: openshift-gitops-cronjobs-admin
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: openshift-gitops-cronjobs-admin
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
761,775d684
<   name: pac-secret-manager
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pac-secret-manager
< subjects:
< - kind: ServiceAccount
<   name: pac-secret-manager
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1671,1733d1579
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pac-secret-reaper
<   namespace: openshift-pipelines
< spec:
<   concurrencyPolicy: Forbid
<   jobTemplate:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       template:
<         metadata:
<           annotations:
<             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - |
<               # Delete "pac-gitauth-*" secrets older than a day
<               set -o errexit
<               set -o nounset
<               set -o pipefail
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
<                 echo "$namespace: Cleaning pac-gitauth secrets"
<                 kubectl get secrets --namespace $namespace -o json | \
<                   jq -r '.items[] |
<                     select(.metadata.name |
<                     startswith("pac-gitauth-")) |
<                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
<                     "secret/" + .metadata.name
<                   ' | \
<                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
<               done
<               echo "Done"
<             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
<             imagePullPolicy: Always
<             name: delete-pac-secrets
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<           restartPolicy: Never
<           serviceAccountName: pac-secret-manager
<   schedule: '*/10 * * * *' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 58eeeda3 to c06c88f1 on Mon Sep 16 10:49:23 2024 </h3>  
 
<details> 
<summary>Git Diff (800 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 0ff71347..c4b02dac 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,6 +29,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -151,6 +159,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -170,6 +209,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -491,6 +551,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -507,6 +583,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1308,6 +1399,69 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 36d287dc..c3248029 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,6 +20,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -121,6 +129,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -140,6 +179,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -444,6 +504,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -460,6 +536,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1194,6 +1285,69 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 09d77146..a20129b9 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,6 +27,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -153,6 +161,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -172,6 +211,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -663,6 +723,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -679,6 +755,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1578,6 +1669,69 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4374c4aa..1692cfa3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,6 +27,14 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -153,6 +161,37 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -172,6 +211,27 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -663,6 +723,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -679,6 +755,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1578,6 +1669,69 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (161 lines)</summary>  

``` 
./commit-58eeeda3/development/components/pipeline-service/development/kustomize.out.yaml
5650,5657d5649
<   name: pac-secret-manager
<   namespace: openshift-pipelines
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
6203,6233d6194
<   name: openshift-gitops-cronjobs-admin
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - pac-secret-manager
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - list
<   - patch
<   - create
<   - delete
< - apiGroups:
<   - batch
<   resources:
<   - cronjobs
<   verbs:
<   - get
<   - list
<   - patch
<   - create
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
6284,6304d6244
<   name: pac-secret-manager
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - list
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - list
<   - delete
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
6818,6833d6757
<   name: openshift-gitops-cronjobs-admin
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: openshift-gitops-cronjobs-admin
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
6865,6879d6788
<   name: pac-secret-manager
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pac-secret-manager
< subjects:
< - kind: ServiceAccount
<   name: pac-secret-manager
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
7963,8025d7871
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: pac-secret-reaper
<   namespace: openshift-pipelines
< spec:
<   concurrencyPolicy: Forbid
<   jobTemplate:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     spec:
<       template:
<         metadata:
<           annotations:
<             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - |
<               # Delete "pac-gitauth-*" secrets older than a day
<               set -o errexit
<               set -o nounset
<               set -o pipefail
<               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
<                 echo "$namespace: Cleaning pac-gitauth secrets"
<                 kubectl get secrets --namespace $namespace -o json | \
<                   jq -r '.items[] |
<                     select(.metadata.name |
<                     startswith("pac-gitauth-")) |
<                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
<                     "secret/" + .metadata.name
<                   ' | \
<                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
<               done
<               echo "Done"
<             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
<             imagePullPolicy: Always
<             name: delete-pac-secrets
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<           restartPolicy: Never
<           serviceAccountName: pac-secret-manager
<   schedule: '*/10 * * * *' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 6bf3aa0e to 58eeeda3 on Mon Sep 16 09:51:36 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 38f60e84..b5b2aa5d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6fc6e305864960bbdf788fd0120fb8ce81fdaae5
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6fc6e305864960bbdf788fd0120fb8ce81fdaae5
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=deed3c92266a5c09c7cba3e4d7a305134bce036b
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=deed3c92266a5c09c7cba3e4d7a305134bce036b
 
 
 images: 
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
<h3>2: Staging changes from 6bf3aa0e to 58eeeda3 on Mon Sep 16 09:51:36 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 38f60e84..b5b2aa5d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6fc6e305864960bbdf788fd0120fb8ce81fdaae5
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6fc6e305864960bbdf788fd0120fb8ce81fdaae5
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=deed3c92266a5c09c7cba3e4d7a305134bce036b
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=deed3c92266a5c09c7cba3e4d7a305134bce036b
 
 
 images: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-6bf3aa0e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
530c530
<             memory: 4Gi
---
>             memory: 2Gi
814,818c814
<       # sometimes it hits  "useradd: cannot lock /etc/passwd; try again later" error, so need to repeat
<       for i in {10..1}; do
<         sudo useradd -m $USERNAME -p $(openssl rand -base64 12) && break
<         sleep 1
<       done
---
>       sudo useradd -m $USERNAME -p $(openssl rand -base64 12) 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6bf3aa0e to 58eeeda3 on Mon Sep 16 09:51:36 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 38f60e84..b5b2aa5d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6fc6e305864960bbdf788fd0120fb8ce81fdaae5
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6fc6e305864960bbdf788fd0120fb8ce81fdaae5
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=deed3c92266a5c09c7cba3e4d7a305134bce036b
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=deed3c92266a5c09c7cba3e4d7a305134bce036b
 
 
 images: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-6bf3aa0e/development/components/multi-platform-controller/development/kustomize.out.yaml
278c278
<             memory: 4Gi
---
>             memory: 2Gi
447,451c447
<       # sometimes it hits  "useradd: cannot lock /etc/passwd; try again later" error, so need to repeat
<       for i in {10..1}; do
<         sudo useradd -m $USERNAME -p $(openssl rand -base64 12) && break
<         sleep 1
<       done
---
>       sudo useradd -m $USERNAME -p $(openssl rand -base64 12) 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from ab022e28 to 6bf3aa0e on Mon Sep 16 09:08:19 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index b15d9d02..88ecb12a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-ab022e28/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
./commit-ab022e28/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92 
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
<h3>3: Staging changes from ab022e28 to 6bf3aa0e on Mon Sep 16 09:08:19 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index b15d9d02..88ecb12a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ab022e28/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from ab022e28 to 6bf3aa0e on Mon Sep 16 09:08:19 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index b15d9d02..88ecb12a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ab022e28/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0c3b720dcab2997b435faa0d3d86b11da033ac92
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0c3b720dcab2997b435faa0d3d86b11da033ac92
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0c3b720dcab2997b435faa0d3d86b11da033ac92 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 37f5bebe to ab022e28 on Fri Sep 13 11:38:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a7c9dbb..6170fa68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 5ca7e1f3..9bd6c54b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
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
<h3>4: Staging changes from 37f5bebe to ab022e28 on Fri Sep 13 11:38:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a7c9dbb..6170fa68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 5ca7e1f3..9bd6c54b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-37f5bebe/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>         image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>             image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 37f5bebe to ab022e28 on Fri Sep 13 11:38:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a7c9dbb..6170fa68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 5ca7e1f3..9bd6c54b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-37f5bebe/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>         image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>             image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52 
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
```
 
</details> 
<br> 


</div>
