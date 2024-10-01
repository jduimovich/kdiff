# kustomize changes tracked by commits 
### This file generated at Tue Oct  1 12:04:00 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 35bcf8c5 to 895d12be on Mon Sep 30 15:28:10 2024 </h3>  
 
<details> 
<summary>Git Diff (427 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
new file mode 100644
index 00000000..21792c07
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/kubearchive
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: kubearchive-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: kubearchive
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml
new file mode 100644
index 00000000..61a17b46
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- kubearchive.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index dde32258..8235b95c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
+  - kubearchive
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3a01cbf9..b381e4d0 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -174,3 +174,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: kubearchive
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index d9c1e73f..2e4593e4 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,3 +17,10 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index ccca8a68..4244637b 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -35,3 +35,10 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index e911b60d..13a1e3e4 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,4 +28,11 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
\ No newline at end of file
+$patch: delete
+---
+# There is not RDS database provisioned yet for internal staging, starting with external staging only
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/components/kubearchive/OWNERS b/components/kubearchive/OWNERS
new file mode 100644
index 00000000..d9ce3355
--- /dev/null
+++ b/components/kubearchive/OWNERS
@@ -0,0 +1,11 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- rh-hemartin
+- skoved
+- ggallen
+
+reviewers:
+- rh-hemartin
+- skoved
+- ggallen
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
new file mode 100644
index 00000000..1aad985d
--- /dev/null
+++ b/components/kubearchive/base/kustomization.yaml
@@ -0,0 +1,120 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- https://github.com/kubearchive/kubearchive/releases/download/v0.1.0/kubearchive.yaml?timeout=90
+- rbac.yaml
+namespace: kubearchive
+
+# These patches add an annotation so an OpenShift service
+# creates the TLS secrets instead of Cert Manager
+patches:
+- patch: |-
+    apiVersion: v1
+    kind: Service
+    metadata:
+      name: kubearchive-api-server
+      annotations:
+        service.beta.openshift.io/serving-cert-secret-name: kubearchive-api-server-tls
+
+- patch: |-
+    apiVersion: v1
+    kind: Service
+    metadata:
+      name: kubearchive-operator-webhooks
+      annotations:
+        service.beta.openshift.io/serving-cert-secret-name: kubearchive-operator-tls
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-api-server
+    spec:
+      template:
+        spec:
+          containers:
+            - name: kubearchive-api-server
+              resources:
+                requests:
+                  cpu: 50m
+                  memory: 50Mi
+                limits:
+                  cpu: 100m
+                  memory: 50Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-operator
+    spec:
+      template:
+        spec:
+          containers:
+            - name: manager
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+              ports:
+                - containerPort: 8081
+            - name: kube-rbac-proxy
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-sink
+    spec:
+      template:
+        spec:
+          containers:
+            - name: kubearchive-sink
+              resources:
+                requests:
+                  cpu: 50m
+                  memory: 50Mi
+                limits:
+                  cpu: 100m
+                  memory: 50Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+# Remove Certificates and Issuer
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-api-server-certificate"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-ca"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Issuer
+    metadata:
+      name: "kubearchive-ca"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Issuer
+    metadata:
+      name: "kubearchive"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-operator-certificate"
diff --git a/components/kubearchive/base/rbac.yaml b/components/kubearchive/base/rbac.yaml
new file mode 100644
index 00000000..c78f153e
--- /dev/null
+++ b/components/kubearchive/base/rbac.yaml
@@ -0,0 +1,14 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: kubearchive-maintainers
+  namespace: kubearchive
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-kubearchive
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
new file mode 100644
index 00000000..082abadb
--- /dev/null
+++ b/components/kubearchive/development/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- postgresql.yaml
+
+namespace: kubearchive
+
+secretGenerator:
+- behavior: merge
+  literals:
+  - POSTGRES_DB=kubearchive
+  - POSTGRES_USER=kubearchive
+  - POSTGRES_URL=postgresql.kubearchive.svc.cluster.local
+  - POSTGRES_PASSWORD=password  # notsecret
+  name: kubearchive-database-credentials
+  type: Opaque
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/kubearchive/development/postgresql.yaml b/components/kubearchive/development/postgresql.yaml
new file mode 100644
index 00000000..1f7bf847
--- /dev/null
+++ b/components/kubearchive/development/postgresql.yaml
@@ -0,0 +1,53 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: postgresql
+  annotations:
+    ignore-check.kube-linter.io/no-read-only-root-fs: "Postgres requires to write on root fs, ignoring this one as this is only used in development environment"
+  labels:
+    app: postgresql
+spec:
+  selector:
+    matchLabels:
+      app: postgresql
+  template:
+    metadata:
+      labels:
+        app: postgresql
+    spec:
+      containers:
+        - name: postgresql
+          image: bitnami/postgresql:16.4.0
+          ports:
+            - containerPort: 5432
+          resources:
+            requests:
+              cpu: 50m
+              memory: 100Mi
+            limits:
+              cpu: 100m
+              memory: 100Mi
+          env:
+            - name: POSTGRESQL_DATABASE
+              value: kubearchive
+            - name: POSTGRESQL_USERNAME
+              value: kubearchive
+            - name: POSTGRESQL_PASSWORD
+              value: password  # notsecret
+          securityContext:
+            readOnlyRootFilesystem: false
+            runAsNonRoot: true
+---
+apiVersion: v1
+kind: Service
+metadata:
+  name: postgresql
+  labels:
+    app: postgresql
+spec:
+  type: ClusterIP
+  ports:
+    - port: 5432
+  selector:
+    app: postgresql
diff --git a/components/kubearchive/staging/database-secret.yaml b/components/kubearchive/staging/database-secret.yaml
new file mode 100644
index 00000000..8ee5bcab
--- /dev/null
+++ b/components/kubearchive/staging/database-secret.yaml
@@ -0,0 +1,26 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: database-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: kubearchive-database-secret
+    template:
+      data:
+        POSTGRES_PORT: "5432"
+        POSTGRES_URL: "{{ .db.host }}"
+        POSTGRES_PASSWORD: "{{ .db.password }}"
+        POSTGRES_USER: "{{ .db.user }}"
+        POSTGRES_DATABASE: "{{ .db.name }}"
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
new file mode 100644
index 00000000..1d4c71ba
--- /dev/null
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - database-secret.yaml
+
+namespace: kubearchive
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 35bcf8c5 to 895d12be on Mon Sep 30 15:28:10 2024 </h3>  
 
<details> 
<summary>Git Diff (427 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
new file mode 100644
index 00000000..21792c07
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/kubearchive
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: kubearchive-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: kubearchive
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml
new file mode 100644
index 00000000..61a17b46
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- kubearchive.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index dde32258..8235b95c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
+  - kubearchive
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3a01cbf9..b381e4d0 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -174,3 +174,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: kubearchive
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index d9c1e73f..2e4593e4 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,3 +17,10 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index ccca8a68..4244637b 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -35,3 +35,10 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index e911b60d..13a1e3e4 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,4 +28,11 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
\ No newline at end of file
+$patch: delete
+---
+# There is not RDS database provisioned yet for internal staging, starting with external staging only
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/components/kubearchive/OWNERS b/components/kubearchive/OWNERS
new file mode 100644
index 00000000..d9ce3355
--- /dev/null
+++ b/components/kubearchive/OWNERS
@@ -0,0 +1,11 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- rh-hemartin
+- skoved
+- ggallen
+
+reviewers:
+- rh-hemartin
+- skoved
+- ggallen
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
new file mode 100644
index 00000000..1aad985d
--- /dev/null
+++ b/components/kubearchive/base/kustomization.yaml
@@ -0,0 +1,120 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- https://github.com/kubearchive/kubearchive/releases/download/v0.1.0/kubearchive.yaml?timeout=90
+- rbac.yaml
+namespace: kubearchive
+
+# These patches add an annotation so an OpenShift service
+# creates the TLS secrets instead of Cert Manager
+patches:
+- patch: |-
+    apiVersion: v1
+    kind: Service
+    metadata:
+      name: kubearchive-api-server
+      annotations:
+        service.beta.openshift.io/serving-cert-secret-name: kubearchive-api-server-tls
+
+- patch: |-
+    apiVersion: v1
+    kind: Service
+    metadata:
+      name: kubearchive-operator-webhooks
+      annotations:
+        service.beta.openshift.io/serving-cert-secret-name: kubearchive-operator-tls
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-api-server
+    spec:
+      template:
+        spec:
+          containers:
+            - name: kubearchive-api-server
+              resources:
+                requests:
+                  cpu: 50m
+                  memory: 50Mi
+                limits:
+                  cpu: 100m
+                  memory: 50Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-operator
+    spec:
+      template:
+        spec:
+          containers:
+            - name: manager
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+              ports:
+                - containerPort: 8081
+            - name: kube-rbac-proxy
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-sink
+    spec:
+      template:
+        spec:
+          containers:
+            - name: kubearchive-sink
+              resources:
+                requests:
+                  cpu: 50m
+                  memory: 50Mi
+                limits:
+                  cpu: 100m
+                  memory: 50Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+# Remove Certificates and Issuer
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-api-server-certificate"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-ca"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Issuer
+    metadata:
+      name: "kubearchive-ca"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Issuer
+    metadata:
+      name: "kubearchive"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-operator-certificate"
diff --git a/components/kubearchive/base/rbac.yaml b/components/kubearchive/base/rbac.yaml
new file mode 100644
index 00000000..c78f153e
--- /dev/null
+++ b/components/kubearchive/base/rbac.yaml
@@ -0,0 +1,14 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: kubearchive-maintainers
+  namespace: kubearchive
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-kubearchive
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
new file mode 100644
index 00000000..082abadb
--- /dev/null
+++ b/components/kubearchive/development/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- postgresql.yaml
+
+namespace: kubearchive
+
+secretGenerator:
+- behavior: merge
+  literals:
+  - POSTGRES_DB=kubearchive
+  - POSTGRES_USER=kubearchive
+  - POSTGRES_URL=postgresql.kubearchive.svc.cluster.local
+  - POSTGRES_PASSWORD=password  # notsecret
+  name: kubearchive-database-credentials
+  type: Opaque
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/kubearchive/development/postgresql.yaml b/components/kubearchive/development/postgresql.yaml
new file mode 100644
index 00000000..1f7bf847
--- /dev/null
+++ b/components/kubearchive/development/postgresql.yaml
@@ -0,0 +1,53 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: postgresql
+  annotations:
+    ignore-check.kube-linter.io/no-read-only-root-fs: "Postgres requires to write on root fs, ignoring this one as this is only used in development environment"
+  labels:
+    app: postgresql
+spec:
+  selector:
+    matchLabels:
+      app: postgresql
+  template:
+    metadata:
+      labels:
+        app: postgresql
+    spec:
+      containers:
+        - name: postgresql
+          image: bitnami/postgresql:16.4.0
+          ports:
+            - containerPort: 5432
+          resources:
+            requests:
+              cpu: 50m
+              memory: 100Mi
+            limits:
+              cpu: 100m
+              memory: 100Mi
+          env:
+            - name: POSTGRESQL_DATABASE
+              value: kubearchive
+            - name: POSTGRESQL_USERNAME
+              value: kubearchive
+            - name: POSTGRESQL_PASSWORD
+              value: password  # notsecret
+          securityContext:
+            readOnlyRootFilesystem: false
+            runAsNonRoot: true
+---
+apiVersion: v1
+kind: Service
+metadata:
+  name: postgresql
+  labels:
+    app: postgresql
+spec:
+  type: ClusterIP
+  ports:
+    - port: 5432
+  selector:
+    app: postgresql
diff --git a/components/kubearchive/staging/database-secret.yaml b/components/kubearchive/staging/database-secret.yaml
new file mode 100644
index 00000000..8ee5bcab
--- /dev/null
+++ b/components/kubearchive/staging/database-secret.yaml
@@ -0,0 +1,26 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: database-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: kubearchive-database-secret
+    template:
+      data:
+        POSTGRES_PORT: "5432"
+        POSTGRES_URL: "{{ .db.host }}"
+        POSTGRES_PASSWORD: "{{ .db.password }}"
+        POSTGRES_USER: "{{ .db.user }}"
+        POSTGRES_DATABASE: "{{ .db.name }}"
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
new file mode 100644
index 00000000..1d4c71ba
--- /dev/null
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - database-secret.yaml
+
+namespace: kubearchive
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-895d12be/staging/components: kubearchive 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 35bcf8c5 to 895d12be on Mon Sep 30 15:28:10 2024 </h3>  
 
<details> 
<summary>Git Diff (427 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
new file mode 100644
index 00000000..21792c07
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/kubearchive
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: kubearchive-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: kubearchive
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml
new file mode 100644
index 00000000..61a17b46
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kustomization.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- kubearchive.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index dde32258..8235b95c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
+  - kubearchive
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 3a01cbf9..b381e4d0 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -174,3 +174,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: kubearchive
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index d9c1e73f..2e4593e4 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,3 +17,10 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index ccca8a68..4244637b 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -35,3 +35,10 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index e911b60d..13a1e3e4 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,4 +28,11 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
\ No newline at end of file
+$patch: delete
+---
+# There is not RDS database provisioned yet for internal staging, starting with external staging only
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubearchive
+$patch: delete
diff --git a/components/kubearchive/OWNERS b/components/kubearchive/OWNERS
new file mode 100644
index 00000000..d9ce3355
--- /dev/null
+++ b/components/kubearchive/OWNERS
@@ -0,0 +1,11 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- rh-hemartin
+- skoved
+- ggallen
+
+reviewers:
+- rh-hemartin
+- skoved
+- ggallen
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
new file mode 100644
index 00000000..1aad985d
--- /dev/null
+++ b/components/kubearchive/base/kustomization.yaml
@@ -0,0 +1,120 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- https://github.com/kubearchive/kubearchive/releases/download/v0.1.0/kubearchive.yaml?timeout=90
+- rbac.yaml
+namespace: kubearchive
+
+# These patches add an annotation so an OpenShift service
+# creates the TLS secrets instead of Cert Manager
+patches:
+- patch: |-
+    apiVersion: v1
+    kind: Service
+    metadata:
+      name: kubearchive-api-server
+      annotations:
+        service.beta.openshift.io/serving-cert-secret-name: kubearchive-api-server-tls
+
+- patch: |-
+    apiVersion: v1
+    kind: Service
+    metadata:
+      name: kubearchive-operator-webhooks
+      annotations:
+        service.beta.openshift.io/serving-cert-secret-name: kubearchive-operator-tls
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-api-server
+    spec:
+      template:
+        spec:
+          containers:
+            - name: kubearchive-api-server
+              resources:
+                requests:
+                  cpu: 50m
+                  memory: 50Mi
+                limits:
+                  cpu: 100m
+                  memory: 50Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-operator
+    spec:
+      template:
+        spec:
+          containers:
+            - name: manager
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+              ports:
+                - containerPort: 8081
+            - name: kube-rbac-proxy
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: kubearchive-sink
+    spec:
+      template:
+        spec:
+          containers:
+            - name: kubearchive-sink
+              resources:
+                requests:
+                  cpu: 50m
+                  memory: 50Mi
+                limits:
+                  cpu: 100m
+                  memory: 50Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+
+# Remove Certificates and Issuer
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-api-server-certificate"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-ca"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Issuer
+    metadata:
+      name: "kubearchive-ca"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Issuer
+    metadata:
+      name: "kubearchive"
+- patch: |-
+    $patch: delete
+    apiVersion: cert-manager.io/v1
+    kind: Certificate
+    metadata:
+      name: "kubearchive-operator-certificate"
diff --git a/components/kubearchive/base/rbac.yaml b/components/kubearchive/base/rbac.yaml
new file mode 100644
index 00000000..c78f153e
--- /dev/null
+++ b/components/kubearchive/base/rbac.yaml
@@ -0,0 +1,14 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: kubearchive-maintainers
+  namespace: kubearchive
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-kubearchive
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
new file mode 100644
index 00000000..082abadb
--- /dev/null
+++ b/components/kubearchive/development/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- postgresql.yaml
+
+namespace: kubearchive
+
+secretGenerator:
+- behavior: merge
+  literals:
+  - POSTGRES_DB=kubearchive
+  - POSTGRES_USER=kubearchive
+  - POSTGRES_URL=postgresql.kubearchive.svc.cluster.local
+  - POSTGRES_PASSWORD=password  # notsecret
+  name: kubearchive-database-credentials
+  type: Opaque
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/kubearchive/development/postgresql.yaml b/components/kubearchive/development/postgresql.yaml
new file mode 100644
index 00000000..1f7bf847
--- /dev/null
+++ b/components/kubearchive/development/postgresql.yaml
@@ -0,0 +1,53 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: postgresql
+  annotations:
+    ignore-check.kube-linter.io/no-read-only-root-fs: "Postgres requires to write on root fs, ignoring this one as this is only used in development environment"
+  labels:
+    app: postgresql
+spec:
+  selector:
+    matchLabels:
+      app: postgresql
+  template:
+    metadata:
+      labels:
+        app: postgresql
+    spec:
+      containers:
+        - name: postgresql
+          image: bitnami/postgresql:16.4.0
+          ports:
+            - containerPort: 5432
+          resources:
+            requests:
+              cpu: 50m
+              memory: 100Mi
+            limits:
+              cpu: 100m
+              memory: 100Mi
+          env:
+            - name: POSTGRESQL_DATABASE
+              value: kubearchive
+            - name: POSTGRESQL_USERNAME
+              value: kubearchive
+            - name: POSTGRESQL_PASSWORD
+              value: password  # notsecret
+          securityContext:
+            readOnlyRootFilesystem: false
+            runAsNonRoot: true
+---
+apiVersion: v1
+kind: Service
+metadata:
+  name: postgresql
+  labels:
+    app: postgresql
+spec:
+  type: ClusterIP
+  ports:
+    - port: 5432
+  selector:
+    app: postgresql
diff --git a/components/kubearchive/staging/database-secret.yaml b/components/kubearchive/staging/database-secret.yaml
new file mode 100644
index 00000000..8ee5bcab
--- /dev/null
+++ b/components/kubearchive/staging/database-secret.yaml
@@ -0,0 +1,26 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: database-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/kube-archive-staging-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: kubearchive-database-secret
+    template:
+      data:
+        POSTGRES_PORT: "5432"
+        POSTGRES_URL: "{{ .db.host }}"
+        POSTGRES_PASSWORD: "{{ .db.password }}"
+        POSTGRES_USER: "{{ .db.user }}"
+        POSTGRES_DATABASE: "{{ .db.name }}"
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
new file mode 100644
index 00000000..1d4c71ba
--- /dev/null
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - database-secret.yaml
+
+namespace: kubearchive
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-35bcf8c5/development/app-of-apps-development.yaml
650,693d649
<   name: kubearchive
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/kubearchive
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: kubearchive-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: kubearchive
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-895d12be/development/components: kubearchive 
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
<h3>2: Production changes from fff384c9 to 35bcf8c5 on Mon Sep 30 14:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e7688d2..8b3b3466 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+  - https://github.com/konflux-ci/release-service/config/default?ref=cfbbbd458babb9d86ea24c2340db3278b6a06d80
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+    newTag: cfbbbd458babb9d86ea24c2340db3278b6a06d80
 
 namespace: release-service
  
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from fff384c9 to 35bcf8c5 on Mon Sep 30 14:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e7688d2..8b3b3466 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+  - https://github.com/konflux-ci/release-service/config/default?ref=cfbbbd458babb9d86ea24c2340db3278b6a06d80
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+    newTag: cfbbbd458babb9d86ea24c2340db3278b6a06d80
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (149 lines)</summary>  

``` 
./commit-fff384c9/staging/components/release/staging/kustomize.out.yaml
64,100d63
<               collectors:
<                 description: Collectors is a list of data collectors to be executed
<                   as part of the release process
<                 items:
<                   description: Collector represents a reference to a Collector to
<                     be executed as part of the release workflow.
<                   properties:
<                     name:
<                       description: Name of the collector
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                     params:
<                       description: Params is a slice of parameters for a given collector
<                       items:
<                         description: Param represents a parameter for a collector
<                         properties:
<                           name:
<                             description: Name is the name of the parameter
<                             type: string
<                           value:
<                             description: Value is the value of the parameter
<                             type: string
<                         required:
<                         - name
<                         - value
<                         type: object
<                       type: array
<                     type:
<                       description: Type is the type of collector to be used
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - name
<                   - params
<                   - type
<                   type: object
<                 type: array
180a144
>             - pipeline
336,372d299
<               collectors:
<                 description: Collectors is a list of data collectors to be executed
<                   as part of the release process
<                 items:
<                   description: Collector represents a reference to a Collector to
<                     be executed as part of the release workflow.
<                   properties:
<                     name:
<                       description: Name of the collector
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                     params:
<                       description: Params is a slice of parameters for a given collector
<                       items:
<                         description: Param represents a parameter for a collector
<                         properties:
<                           name:
<                             description: Name is the name of the parameter
<                             type: string
<                           value:
<                             description: Value is the value of the parameter
<                             type: string
<                         required:
<                         - name
<                         - value
<                         type: object
<                       type: array
<                     type:
<                       description: Type is the type of collector to be used
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - name
<                   - params
<                   - type
<                   type: object
<                 type: array
741,743c668,670
<               managedProcessing:
<                 description: ManagedProcessing contains information about the release
<                   managed processing
---
>               postActionsExecution:
>                 description: PostActionsExecution contains information about the post-actions
>                   execution
746,747c673,674
<                     description: CompletionTime is the time when the Release processing
<                       was completed
---
>                     description: CompletionTime is the time when the Release post-actions
>                       execution was completed
750,760d676
<                   pipelineRun:
<                     description: PipelineRun contains the namespaced name of the managed
<                       Release PipelineRun executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   roleBinding:
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,763c678,679
<                     description: StartTime is the time when the Release processing
<                       started
---
>                     description: StartTime is the time when the Release post-actions
>                       execution started
767,769c683,684
<               postActionsExecution:
<                 description: PostActionsExecution contains information about the post-actions
<                   execution
---
>               processing:
>                 description: Processing contains information about the release processing
802,827d716
<               tenantProcessing:
<                 description: TenantProcessing contains information about the release
<                   tenant processing
<                 properties:
<                   completionTime:
<                     description: CompletionTime is the time when the Release processing
<                       was completed
<                     format: date-time
<                     type: string
<                   pipelineRun:
<                     description: PipelineRun contains the namespaced name of the managed
<                       Release PipelineRun executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   roleBinding:
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   startTime:
<                     description: StartTime is the time when the Release processing
<                       started
<                     format: date-time
<                     type: string
<                 type: object
1980c1869
<         image: quay.io/konflux-ci/release-service:cfbbbd458babb9d86ea24c2340db3278b6a06d80
---
>         image: quay.io/konflux-ci/release-service:1072e7ad23bca36680a60504a2a2a3c0ae6d82e1 
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
<h3>2: Development changes from fff384c9 to 35bcf8c5 on Mon Sep 30 14:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e7688d2..8b3b3466 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+  - https://github.com/konflux-ci/release-service/config/default?ref=cfbbbd458babb9d86ea24c2340db3278b6a06d80
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+    newTag: cfbbbd458babb9d86ea24c2340db3278b6a06d80
 
 namespace: release-service
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 44a1c5a3 to fff384c9 on Mon Sep 30 13:56:35 2024 </h3>  
 
<details> 
<summary>Git Diff (346 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 54f9676c..547c4eb7 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -467,7 +467,7 @@ data:
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -475,3 +475,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index f2a3b73a..7f89c7a9 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -471,7 +471,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -479,4 +479,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
- 
\ No newline at end of file
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 03b56fcb..a83c6ead 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -318,7 +318,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-int-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -326,3 +326,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8adf6e99..3665f5ca 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -317,7 +317,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -325,3 +325,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//-- 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (150 lines)</summary>  

``` 
./commit-44a1c5a3/production/components/multi-platform-controller/production/kustomize.out.yaml
311c311
<   dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
---
>   dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
321,389d320
<   dynamic.linux-g6xlarge-amd64.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<       echo "File system exists on the disk."
<     else
<       echo "No file system found on the disk /dev/nvme1n1"
<       mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<       echo "Directory '/home/var-lib-containers' exist"
<     else
<       echo "Directory '/home/var-lib-containers' doesn't exist"
<       mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<       echo "Directory '/home/var-tmp' exist"
<     else
<       echo "Directory '/home/var-tmp' doesn't exist"
<       mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
<     chmod a+rw /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<       echo "ec2-user home exists"
<     else
<       echo "ec2-user home doesn't exist"
<       mkdir -p /home/ec2-user/.ssh
<       chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     mkdir -p /etc/cdi
<     chmod a+rwx /etc/cdi
<     su - ec2-user
<     nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
<     --//--
./commit-44a1c5a3/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
311c311
<   dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
---
>   dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
321,389d320
<   dynamic.linux-g6xlarge-amd64.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<       echo "File system exists on the disk."
<     else
<       echo "No file system found on the disk /dev/nvme1n1"
<       mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<       echo "Directory '/home/var-lib-containers' exist"
<     else
<       echo "Directory '/home/var-lib-containers' doesn't exist"
<       mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<       echo "Directory '/home/var-tmp' exist"
<     else
<       echo "Directory '/home/var-tmp' doesn't exist"
<       mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
<     chmod a+rw /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<       echo "ec2-user home exists"
<     else
<       echo "ec2-user home doesn't exist"
<       mkdir -p /home/ec2-user/.ssh
<       chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     mkdir -p /etc/cdi
<     chmod a+rwx /etc/cdi
<     su - ec2-user
<     nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
<     --//-- 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 44a1c5a3 to fff384c9 on Mon Sep 30 13:56:35 2024 </h3>  
 
<details> 
<summary>Git Diff (346 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 54f9676c..547c4eb7 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -467,7 +467,7 @@ data:
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -475,3 +475,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index f2a3b73a..7f89c7a9 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -471,7 +471,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -479,4 +479,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
- 
\ No newline at end of file
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 03b56fcb..a83c6ead 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -318,7 +318,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-int-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -326,3 +326,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8adf6e99..3665f5ca 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -317,7 +317,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -325,3 +325,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//-- 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (75 lines)</summary>  

``` 
./commit-44a1c5a3/staging/components/multi-platform-controller/staging/kustomize.out.yaml
289c289
<   dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
---
>   dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
299,367d298
<   dynamic.linux-g6xlarge-amd64.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<       echo "File system exists on the disk."
<     else
<       echo "No file system found on the disk /dev/nvme1n1"
<       mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<       echo "Directory '/home/var-lib-containers' exist"
<     else
<       echo "Directory '/home/var-lib-containers' doesn't exist"
<       mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<       echo "Directory '/home/var-tmp' exist"
<     else
<       echo "Directory '/home/var-tmp' doesn't exist"
<       mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
<     chmod a+rw /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<       echo "ec2-user home exists"
<     else
<       echo "ec2-user home doesn't exist"
<       mkdir -p /home/ec2-user/.ssh
<       chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     mkdir -p /etc/cdi
<     chmod a+rwx /etc/cdi
<     su - ec2-user
<     nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
<     --//-- 
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
<h3>3: Development changes from 44a1c5a3 to fff384c9 on Mon Sep 30 13:56:35 2024 </h3>  
 
<details> 
<summary>Git Diff (346 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 54f9676c..547c4eb7 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -467,7 +467,7 @@ data:
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -475,3 +475,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index f2a3b73a..7f89c7a9 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -471,7 +471,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -479,4 +479,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
- 
\ No newline at end of file
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 03b56fcb..a83c6ead 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -318,7 +318,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-int-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -326,3 +326,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8adf6e99..3665f5ca 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -317,7 +317,7 @@ data:
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
-  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
@@ -325,3 +325,72 @@ data:
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-g6xlarge-amd64.max-instances: "10"
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//-- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 317c8567 to 44a1c5a3 on Mon Sep 30 13:53:51 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
index 1d74af43..c1fe76c1 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
@@ -16,3 +16,16 @@ spec:
             kubernetes.io/metadata.name: rhtap-ui
   policyTypes:
     - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
index 1d74af43..c1fe76c1 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
@@ -16,3 +16,16 @@ spec:
             kubernetes.io/metadata.name: rhtap-ui
   policyTypes:
     - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 317c8567 to 44a1c5a3 on Mon Sep 30 13:53:51 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
index 1d74af43..c1fe76c1 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
@@ -16,3 +16,16 @@ spec:
             kubernetes.io/metadata.name: rhtap-ui
   policyTypes:
     - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
index 1d74af43..c1fe76c1 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
@@ -16,3 +16,16 @@ spec:
             kubernetes.io/metadata.name: rhtap-ui
   policyTypes:
     - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 317c8567 to 44a1c5a3 on Mon Sep 30 13:53:51 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
index 1d74af43..c1fe76c1 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/network-policy.yaml
@@ -16,3 +16,16 @@ spec:
             kubernetes.io/metadata.name: rhtap-ui
   policyTypes:
     - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
index 1d74af43..c1fe76c1 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
@@ -16,3 +16,16 @@ spec:
             kubernetes.io/metadata.name: rhtap-ui
   policyTypes:
     - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress 
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
```
 
</details> 
<br> 


</div>
