# kustomize changes tracked by commits 
### This file generated at Wed Aug  7 12:05:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1cbde440 to 1854c29a on Wed Aug 7 10:45:44 2024 </h3>  
 
<details> 
<summary>Git Diff (404 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 6dd56fc5..84491478 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - mintmaker
   - tracing-workload-otel-collector
   - tempo
+  - notification-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
new file mode 100644
index 00000000..0a91019a
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- notification-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
new file mode 100644
index 00000000..06b7ee7c
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/notification-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: notification-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: notification-controller
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index f54fe616..988def10 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index daa9bff4..5cd46bcf 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -180,3 +180,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tempo
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: notification-controller
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 77b46ac9..c13c2052 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -57,3 +57,5 @@ spec:
         - clusters
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
+        - notification-controller
+
diff --git a/components/notification-controller/OWNERS b/components/notification-controller/OWNERS
new file mode 100644
index 00000000..1e21e9d2
--- /dev/null
+++ b/components/notification-controller/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
diff --git a/components/notification-controller/README.md b/components/notification-controller/README.md
new file mode 100644
index 00000000..75a932ef
--- /dev/null
+++ b/components/notification-controller/README.md
@@ -0,0 +1,63 @@
+---
+title: Notification Controller
+---
+
+## Notification Controller
+
+This controller sends push pipelineruns results to [AWS SNS service](https://aws.amazon.com/sns/).
+It watches for `push pipelineruns`, extract the results from pipelineruns that ended successfully 
+and sends them to a topic defined in `AWS SNS`.
+
+Secrets and environment variables are needed to configure the `AWS SNS`
+
+## Notification Controller secrets
+
+| Name | Source | Description |
+| -- | -- | -- |
+| aws-sns-secret | appsre-stonesoup-vault | Secret containing `aws_access_key_id` and `aws_secret_access_key`
+
+in the format:  
+name: `credentials`  
+value: 
+```
+[default]
+aws_access_key_id=<AWS_ACCESS_KEY_ID>
+aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
+```
+
+This secret will be used to connect to our AWS account and it is mounted in the created pod
+
+## Environment Variables
+
+List of environment variables:
+
+| Name | Description |
+| -- | -- |
+| NOTIFICATION_REGION | define the AWS region to use
+| NOTIFICATION_TOPIC_ARN | the topic arn the messages will be sent to
+
+These environment variables will be used to define the `SNS topic` which the messages will be sent to 
+and the `region` of the AWS account.
+
+## Staging/Production deployment
+
+To deploy the `Notification-Controller` in Staging/Production environments we are using `ExternalSecret`
+defined in `vault` and mount it to the created pod.
+In addition we supply the `NOTIFICATION_REGION` and `NOTIFICATION_TOPIC_ARN` environment variables.
+
+## Development deployment  
+
+By default, the controller will not be deployed in development environment.
+However, deploying to development is possible by following these steps:
+
+1. Obtain credentails for AWS.
+2. Create SNS TOPIC and obtain its `region` and `topic arn`
+3. Update the `NOTIFICATION_TOPIC_ARN` and `NOTIFICATION_REGION` in 
+[development deployment patch](../notification-controller/development/topic_region_add.yaml) file
+with the values you obtained         
+4. Remove the `Notification-Controller` from the [delete-applications.yaml](../../argo-cd-apps/overlays/development/delete-applications.yaml) file
+5. Bootstrap the cluster
+6. Create a secret in `Notification-Controller` namespace with the AWS credentials you previously obtained, 
+following the structure defined in the [Notification Controller secrets](#notification-controller-secrets) 
+section.
+
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
new file mode 100644
index 00000000..652a0220
--- /dev/null
+++ b/components/notification-controller/base/deployment.yaml
@@ -0,0 +1,40 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    run: notification-controller
+  name: notification-controller
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      run: notification-controller
+  template:
+    metadata:
+      labels:
+        run: notification-controller
+    spec:
+      volumes:
+      - name: vol-secret
+        secret:
+          secretName: aws-sns-secret    
+      serviceAccountName: notification-controller-sa
+      containers:
+      - name: notification-controller
+        image: quay.io/konflux-ci/notification-service@sha256:1e50bc62fd1d325736ea189e0ff1b66639f26e1503ab9a67443f8ede20fb3167
+        volumeMounts:
+        - name: vol-secret
+          mountPath: /.aws
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi          
diff --git a/components/notification-controller/base/external-secrets/aws-sns-secret.yaml b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
new file mode 100644
index 00000000..746ce6e8
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-sns-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/monitoring/scanner/sns_secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-sns-secret
diff --git a/components/notification-controller/base/external-secrets/kustomization.yaml b/components/notification-controller/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..97ff7b95
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- aws-sns-secret.yaml
+namespace: notification-controller
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
new file mode 100644
index 00000000..490bd913
--- /dev/null
+++ b/components/notification-controller/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- service-account.yaml
+- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
new file mode 100644
index 00000000..f888b500
--- /dev/null
+++ b/components/notification-controller/base/namespace.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: notification-controller
+spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
new file mode 100644
index 00000000..0e0fca63
--- /dev/null
+++ b/components/notification-controller/base/service-account.yaml
@@ -0,0 +1,37 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: notification-controller-sa
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous  
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: notification-controller-pipelinerun-viewer
+rules:
+- apiGroups:
+  - "tekton.dev"
+  resources:
+  - 'pipelineruns'
+  verbs:
+  - get
+  - list
+  - watch
+  - update
+  - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: notification-controller-pipelinerun-viewer
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: notification-controller-pipelinerun-viewer
+subjects:
+- kind: ServiceAccount
+  name: notification-controller-sa
+  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
new file mode 100644
index 00000000..db4bc24d
--- /dev/null
+++ b/components/notification-controller/development/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
new file mode 100644
index 00000000..5207bfdf
--- /dev/null
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: <TOPIC_ARN>
+    - name: NOTIFICATION_REGION
+      value: <REGION>
\ No newline at end of file
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..f3f4ae62
--- /dev/null
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+- ../base/external-secrets
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
new file mode 100644
index 00000000..b2b1c711
--- /dev/null
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-1cbde440/production/components/cluster-secret-store/production/kustomize.out.yaml
40d39
<     - notification-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 1cbde440 to 1854c29a on Wed Aug 7 10:45:44 2024 </h3>  
 
<details> 
<summary>Git Diff (404 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 6dd56fc5..84491478 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - mintmaker
   - tracing-workload-otel-collector
   - tempo
+  - notification-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
new file mode 100644
index 00000000..0a91019a
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- notification-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
new file mode 100644
index 00000000..06b7ee7c
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/notification-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: notification-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: notification-controller
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index f54fe616..988def10 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index daa9bff4..5cd46bcf 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -180,3 +180,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tempo
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: notification-controller
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 77b46ac9..c13c2052 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -57,3 +57,5 @@ spec:
         - clusters
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
+        - notification-controller
+
diff --git a/components/notification-controller/OWNERS b/components/notification-controller/OWNERS
new file mode 100644
index 00000000..1e21e9d2
--- /dev/null
+++ b/components/notification-controller/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
diff --git a/components/notification-controller/README.md b/components/notification-controller/README.md
new file mode 100644
index 00000000..75a932ef
--- /dev/null
+++ b/components/notification-controller/README.md
@@ -0,0 +1,63 @@
+---
+title: Notification Controller
+---
+
+## Notification Controller
+
+This controller sends push pipelineruns results to [AWS SNS service](https://aws.amazon.com/sns/).
+It watches for `push pipelineruns`, extract the results from pipelineruns that ended successfully 
+and sends them to a topic defined in `AWS SNS`.
+
+Secrets and environment variables are needed to configure the `AWS SNS`
+
+## Notification Controller secrets
+
+| Name | Source | Description |
+| -- | -- | -- |
+| aws-sns-secret | appsre-stonesoup-vault | Secret containing `aws_access_key_id` and `aws_secret_access_key`
+
+in the format:  
+name: `credentials`  
+value: 
+```
+[default]
+aws_access_key_id=<AWS_ACCESS_KEY_ID>
+aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
+```
+
+This secret will be used to connect to our AWS account and it is mounted in the created pod
+
+## Environment Variables
+
+List of environment variables:
+
+| Name | Description |
+| -- | -- |
+| NOTIFICATION_REGION | define the AWS region to use
+| NOTIFICATION_TOPIC_ARN | the topic arn the messages will be sent to
+
+These environment variables will be used to define the `SNS topic` which the messages will be sent to 
+and the `region` of the AWS account.
+
+## Staging/Production deployment
+
+To deploy the `Notification-Controller` in Staging/Production environments we are using `ExternalSecret`
+defined in `vault` and mount it to the created pod.
+In addition we supply the `NOTIFICATION_REGION` and `NOTIFICATION_TOPIC_ARN` environment variables.
+
+## Development deployment  
+
+By default, the controller will not be deployed in development environment.
+However, deploying to development is possible by following these steps:
+
+1. Obtain credentails for AWS.
+2. Create SNS TOPIC and obtain its `region` and `topic arn`
+3. Update the `NOTIFICATION_TOPIC_ARN` and `NOTIFICATION_REGION` in 
+[development deployment patch](../notification-controller/development/topic_region_add.yaml) file
+with the values you obtained         
+4. Remove the `Notification-Controller` from the [delete-applications.yaml](../../argo-cd-apps/overlays/development/delete-applications.yaml) file
+5. Bootstrap the cluster
+6. Create a secret in `Notification-Controller` namespace with the AWS credentials you previously obtained, 
+following the structure defined in the [Notification Controller secrets](#notification-controller-secrets) 
+section.
+
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
new file mode 100644
index 00000000..652a0220
--- /dev/null
+++ b/components/notification-controller/base/deployment.yaml
@@ -0,0 +1,40 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    run: notification-controller
+  name: notification-controller
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      run: notification-controller
+  template:
+    metadata:
+      labels:
+        run: notification-controller
+    spec:
+      volumes:
+      - name: vol-secret
+        secret:
+          secretName: aws-sns-secret    
+      serviceAccountName: notification-controller-sa
+      containers:
+      - name: notification-controller
+        image: quay.io/konflux-ci/notification-service@sha256:1e50bc62fd1d325736ea189e0ff1b66639f26e1503ab9a67443f8ede20fb3167
+        volumeMounts:
+        - name: vol-secret
+          mountPath: /.aws
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi          
diff --git a/components/notification-controller/base/external-secrets/aws-sns-secret.yaml b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
new file mode 100644
index 00000000..746ce6e8
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-sns-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/monitoring/scanner/sns_secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-sns-secret
diff --git a/components/notification-controller/base/external-secrets/kustomization.yaml b/components/notification-controller/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..97ff7b95
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- aws-sns-secret.yaml
+namespace: notification-controller
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
new file mode 100644
index 00000000..490bd913
--- /dev/null
+++ b/components/notification-controller/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- service-account.yaml
+- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
new file mode 100644
index 00000000..f888b500
--- /dev/null
+++ b/components/notification-controller/base/namespace.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: notification-controller
+spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
new file mode 100644
index 00000000..0e0fca63
--- /dev/null
+++ b/components/notification-controller/base/service-account.yaml
@@ -0,0 +1,37 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: notification-controller-sa
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous  
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: notification-controller-pipelinerun-viewer
+rules:
+- apiGroups:
+  - "tekton.dev"
+  resources:
+  - 'pipelineruns'
+  verbs:
+  - get
+  - list
+  - watch
+  - update
+  - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: notification-controller-pipelinerun-viewer
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: notification-controller-pipelinerun-viewer
+subjects:
+- kind: ServiceAccount
+  name: notification-controller-sa
+  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
new file mode 100644
index 00000000..db4bc24d
--- /dev/null
+++ b/components/notification-controller/development/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
new file mode 100644
index 00000000..5207bfdf
--- /dev/null
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: <TOPIC_ARN>
+    - name: NOTIFICATION_REGION
+      value: <REGION>
\ No newline at end of file
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..f3f4ae62
--- /dev/null
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+- ../base/external-secrets
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
new file mode 100644
index 00000000..b2b1c711
--- /dev/null
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-1cbde440/staging/components/cluster-secret-store/staging/kustomize.out.yaml
40d39
<     - notification-controller
./commit-1854c29a/staging/components: notification-controller 
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
<h3>1: Development changes from 1cbde440 to 1854c29a on Wed Aug 7 10:45:44 2024 </h3>  
 
<details> 
<summary>Git Diff (404 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 6dd56fc5..84491478 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - mintmaker
   - tracing-workload-otel-collector
   - tempo
+  - notification-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
new file mode 100644
index 00000000..0a91019a
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- notification-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
new file mode 100644
index 00000000..06b7ee7c
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/notification-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: notification-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: notification-controller
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index f54fe616..988def10 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index daa9bff4..5cd46bcf 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -180,3 +180,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tempo
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: notification-controller
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 77b46ac9..c13c2052 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -57,3 +57,5 @@ spec:
         - clusters
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
+        - notification-controller
+
diff --git a/components/notification-controller/OWNERS b/components/notification-controller/OWNERS
new file mode 100644
index 00000000..1e21e9d2
--- /dev/null
+++ b/components/notification-controller/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
diff --git a/components/notification-controller/README.md b/components/notification-controller/README.md
new file mode 100644
index 00000000..75a932ef
--- /dev/null
+++ b/components/notification-controller/README.md
@@ -0,0 +1,63 @@
+---
+title: Notification Controller
+---
+
+## Notification Controller
+
+This controller sends push pipelineruns results to [AWS SNS service](https://aws.amazon.com/sns/).
+It watches for `push pipelineruns`, extract the results from pipelineruns that ended successfully 
+and sends them to a topic defined in `AWS SNS`.
+
+Secrets and environment variables are needed to configure the `AWS SNS`
+
+## Notification Controller secrets
+
+| Name | Source | Description |
+| -- | -- | -- |
+| aws-sns-secret | appsre-stonesoup-vault | Secret containing `aws_access_key_id` and `aws_secret_access_key`
+
+in the format:  
+name: `credentials`  
+value: 
+```
+[default]
+aws_access_key_id=<AWS_ACCESS_KEY_ID>
+aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
+```
+
+This secret will be used to connect to our AWS account and it is mounted in the created pod
+
+## Environment Variables
+
+List of environment variables:
+
+| Name | Description |
+| -- | -- |
+| NOTIFICATION_REGION | define the AWS region to use
+| NOTIFICATION_TOPIC_ARN | the topic arn the messages will be sent to
+
+These environment variables will be used to define the `SNS topic` which the messages will be sent to 
+and the `region` of the AWS account.
+
+## Staging/Production deployment
+
+To deploy the `Notification-Controller` in Staging/Production environments we are using `ExternalSecret`
+defined in `vault` and mount it to the created pod.
+In addition we supply the `NOTIFICATION_REGION` and `NOTIFICATION_TOPIC_ARN` environment variables.
+
+## Development deployment  
+
+By default, the controller will not be deployed in development environment.
+However, deploying to development is possible by following these steps:
+
+1. Obtain credentails for AWS.
+2. Create SNS TOPIC and obtain its `region` and `topic arn`
+3. Update the `NOTIFICATION_TOPIC_ARN` and `NOTIFICATION_REGION` in 
+[development deployment patch](../notification-controller/development/topic_region_add.yaml) file
+with the values you obtained         
+4. Remove the `Notification-Controller` from the [delete-applications.yaml](../../argo-cd-apps/overlays/development/delete-applications.yaml) file
+5. Bootstrap the cluster
+6. Create a secret in `Notification-Controller` namespace with the AWS credentials you previously obtained, 
+following the structure defined in the [Notification Controller secrets](#notification-controller-secrets) 
+section.
+
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
new file mode 100644
index 00000000..652a0220
--- /dev/null
+++ b/components/notification-controller/base/deployment.yaml
@@ -0,0 +1,40 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    run: notification-controller
+  name: notification-controller
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      run: notification-controller
+  template:
+    metadata:
+      labels:
+        run: notification-controller
+    spec:
+      volumes:
+      - name: vol-secret
+        secret:
+          secretName: aws-sns-secret    
+      serviceAccountName: notification-controller-sa
+      containers:
+      - name: notification-controller
+        image: quay.io/konflux-ci/notification-service@sha256:1e50bc62fd1d325736ea189e0ff1b66639f26e1503ab9a67443f8ede20fb3167
+        volumeMounts:
+        - name: vol-secret
+          mountPath: /.aws
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi          
diff --git a/components/notification-controller/base/external-secrets/aws-sns-secret.yaml b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
new file mode 100644
index 00000000..746ce6e8
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-sns-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/monitoring/scanner/sns_secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-sns-secret
diff --git a/components/notification-controller/base/external-secrets/kustomization.yaml b/components/notification-controller/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..97ff7b95
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- aws-sns-secret.yaml
+namespace: notification-controller
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
new file mode 100644
index 00000000..490bd913
--- /dev/null
+++ b/components/notification-controller/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- service-account.yaml
+- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
new file mode 100644
index 00000000..f888b500
--- /dev/null
+++ b/components/notification-controller/base/namespace.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: notification-controller
+spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
new file mode 100644
index 00000000..0e0fca63
--- /dev/null
+++ b/components/notification-controller/base/service-account.yaml
@@ -0,0 +1,37 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: notification-controller-sa
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous  
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: notification-controller-pipelinerun-viewer
+rules:
+- apiGroups:
+  - "tekton.dev"
+  resources:
+  - 'pipelineruns'
+  verbs:
+  - get
+  - list
+  - watch
+  - update
+  - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: notification-controller-pipelinerun-viewer
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: notification-controller-pipelinerun-viewer
+subjects:
+- kind: ServiceAccount
+  name: notification-controller-sa
+  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
new file mode 100644
index 00000000..db4bc24d
--- /dev/null
+++ b/components/notification-controller/development/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
new file mode 100644
index 00000000..5207bfdf
--- /dev/null
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: <TOPIC_ARN>
+    - name: NOTIFICATION_REGION
+      value: <REGION>
\ No newline at end of file
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..f3f4ae62
--- /dev/null
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+- ../base/external-secrets
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
new file mode 100644
index 00000000..b2b1c711
--- /dev/null
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1854c29a/development/components: notification-controller 
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
<h3>2: Production changes from c15a5eff to 1cbde440 on Tue Aug 6 16:02:38 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6a6691f0..c911dd68 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=d6e15edc4d67c9206b1a99c55201b196fd36a733
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index dca43c37..0022ca43 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=d6e15edc4d67c9206b1a99c55201b196fd36a733
+  - https://github.com/konflux-ci/release-service/config/default?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: d6e15edc4d67c9206b1a99c55201b196fd36a733
+    newTag: d951e5de1c61d24f61d3693307f01f4c6ba87100
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c15a5eff to 1cbde440 on Tue Aug 6 16:02:38 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6a6691f0..c911dd68 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=d6e15edc4d67c9206b1a99c55201b196fd36a733
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index dca43c37..0022ca43 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=d6e15edc4d67c9206b1a99c55201b196fd36a733
+  - https://github.com/konflux-ci/release-service/config/default?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: d6e15edc4d67c9206b1a99c55201b196fd36a733
+    newTag: d951e5de1c61d24f61d3693307f01f4c6ba87100
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c15a5eff to 1cbde440 on Tue Aug 6 16:02:38 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6a6691f0..c911dd68 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=d6e15edc4d67c9206b1a99c55201b196fd36a733
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index dca43c37..0022ca43 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=d6e15edc4d67c9206b1a99c55201b196fd36a733
+  - https://github.com/konflux-ci/release-service/config/default?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: d6e15edc4d67c9206b1a99c55201b196fd36a733
+    newTag: d951e5de1c61d24f61d3693307f01f4c6ba87100
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c15a5eff/development/components/release/development/kustomize.out.yaml
1861c1861
<         image: quay.io/konflux-ci/release-service:d951e5de1c61d24f61d3693307f01f4c6ba87100
---
>         image: quay.io/konflux-ci/release-service:d6e15edc4d67c9206b1a99c55201b196fd36a733 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from b22c3e3d to c15a5eff on Tue Aug 6 14:42:41 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index c3108c0c..8bffd78f 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.2
+        targetRevision: 0.0.3
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b22c3e3d/production/components/cluster-as-a-service/production/kustomize.out.yaml
234c234
<         targetRevision: 0.0.3
---
>         targetRevision: 0.0.2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from b22c3e3d to c15a5eff on Tue Aug 6 14:42:41 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index c3108c0c..8bffd78f 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.2
+        targetRevision: 0.0.3
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b22c3e3d/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
236c236
<         targetRevision: 0.0.3
---
>         targetRevision: 0.0.2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from b22c3e3d to c15a5eff on Tue Aug 6 14:42:41 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index c3108c0c..8bffd78f 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.2
+        targetRevision: 0.0.3
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b22c3e3d/development/components/cluster-as-a-service/development/kustomize.out.yaml
167c167
<         targetRevision: 0.0.3
---
>         targetRevision: 0.0.2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 634b7be2 to b22c3e3d on Tue Aug 6 13:42:13 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
deleted file mode 100644
index 4db7cf76..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - rh-managed-workspaces-config.yaml
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
deleted file mode 100644
index e4b9f956..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/managed/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: rh-managed-workspaces-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
diff --git a/argo-cd-apps/base/tenants-config/kustomization.yaml b/argo-cd-apps/base/tenants-config/kustomization.yaml
deleted file mode 100644
index b98cae12..00000000
--- a/argo-cd-apps/base/tenants-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - tenants-config.yaml
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
deleted file mode 100644
index 71915803..00000000
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ /dev/null
@@ -1,42 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/tenants/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: tenants-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
-      ignoreDifferences:
-        - group: appstudio.redhat.com
-          kind: Component
-          jsonPointers:
-            - /metadata/annotations/build.appstudio.openshift.io~1request
-            - /metadata/annotations/image.redhat.com~1image
-            - /metadata/annotations/image.redhat.com~1generate
-        - group: appstudio.redhat.com
-          kind: ImageRepository
-          jsonPointers:
-            - /metadata/annotations/image-controller.appstudio.redhat.com~1update-component-image
-        - group: appstudio.redhat.com
-          kind: ReleasePlan
-          jsonPointers:
-            - /metadata/labels/release.appstudio.openshift.io~1author
-            - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index cb0a3a09..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,17 +17,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-$patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 9d73892d..ad0eb82e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -7,9 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
-  - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
-  - ../../base/rh-managed-workspaces-config
   - ../../base/toolchain-member
 
 namespace: konflux-public-production 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 634b7be2 to b22c3e3d on Tue Aug 6 13:42:13 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
deleted file mode 100644
index 4db7cf76..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - rh-managed-workspaces-config.yaml
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
deleted file mode 100644
index e4b9f956..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/managed/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: rh-managed-workspaces-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
diff --git a/argo-cd-apps/base/tenants-config/kustomization.yaml b/argo-cd-apps/base/tenants-config/kustomization.yaml
deleted file mode 100644
index b98cae12..00000000
--- a/argo-cd-apps/base/tenants-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - tenants-config.yaml
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
deleted file mode 100644
index 71915803..00000000
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ /dev/null
@@ -1,42 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/tenants/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: tenants-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
-      ignoreDifferences:
-        - group: appstudio.redhat.com
-          kind: Component
-          jsonPointers:
-            - /metadata/annotations/build.appstudio.openshift.io~1request
-            - /metadata/annotations/image.redhat.com~1image
-            - /metadata/annotations/image.redhat.com~1generate
-        - group: appstudio.redhat.com
-          kind: ImageRepository
-          jsonPointers:
-            - /metadata/annotations/image-controller.appstudio.redhat.com~1update-component-image
-        - group: appstudio.redhat.com
-          kind: ReleasePlan
-          jsonPointers:
-            - /metadata/labels/release.appstudio.openshift.io~1author
-            - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index cb0a3a09..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,17 +17,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-$patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 9d73892d..ad0eb82e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -7,9 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
-  - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
-  - ../../base/rh-managed-workspaces-config
   - ../../base/toolchain-member
 
 namespace: konflux-public-production 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 634b7be2 to b22c3e3d on Tue Aug 6 13:42:13 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
deleted file mode 100644
index 4db7cf76..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - rh-managed-workspaces-config.yaml
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
deleted file mode 100644
index e4b9f956..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/managed/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: rh-managed-workspaces-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
diff --git a/argo-cd-apps/base/tenants-config/kustomization.yaml b/argo-cd-apps/base/tenants-config/kustomization.yaml
deleted file mode 100644
index b98cae12..00000000
--- a/argo-cd-apps/base/tenants-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - tenants-config.yaml
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
deleted file mode 100644
index 71915803..00000000
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ /dev/null
@@ -1,42 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/tenants/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: tenants-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
-      ignoreDifferences:
-        - group: appstudio.redhat.com
-          kind: Component
-          jsonPointers:
-            - /metadata/annotations/build.appstudio.openshift.io~1request
-            - /metadata/annotations/image.redhat.com~1image
-            - /metadata/annotations/image.redhat.com~1generate
-        - group: appstudio.redhat.com
-          kind: ImageRepository
-          jsonPointers:
-            - /metadata/annotations/image-controller.appstudio.redhat.com~1update-component-image
-        - group: appstudio.redhat.com
-          kind: ReleasePlan
-          jsonPointers:
-            - /metadata/labels/release.appstudio.openshift.io~1author
-            - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index cb0a3a09..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,17 +17,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-$patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 9d73892d..ad0eb82e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -7,9 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
-  - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
-  - ../../base/rh-managed-workspaces-config
   - ../../base/toolchain-member
 
 namespace: konflux-public-production 
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
```
 
</details> 
<br> 


</div>
