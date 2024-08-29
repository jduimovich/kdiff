# kustomize changes tracked by commits 
### This file generated at Thu Aug 29 08:04:27 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 00b6f364 to 6392437d on Thu Aug 29 07:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (1000 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 1db56665..fcf203a7 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -551,22 +491,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -583,21 +507,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1399,69 +1308,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b1168be6..bdb30b62 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1285,69 +1194,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aae4fd24..5b35af46 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78acf8d8..790e8a46 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f326a39d..42f6ee8e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 00b6f364 to 6392437d on Thu Aug 29 07:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (1000 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 1db56665..fcf203a7 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -551,22 +491,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -583,21 +507,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1399,69 +1308,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b1168be6..bdb30b62 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1285,69 +1194,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aae4fd24..5b35af46 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78acf8d8..790e8a46 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f326a39d..42f6ee8e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (483 lines)</summary>  

``` 
./commit-00b6f364/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
661a722,737
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
676a753,767
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1571a1663,1725
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-00b6f364/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
661a722,737
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
676a753,767
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1571a1663,1725
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-00b6f364/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
661a722,737
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
676a753,767
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1571a1663,1725
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 00b6f364 to 6392437d on Thu Aug 29 07:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (1000 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 1db56665..fcf203a7 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -551,22 +491,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -583,21 +507,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1399,69 +1308,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b1168be6..bdb30b62 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1285,69 +1194,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aae4fd24..5b35af46 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78acf8d8..790e8a46 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f326a39d..42f6ee8e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (161 lines)</summary>  

``` 
./commit-00b6f364/development/components/pipeline-service/development/kustomize.out.yaml
34a35,42
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
174a183,213
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
224a264,284
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
693a754,769
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
724a801,815
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1551a1643,1705
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
<h3>2: Production changes from 902c28b5 to 00b6f364 on Thu Aug 29 02:57:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 4e4e324e..819954c7 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-902c28b5/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
./commit-902c28b5/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 902c28b5 to 00b6f364 on Thu Aug 29 02:57:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 4e4e324e..819954c7 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-902c28b5/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 902c28b5 to 00b6f364 on Thu Aug 29 02:57:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 4e4e324e..819954c7 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-902c28b5/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a 
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
<h3>3: Production changes from 63681f2c to 902c28b5 on Wed Aug 28 22:08:21 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 74c0a289..85baae96 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -8,3 +8,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   resourceTrackingMethod: annotation
+  rbac:
+    policy: |
+      g, system:cluster-admins, role:admin
+      g, system:authenticated, role:readonly
diff --git a/components/cluster-as-a-service/development/argocd-rbac.yaml b/components/cluster-as-a-service/development/argocd-rbac.yaml
new file mode 100644
index 00000000..9739d9ea
--- /dev/null
+++ b/components/cluster-as-a-service/development/argocd-rbac.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/rbac/policy
+  value: g, system:authenticated, role:admin
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 2d374f0d..d4c4d41a 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -9,3 +9,7 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       version: v1alpha1
+  - path: argocd-rbac.yaml
+    target:
+      group: argoproj.io
+      kind: ArgoCD 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-63681f2c/production/components/cluster-as-a-service/production/kustomize.out.yaml
248,251d247
<   rbac:
<     policy: |
<       g, system:cluster-admins, role:admin
<       g, system:authenticated, role:readonly 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 63681f2c to 902c28b5 on Wed Aug 28 22:08:21 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 74c0a289..85baae96 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -8,3 +8,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   resourceTrackingMethod: annotation
+  rbac:
+    policy: |
+      g, system:cluster-admins, role:admin
+      g, system:authenticated, role:readonly
diff --git a/components/cluster-as-a-service/development/argocd-rbac.yaml b/components/cluster-as-a-service/development/argocd-rbac.yaml
new file mode 100644
index 00000000..9739d9ea
--- /dev/null
+++ b/components/cluster-as-a-service/development/argocd-rbac.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/rbac/policy
+  value: g, system:authenticated, role:admin
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 2d374f0d..d4c4d41a 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -9,3 +9,7 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       version: v1alpha1
+  - path: argocd-rbac.yaml
+    target:
+      group: argoproj.io
+      kind: ArgoCD 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-63681f2c/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
248,251d247
<   rbac:
<     policy: |
<       g, system:cluster-admins, role:admin
<       g, system:authenticated, role:readonly 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 63681f2c to 902c28b5 on Wed Aug 28 22:08:21 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 74c0a289..85baae96 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -8,3 +8,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   resourceTrackingMethod: annotation
+  rbac:
+    policy: |
+      g, system:cluster-admins, role:admin
+      g, system:authenticated, role:readonly
diff --git a/components/cluster-as-a-service/development/argocd-rbac.yaml b/components/cluster-as-a-service/development/argocd-rbac.yaml
new file mode 100644
index 00000000..9739d9ea
--- /dev/null
+++ b/components/cluster-as-a-service/development/argocd-rbac.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/rbac/policy
+  value: g, system:authenticated, role:admin
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 2d374f0d..d4c4d41a 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -9,3 +9,7 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       version: v1alpha1
+  - path: argocd-rbac.yaml
+    target:
+      group: argoproj.io
+      kind: ArgoCD 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-63681f2c/development/components/cluster-as-a-service/development/kustomize.out.yaml
179,180d178
<   rbac:
<     policy: g, system:authenticated, role:admin 
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
<h3>4: Production changes from 949b4ac5 to 63681f2c on Wed Aug 28 21:29:49 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8deed9b9..3c90cdd6 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 61d7e75a..295e1467 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
+      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-949b4ac5/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
388c388
<   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
---
>   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 949b4ac5 to 63681f2c on Wed Aug 28 21:29:49 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8deed9b9..3c90cdd6 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 61d7e75a..295e1467 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
+      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-949b4ac5/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
388c388
<   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
---
>   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 949b4ac5 to 63681f2c on Wed Aug 28 21:29:49 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8deed9b9..3c90cdd6 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 61d7e75a..295e1467 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
+      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-949b4ac5/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
388c388
<   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
---
>   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361 
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
