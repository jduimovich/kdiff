# kustomize changes tracked by commits 
### This file generated at Wed Nov 27 16:05:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f55f8633 to 897a0a62 on Wed Nov 27 15:00:51 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index a2f13975..b462da0b 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
+    newTag: aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 760c86f9..b8d9cefd 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/default?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
+  newTag: aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f55f8633 to 897a0a62 on Wed Nov 27 15:00:51 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index a2f13975..b462da0b 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
+    newTag: aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 760c86f9..b8d9cefd 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/default?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
+  newTag: aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-f55f8633/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
493d492
<         "pep723",
761,767d759
<       "pep723": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
<       },
906c898
<         image: quay.io/konflux-ci/mintmaker:aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
---
>         image: quay.io/konflux-ci/mintmaker:8162b25f78b3d03c129a6a780b457b1b400775ba 
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
<h3>1: Development changes from f55f8633 to 897a0a62 on Wed Nov 27 15:00:51 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index a2f13975..b462da0b 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
+    newTag: aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 760c86f9..b8d9cefd 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/default?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
+  newTag: aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-f55f8633/development/components/mintmaker/development/kustomize.out.yaml
493d492
<         "pep723",
761,767d759
<       "pep723": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
<       },
905c897
<         image: quay.io/konflux-ci/mintmaker:aa4bd5f2ccee6bfc8352b8e2631cfbe9a4230b37
---
>         image: quay.io/konflux-ci/mintmaker:8162b25f78b3d03c129a6a780b457b1b400775ba 
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
<h3>2: Production changes from 258a3d80 to f55f8633 on Wed Nov 27 13:45:22 2024 </h3>  
 
<details> 
<summary>Git Diff (1149 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 88a34ab6..aad91cf0 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -19,6 +19,16 @@ metadata:
   name: tekton-results
 ---
 apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
 kind: ServiceAccount
 metadata:
   annotations:
@@ -1836,6 +1846,227 @@ spec:
       - name: AUTOINSTALL_COMPONENTS
         value: "false"
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    path: charts/vector
+    repoURL: 'https://github.com/vectordotdev/helm-charts'
+    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
+    helm:
+      valueFiles:
+        - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
+allowHostDirVolumePlugin: true
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities: null
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+defaultAllowPrivilegeEscalation: false
+forbiddenSysctls:
+- '*'
+fsGroup:
+  type: RunAsAny
+groups: []
+kind: SecurityContextConstraints
+metadata:
+  name: logging-scc
+  namespace: tekton-logging
+priority: null
+readOnlyRootFilesystem: true
+requiredDropCapabilities:
+- CHOWN
+- DAC_OVERRIDE
+- FSETID
+- FOWNER
+- SETGID
+- SETUID
+- SETPCAP
+- NET_BIND_SERVICE
+- KILL
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: RunAsAny
+seccompProfiles:
+- runtime/default
+supplementalGroups:
+  type: RunAsAny
+users:
+- system:serviceaccount:tekton-logging:vectors-tekton-logs-collector
+volumes:
+- configMap
+- emptyDir
+- hostPath
+- projected
+- secret
+---
 apiVersion: route.openshift.io/v1
 kind: Route
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 72cfe7db..422e789d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -17,6 +17,16 @@ metadata:
 ---
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1854,6 +1864,152 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    helm:
+      valueFiles:
+      - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+    path: charts/vector
+    repoURL: https://github.com/vectordotdev/helm-charts
+    targetRevision: 08506fdc01c7cc3fcf2dd83102add7b44980ee23
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1927,6 +2083,34 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -2347,177 +2531,31 @@ spec:
   source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
+apiVersion: route.openshift.io/v1
+kind: Route
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: s3-conf
-  namespace: tekton-logging
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: argoproj.io/v1alpha1
-kind: Application
-metadata:
-  name: vectors-tekton-logs-collector
-  namespace: openshift-gitops
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
 spec:
-  destination:
-    namespace: tekton-logging
-    server: https://kubernetes.default.svc
-  project: default
-  source:
-    path: charts/vector
-    repoURL: 'https://github.com/vectordotdev/helm-charts'
-    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
-    helm:
-      valueFiles:
-        - values.yaml
-      values: |-
-        role: Agent
-        customConfig:
-          data_dir: /vector-data-dir
-          api:
-            enabled: true
-            address: 127.0.0.1:8686
-            playground: false
-          sources:
-            kubernetes_logs:
-              type: kubernetes_logs
-              rotate_wait_secs: 5
-              glob_minimum_cooldown_ms: 15000
-              auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
-            internal_metrics:
-              type: internal_metrics
-          transforms:
-            remap_app_logs:
-              type: remap
-              inputs: [kubernetes_logs]
-              source: |-
-                .log_type = "application"
-                .kubernetes_namespace_name = .kubernetes.pod_namespace
-                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
-                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
-                    } else {
-                      .taskRunUID = "none"
-                      }
-                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
-                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
-                    .result = .pipelineRunUID
-                    } else {
-                       .result = .taskRunUID
-                    }
-                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
-                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
-                    } else {
-                      .task = "none"
-                    }
-                    if exists(.kubernetes.pod_namespace) {
-                      .namespace = del(.kubernetes.pod_namespace)
-                    } else {
-                      .namespace = "unlabeled"
-                    }
-                    .pod = .kubernetes.pod_name
-                    .container = .kubernetes.container_name
-          sinks:
-            aws_s3:
-              type: "aws_s3"
-              bucket: ${BUCKET}
-              buffer:
-                type: "disk"
-                max_size: 1073741824
-              inputs: ["remap_app_logs"]
-              compression: "none"
-              endpoint: ${ENDPOINT}
-              encoding:
-                codec: "text"
-              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
-              filename_time_format: ""
-              filename_append_uuid: false
-        env:
-          - name: AWS_ACCESS_KEY_ID
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_access_key_id
-          - name: AWS_SECRET_ACCESS_KEY
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_secret_access_key
-          - name: AWS_DEFAULT_REGION
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_region
-          - name: BUCKET
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: bucket
-          - name: ENDPOINT
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: endpoint
-        tolerations:
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/infra
-            operator: Exists
-          securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - CHOWN
-            - DAC_OVERRIDE
-            - FOWNER
-            - FSETID
-            - KILL
-            - NET_BIND_SERVICE
-            - SETGID
-            - SETPCAP
-            - SETUID
-          readOnlyRootFilesystem: true
-          seLinuxOptions:
-            type: spc_t
-          seccompProfile:
-            type: RuntimeDefault
-  syncPolicy:
-    automated:
-      prune: true
-      selfHeal: true
-    retry:
-      backoff:
-        duration: 10s
-        factor: 2
-        maxDuration: 3m
-      limit: -1
-    syncOptions:
-    - CreateNamespace=true
-    - Validate=false
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
 ---
 allowHostDirVolumePlugin: true
 allowHostIPC: false
@@ -2537,6 +2575,8 @@ fsGroup:
 groups: []
 kind: SecurityContextConstraints
 metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
   name: logging-scc
   namespace: tekton-logging
 priority: null
@@ -2568,32 +2608,6 @@ volumes:
 - projected
 - secret
 ---
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
 allowHostDirVolumePlugin: false
 allowHostIPC: false
 allowHostNetwork: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 3be83ff8..57bb0ebe 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -17,6 +17,16 @@ metadata:
 ---
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1854,6 +1864,152 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    helm:
+      valueFiles:
+      - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+    path: charts/vector
+    repoURL: https://github.com/vectordotdev/helm-charts
+    targetRevision: 08506fdc01c7cc3fcf2dd83102add7b44980ee23
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1927,6 +2083,34 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -2346,177 +2530,31 @@ spec:
   source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
+apiVersion: route.openshift.io/v1
+kind: Route
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: s3-conf
-  namespace: tekton-logging
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: argoproj.io/v1alpha1
-kind: Application
-metadata:
-  name: vectors-tekton-logs-collector
-  namespace: openshift-gitops
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
 spec:
-  destination:
-    namespace: tekton-logging
-    server: https://kubernetes.default.svc
-  project: default
-  source:
-    path: charts/vector
-    repoURL: 'https://github.com/vectordotdev/helm-charts'
-    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
-    helm:
-      valueFiles:
-        - values.yaml
-      values: |-
-        role: Agent
-        customConfig:
-          data_dir: /vector-data-dir
-          api:
-            enabled: true
-            address: 127.0.0.1:8686
-            playground: false
-          sources:
-            kubernetes_logs:
-              type: kubernetes_logs
-              rotate_wait_secs: 5
-              glob_minimum_cooldown_ms: 15000
-              auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
-            internal_metrics:
-              type: internal_metrics
-          transforms:
-            remap_app_logs:
-              type: remap
-              inputs: [kubernetes_logs]
-              source: |-
-                .log_type = "application"
-                .kubernetes_namespace_name = .kubernetes.pod_namespace
-                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
-                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
-                    } else {
-                      .taskRunUID = "none"
-                      }
-                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
-                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
-                    .result = .pipelineRunUID
-                    } else {
-                       .result = .taskRunUID
-                    }
-                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
-                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
-                    } else {
-                      .task = "none"
-                    }
-                    if exists(.kubernetes.pod_namespace) {
-                      .namespace = del(.kubernetes.pod_namespace)
-                    } else {
-                      .namespace = "unlabeled"
-                    }
-                    .pod = .kubernetes.pod_name
-                    .container = .kubernetes.container_name
-          sinks:
-            aws_s3:
-              type: "aws_s3"
-              bucket: ${BUCKET}
-              buffer:
-                type: "disk"
-                max_size: 1073741824
-              inputs: ["remap_app_logs"]
-              compression: "none"
-              endpoint: ${ENDPOINT}
-              encoding:
-                codec: "text"
-              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
-              filename_time_format: ""
-              filename_append_uuid: false
-        env:
-          - name: AWS_ACCESS_KEY_ID
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_access_key_id
-          - name: AWS_SECRET_ACCESS_KEY
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_secret_access_key
-          - name: AWS_DEFAULT_REGION
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_region
-          - name: BUCKET
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: bucket
-          - name: ENDPOINT
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: endpoint
-        tolerations:
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/infra
-            operator: Exists
-          securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - CHOWN
-            - DAC_OVERRIDE
-            - FOWNER
-            - FSETID
-            - KILL
-            - NET_BIND_SERVICE
-            - SETGID
-            - SETPCAP
-            - SETUID
-          readOnlyRootFilesystem: true
-          seLinuxOptions:
-            type: spc_t
-          seccompProfile:
-            type: RuntimeDefault
-  syncPolicy:
-    automated:
-      prune: true
-      selfHeal: true
-    retry:
-      backoff:
-        duration: 10s
-        factor: 2
-        maxDuration: 3m
-      limit: -1
-    syncOptions:
-    - CreateNamespace=true
-    - Validate=false
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
 ---
 allowHostDirVolumePlugin: true
 allowHostIPC: false
@@ -2536,6 +2574,8 @@ fsGroup:
 groups: []
 kind: SecurityContextConstraints
 metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
   name: logging-scc
   namespace: tekton-logging
 priority: null
@@ -2567,32 +2607,6 @@ volumes:
 - projected
 - secret
 ---
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
 allowHostDirVolumePlugin: false
 allowHostIPC: false
 allowHostNetwork: false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 258a3d80 to f55f8633 on Wed Nov 27 13:45:22 2024 </h3>  
 
<details> 
<summary>Git Diff (1149 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 88a34ab6..aad91cf0 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -19,6 +19,16 @@ metadata:
   name: tekton-results
 ---
 apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
 kind: ServiceAccount
 metadata:
   annotations:
@@ -1836,6 +1846,227 @@ spec:
       - name: AUTOINSTALL_COMPONENTS
         value: "false"
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    path: charts/vector
+    repoURL: 'https://github.com/vectordotdev/helm-charts'
+    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
+    helm:
+      valueFiles:
+        - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
+allowHostDirVolumePlugin: true
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities: null
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+defaultAllowPrivilegeEscalation: false
+forbiddenSysctls:
+- '*'
+fsGroup:
+  type: RunAsAny
+groups: []
+kind: SecurityContextConstraints
+metadata:
+  name: logging-scc
+  namespace: tekton-logging
+priority: null
+readOnlyRootFilesystem: true
+requiredDropCapabilities:
+- CHOWN
+- DAC_OVERRIDE
+- FSETID
+- FOWNER
+- SETGID
+- SETUID
+- SETPCAP
+- NET_BIND_SERVICE
+- KILL
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: RunAsAny
+seccompProfiles:
+- runtime/default
+supplementalGroups:
+  type: RunAsAny
+users:
+- system:serviceaccount:tekton-logging:vectors-tekton-logs-collector
+volumes:
+- configMap
+- emptyDir
+- hostPath
+- projected
+- secret
+---
 apiVersion: route.openshift.io/v1
 kind: Route
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 72cfe7db..422e789d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -17,6 +17,16 @@ metadata:
 ---
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1854,6 +1864,152 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    helm:
+      valueFiles:
+      - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+    path: charts/vector
+    repoURL: https://github.com/vectordotdev/helm-charts
+    targetRevision: 08506fdc01c7cc3fcf2dd83102add7b44980ee23
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1927,6 +2083,34 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -2347,177 +2531,31 @@ spec:
   source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
+apiVersion: route.openshift.io/v1
+kind: Route
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: s3-conf
-  namespace: tekton-logging
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: argoproj.io/v1alpha1
-kind: Application
-metadata:
-  name: vectors-tekton-logs-collector
-  namespace: openshift-gitops
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
 spec:
-  destination:
-    namespace: tekton-logging
-    server: https://kubernetes.default.svc
-  project: default
-  source:
-    path: charts/vector
-    repoURL: 'https://github.com/vectordotdev/helm-charts'
-    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
-    helm:
-      valueFiles:
-        - values.yaml
-      values: |-
-        role: Agent
-        customConfig:
-          data_dir: /vector-data-dir
-          api:
-            enabled: true
-            address: 127.0.0.1:8686
-            playground: false
-          sources:
-            kubernetes_logs:
-              type: kubernetes_logs
-              rotate_wait_secs: 5
-              glob_minimum_cooldown_ms: 15000
-              auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
-            internal_metrics:
-              type: internal_metrics
-          transforms:
-            remap_app_logs:
-              type: remap
-              inputs: [kubernetes_logs]
-              source: |-
-                .log_type = "application"
-                .kubernetes_namespace_name = .kubernetes.pod_namespace
-                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
-                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
-                    } else {
-                      .taskRunUID = "none"
-                      }
-                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
-                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
-                    .result = .pipelineRunUID
-                    } else {
-                       .result = .taskRunUID
-                    }
-                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
-                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
-                    } else {
-                      .task = "none"
-                    }
-                    if exists(.kubernetes.pod_namespace) {
-                      .namespace = del(.kubernetes.pod_namespace)
-                    } else {
-                      .namespace = "unlabeled"
-                    }
-                    .pod = .kubernetes.pod_name
-                    .container = .kubernetes.container_name
-          sinks:
-            aws_s3:
-              type: "aws_s3"
-              bucket: ${BUCKET}
-              buffer:
-                type: "disk"
-                max_size: 1073741824
-              inputs: ["remap_app_logs"]
-              compression: "none"
-              endpoint: ${ENDPOINT}
-              encoding:
-                codec: "text"
-              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
-              filename_time_format: ""
-              filename_append_uuid: false
-        env:
-          - name: AWS_ACCESS_KEY_ID
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_access_key_id
-          - name: AWS_SECRET_ACCESS_KEY
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_secret_access_key
-          - name: AWS_DEFAULT_REGION
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_region
-          - name: BUCKET
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: bucket
-          - name: ENDPOINT
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: endpoint
-        tolerations:
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/infra
-            operator: Exists
-          securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - CHOWN
-            - DAC_OVERRIDE
-            - FOWNER
-            - FSETID
-            - KILL
-            - NET_BIND_SERVICE
-            - SETGID
-            - SETPCAP
-            - SETUID
-          readOnlyRootFilesystem: true
-          seLinuxOptions:
-            type: spc_t
-          seccompProfile:
-            type: RuntimeDefault
-  syncPolicy:
-    automated:
-      prune: true
-      selfHeal: true
-    retry:
-      backoff:
-        duration: 10s
-        factor: 2
-        maxDuration: 3m
-      limit: -1
-    syncOptions:
-    - CreateNamespace=true
-    - Validate=false
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
 ---
 allowHostDirVolumePlugin: true
 allowHostIPC: false
@@ -2537,6 +2575,8 @@ fsGroup:
 groups: []
 kind: SecurityContextConstraints
 metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
   name: logging-scc
   namespace: tekton-logging
 priority: null
@@ -2568,32 +2608,6 @@ volumes:
 - projected
 - secret
 ---
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
 allowHostDirVolumePlugin: false
 allowHostIPC: false
 allowHostNetwork: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 3be83ff8..57bb0ebe 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -17,6 +17,16 @@ metadata:
 ---
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1854,6 +1864,152 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    helm:
+      valueFiles:
+      - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+    path: charts/vector
+    repoURL: https://github.com/vectordotdev/helm-charts
+    targetRevision: 08506fdc01c7cc3fcf2dd83102add7b44980ee23
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1927,6 +2083,34 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -2346,177 +2530,31 @@ spec:
   source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
+apiVersion: route.openshift.io/v1
+kind: Route
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: s3-conf
-  namespace: tekton-logging
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: argoproj.io/v1alpha1
-kind: Application
-metadata:
-  name: vectors-tekton-logs-collector
-  namespace: openshift-gitops
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
 spec:
-  destination:
-    namespace: tekton-logging
-    server: https://kubernetes.default.svc
-  project: default
-  source:
-    path: charts/vector
-    repoURL: 'https://github.com/vectordotdev/helm-charts'
-    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
-    helm:
-      valueFiles:
-        - values.yaml
-      values: |-
-        role: Agent
-        customConfig:
-          data_dir: /vector-data-dir
-          api:
-            enabled: true
-            address: 127.0.0.1:8686
-            playground: false
-          sources:
-            kubernetes_logs:
-              type: kubernetes_logs
-              rotate_wait_secs: 5
-              glob_minimum_cooldown_ms: 15000
-              auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
-            internal_metrics:
-              type: internal_metrics
-          transforms:
-            remap_app_logs:
-              type: remap
-              inputs: [kubernetes_logs]
-              source: |-
-                .log_type = "application"
-                .kubernetes_namespace_name = .kubernetes.pod_namespace
-                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
-                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
-                    } else {
-                      .taskRunUID = "none"
-                      }
-                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
-                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
-                    .result = .pipelineRunUID
-                    } else {
-                       .result = .taskRunUID
-                    }
-                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
-                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
-                    } else {
-                      .task = "none"
-                    }
-                    if exists(.kubernetes.pod_namespace) {
-                      .namespace = del(.kubernetes.pod_namespace)
-                    } else {
-                      .namespace = "unlabeled"
-                    }
-                    .pod = .kubernetes.pod_name
-                    .container = .kubernetes.container_name
-          sinks:
-            aws_s3:
-              type: "aws_s3"
-              bucket: ${BUCKET}
-              buffer:
-                type: "disk"
-                max_size: 1073741824
-              inputs: ["remap_app_logs"]
-              compression: "none"
-              endpoint: ${ENDPOINT}
-              encoding:
-                codec: "text"
-              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
-              filename_time_format: ""
-              filename_append_uuid: false
-        env:
-          - name: AWS_ACCESS_KEY_ID
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_access_key_id
-          - name: AWS_SECRET_ACCESS_KEY
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_secret_access_key
-          - name: AWS_DEFAULT_REGION
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_region
-          - name: BUCKET
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: bucket
-          - name: ENDPOINT
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: endpoint
-        tolerations:
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/infra
-            operator: Exists
-          securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - CHOWN
-            - DAC_OVERRIDE
-            - FOWNER
-            - FSETID
-            - KILL
-            - NET_BIND_SERVICE
-            - SETGID
-            - SETPCAP
-            - SETUID
-          readOnlyRootFilesystem: true
-          seLinuxOptions:
-            type: spc_t
-          seccompProfile:
-            type: RuntimeDefault
-  syncPolicy:
-    automated:
-      prune: true
-      selfHeal: true
-    retry:
-      backoff:
-        duration: 10s
-        factor: 2
-        maxDuration: 3m
-      limit: -1
-    syncOptions:
-    - CreateNamespace=true
-    - Validate=false
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
 ---
 allowHostDirVolumePlugin: true
 allowHostIPC: false
@@ -2536,6 +2574,8 @@ fsGroup:
 groups: []
 kind: SecurityContextConstraints
 metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
   name: logging-scc
   namespace: tekton-logging
 priority: null
@@ -2567,32 +2607,6 @@ volumes:
 - projected
 - secret
 ---
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
 allowHostDirVolumePlugin: false
 allowHostIPC: false
 allowHostNetwork: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-258a3d80/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
26,35d25
<   name: tekton-logging
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
1866,1867d1855
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2006c1994
<     - CreateNamespace=false
---
>     - CreateNamespace=true
2574,2575d2561
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-258a3d80/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
26,35d25
<   name: tekton-logging
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
1866,1867d1855
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2006c1994
<     - CreateNamespace=false
---
>     - CreateNamespace=true
2573,2574d2560
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>2: Development changes from 258a3d80 to f55f8633 on Wed Nov 27 13:45:22 2024 </h3>  
 
<details> 
<summary>Git Diff (1149 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 88a34ab6..aad91cf0 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -19,6 +19,16 @@ metadata:
   name: tekton-results
 ---
 apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
 kind: ServiceAccount
 metadata:
   annotations:
@@ -1836,6 +1846,227 @@ spec:
       - name: AUTOINSTALL_COMPONENTS
         value: "false"
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    path: charts/vector
+    repoURL: 'https://github.com/vectordotdev/helm-charts'
+    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
+    helm:
+      valueFiles:
+        - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
+allowHostDirVolumePlugin: true
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities: null
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+defaultAllowPrivilegeEscalation: false
+forbiddenSysctls:
+- '*'
+fsGroup:
+  type: RunAsAny
+groups: []
+kind: SecurityContextConstraints
+metadata:
+  name: logging-scc
+  namespace: tekton-logging
+priority: null
+readOnlyRootFilesystem: true
+requiredDropCapabilities:
+- CHOWN
+- DAC_OVERRIDE
+- FSETID
+- FOWNER
+- SETGID
+- SETUID
+- SETPCAP
+- NET_BIND_SERVICE
+- KILL
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: RunAsAny
+seccompProfiles:
+- runtime/default
+supplementalGroups:
+  type: RunAsAny
+users:
+- system:serviceaccount:tekton-logging:vectors-tekton-logs-collector
+volumes:
+- configMap
+- emptyDir
+- hostPath
+- projected
+- secret
+---
 apiVersion: route.openshift.io/v1
 kind: Route
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 72cfe7db..422e789d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -17,6 +17,16 @@ metadata:
 ---
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1854,6 +1864,152 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    helm:
+      valueFiles:
+      - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+    path: charts/vector
+    repoURL: https://github.com/vectordotdev/helm-charts
+    targetRevision: 08506fdc01c7cc3fcf2dd83102add7b44980ee23
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1927,6 +2083,34 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -2347,177 +2531,31 @@ spec:
   source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
+apiVersion: route.openshift.io/v1
+kind: Route
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: s3-conf
-  namespace: tekton-logging
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: argoproj.io/v1alpha1
-kind: Application
-metadata:
-  name: vectors-tekton-logs-collector
-  namespace: openshift-gitops
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
 spec:
-  destination:
-    namespace: tekton-logging
-    server: https://kubernetes.default.svc
-  project: default
-  source:
-    path: charts/vector
-    repoURL: 'https://github.com/vectordotdev/helm-charts'
-    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
-    helm:
-      valueFiles:
-        - values.yaml
-      values: |-
-        role: Agent
-        customConfig:
-          data_dir: /vector-data-dir
-          api:
-            enabled: true
-            address: 127.0.0.1:8686
-            playground: false
-          sources:
-            kubernetes_logs:
-              type: kubernetes_logs
-              rotate_wait_secs: 5
-              glob_minimum_cooldown_ms: 15000
-              auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
-            internal_metrics:
-              type: internal_metrics
-          transforms:
-            remap_app_logs:
-              type: remap
-              inputs: [kubernetes_logs]
-              source: |-
-                .log_type = "application"
-                .kubernetes_namespace_name = .kubernetes.pod_namespace
-                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
-                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
-                    } else {
-                      .taskRunUID = "none"
-                      }
-                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
-                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
-                    .result = .pipelineRunUID
-                    } else {
-                       .result = .taskRunUID
-                    }
-                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
-                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
-                    } else {
-                      .task = "none"
-                    }
-                    if exists(.kubernetes.pod_namespace) {
-                      .namespace = del(.kubernetes.pod_namespace)
-                    } else {
-                      .namespace = "unlabeled"
-                    }
-                    .pod = .kubernetes.pod_name
-                    .container = .kubernetes.container_name
-          sinks:
-            aws_s3:
-              type: "aws_s3"
-              bucket: ${BUCKET}
-              buffer:
-                type: "disk"
-                max_size: 1073741824
-              inputs: ["remap_app_logs"]
-              compression: "none"
-              endpoint: ${ENDPOINT}
-              encoding:
-                codec: "text"
-              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
-              filename_time_format: ""
-              filename_append_uuid: false
-        env:
-          - name: AWS_ACCESS_KEY_ID
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_access_key_id
-          - name: AWS_SECRET_ACCESS_KEY
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_secret_access_key
-          - name: AWS_DEFAULT_REGION
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_region
-          - name: BUCKET
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: bucket
-          - name: ENDPOINT
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: endpoint
-        tolerations:
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/infra
-            operator: Exists
-          securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - CHOWN
-            - DAC_OVERRIDE
-            - FOWNER
-            - FSETID
-            - KILL
-            - NET_BIND_SERVICE
-            - SETGID
-            - SETPCAP
-            - SETUID
-          readOnlyRootFilesystem: true
-          seLinuxOptions:
-            type: spc_t
-          seccompProfile:
-            type: RuntimeDefault
-  syncPolicy:
-    automated:
-      prune: true
-      selfHeal: true
-    retry:
-      backoff:
-        duration: 10s
-        factor: 2
-        maxDuration: 3m
-      limit: -1
-    syncOptions:
-    - CreateNamespace=true
-    - Validate=false
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
 ---
 allowHostDirVolumePlugin: true
 allowHostIPC: false
@@ -2537,6 +2575,8 @@ fsGroup:
 groups: []
 kind: SecurityContextConstraints
 metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
   name: logging-scc
   namespace: tekton-logging
 priority: null
@@ -2568,32 +2608,6 @@ volumes:
 - projected
 - secret
 ---
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
 allowHostDirVolumePlugin: false
 allowHostIPC: false
 allowHostNetwork: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 3be83ff8..57bb0ebe 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -17,6 +17,16 @@ metadata:
 ---
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-logging
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1854,6 +1864,152 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
+apiVersion: argoproj.io/v1alpha1
+kind: Application
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: vectors-tekton-logs-collector
+  namespace: openshift-gitops
+spec:
+  destination:
+    namespace: tekton-logging
+    server: https://kubernetes.default.svc
+  project: default
+  source:
+    helm:
+      valueFiles:
+      - values.yaml
+      values: |-
+        role: Agent
+        customConfig:
+          data_dir: /vector-data-dir
+          api:
+            enabled: true
+            address: 127.0.0.1:8686
+            playground: false
+          sources:
+            kubernetes_logs:
+              type: kubernetes_logs
+              rotate_wait_secs: 5
+              glob_minimum_cooldown_ms: 15000
+              auto_partial_merge: true
+              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+            internal_metrics:
+              type: internal_metrics
+          transforms:
+            remap_app_logs:
+              type: remap
+              inputs: [kubernetes_logs]
+              source: |-
+                .log_type = "application"
+                .kubernetes_namespace_name = .kubernetes.pod_namespace
+                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
+                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
+                    } else {
+                      .taskRunUID = "none"
+                      }
+                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
+                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
+                    .result = .pipelineRunUID
+                    } else {
+                       .result = .taskRunUID
+                    }
+                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
+                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
+                    } else {
+                      .task = "none"
+                    }
+                    if exists(.kubernetes.pod_namespace) {
+                      .namespace = del(.kubernetes.pod_namespace)
+                    } else {
+                      .namespace = "unlabeled"
+                    }
+                    .pod = .kubernetes.pod_name
+                    .container = .kubernetes.container_name
+          sinks:
+            aws_s3:
+              type: "aws_s3"
+              bucket: ${BUCKET}
+              buffer:
+                type: "disk"
+                max_size: 1073741824
+              inputs: ["remap_app_logs"]
+              compression: "none"
+              endpoint: ${ENDPOINT}
+              encoding:
+                codec: "text"
+              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
+              filename_time_format: ""
+              filename_append_uuid: false
+        env:
+          - name: AWS_ACCESS_KEY_ID
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_access_key_id
+          - name: AWS_SECRET_ACCESS_KEY
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_secret_access_key
+          - name: AWS_DEFAULT_REGION
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: aws_region
+          - name: BUCKET
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: bucket
+          - name: ENDPOINT
+            valueFrom:
+              secretKeyRef:
+                name: s3-conf
+                key: endpoint
+        tolerations:
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/master
+            operator: Exists
+          - effect: NoSchedule
+            key: node-role.kubernetes.io/infra
+            operator: Exists
+          securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - CHOWN
+            - DAC_OVERRIDE
+            - FOWNER
+            - FSETID
+            - KILL
+            - NET_BIND_SERVICE
+            - SETGID
+            - SETPCAP
+            - SETUID
+          readOnlyRootFilesystem: true
+          seLinuxOptions:
+            type: spc_t
+          seccompProfile:
+            type: RuntimeDefault
+    path: charts/vector
+    repoURL: https://github.com/vectordotdev/helm-charts
+    targetRevision: 08506fdc01c7cc3fcf2dd83102add7b44980ee23
+  syncPolicy:
+    automated:
+      prune: true
+      selfHeal: true
+    retry:
+      backoff:
+        duration: 10s
+        factor: 2
+        maxDuration: 3m
+      limit: -1
+    syncOptions:
+    - CreateNamespace=false
+    - Validate=false
+---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1927,6 +2083,34 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: s3-conf
+  namespace: tekton-logging
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -2346,177 +2530,31 @@ spec:
   source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
+apiVersion: route.openshift.io/v1
+kind: Route
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: s3-conf
-  namespace: tekton-logging
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: argoproj.io/v1alpha1
-kind: Application
-metadata:
-  name: vectors-tekton-logs-collector
-  namespace: openshift-gitops
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
 spec:
-  destination:
-    namespace: tekton-logging
-    server: https://kubernetes.default.svc
-  project: default
-  source:
-    path: charts/vector
-    repoURL: 'https://github.com/vectordotdev/helm-charts'
-    targetRevision: "08506fdc01c7cc3fcf2dd83102add7b44980ee23"
-    helm:
-      valueFiles:
-        - values.yaml
-      values: |-
-        role: Agent
-        customConfig:
-          data_dir: /vector-data-dir
-          api:
-            enabled: true
-            address: 127.0.0.1:8686
-            playground: false
-          sources:
-            kubernetes_logs:
-              type: kubernetes_logs
-              rotate_wait_secs: 5
-              glob_minimum_cooldown_ms: 15000
-              auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
-            internal_metrics:
-              type: internal_metrics
-          transforms:
-            remap_app_logs:
-              type: remap
-              inputs: [kubernetes_logs]
-              source: |-
-                .log_type = "application"
-                .kubernetes_namespace_name = .kubernetes.pod_namespace
-                    if exists(.kubernetes.pod_labels."tekton.dev/taskRunUID") {
-                      .taskRunUID = del(.kubernetes.pod_labels."tekton.dev/taskRunUID")
-                    } else {
-                      .taskRunUID = "none"
-                      }
-                    if exists(.kubernetes.pod_labels."tekton.dev/pipelineRunUID") {
-                      .pipelineRunUID = del(.kubernetes.pod_labels."tekton.dev/pipelineRunUID")
-                    .result = .pipelineRunUID
-                    } else {
-                       .result = .taskRunUID
-                    }
-                    if exists(.kubernetes.pod_labels."tekton.dev/task") {
-                      .task = del(.kubernetes.pod_labels."tekton.dev/task")
-                    } else {
-                      .task = "none"
-                    }
-                    if exists(.kubernetes.pod_namespace) {
-                      .namespace = del(.kubernetes.pod_namespace)
-                    } else {
-                      .namespace = "unlabeled"
-                    }
-                    .pod = .kubernetes.pod_name
-                    .container = .kubernetes.container_name
-          sinks:
-            aws_s3:
-              type: "aws_s3"
-              bucket: ${BUCKET}
-              buffer:
-                type: "disk"
-                max_size: 1073741824
-              inputs: ["remap_app_logs"]
-              compression: "none"
-              endpoint: ${ENDPOINT}
-              encoding:
-                codec: "text"
-              key_prefix: "/logs/{{ `{{ .namespace }}` }}/{{`{{ .result }}`}}/{{`{{ .taskRunUID }}`}}/{{`{{ .container }}`}}"
-              filename_time_format: ""
-              filename_append_uuid: false
-        env:
-          - name: AWS_ACCESS_KEY_ID
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_access_key_id
-          - name: AWS_SECRET_ACCESS_KEY
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_secret_access_key
-          - name: AWS_DEFAULT_REGION
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: aws_region
-          - name: BUCKET
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: bucket
-          - name: ENDPOINT
-            valueFrom:
-              secretKeyRef:
-                name: s3-conf
-                key: endpoint
-        tolerations:
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/master
-            operator: Exists
-          - effect: NoSchedule
-            key: node-role.kubernetes.io/infra
-            operator: Exists
-          securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - CHOWN
-            - DAC_OVERRIDE
-            - FOWNER
-            - FSETID
-            - KILL
-            - NET_BIND_SERVICE
-            - SETGID
-            - SETPCAP
-            - SETUID
-          readOnlyRootFilesystem: true
-          seLinuxOptions:
-            type: spc_t
-          seccompProfile:
-            type: RuntimeDefault
-  syncPolicy:
-    automated:
-      prune: true
-      selfHeal: true
-    retry:
-      backoff:
-        duration: 10s
-        factor: 2
-        maxDuration: 3m
-      limit: -1
-    syncOptions:
-    - CreateNamespace=true
-    - Validate=false
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
 ---
 allowHostDirVolumePlugin: true
 allowHostIPC: false
@@ -2536,6 +2574,8 @@ fsGroup:
 groups: []
 kind: SecurityContextConstraints
 metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
   name: logging-scc
   namespace: tekton-logging
 priority: null
@@ -2567,32 +2607,6 @@ volumes:
 - projected
 - secret
 ---
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
 allowHostDirVolumePlugin: false
 allowHostIPC: false
 allowHostNetwork: false 
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
<h3>3: Production changes from fc765c2a to 258a3d80 on Wed Nov 27 09:23:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 071420df..6967bd23 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-fc765c2a/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1513,1515c1513,1515
<             - --pr-snapshots-to-keep=70
<             - --non-pr-snapshots-to-keep=600
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
>             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1530c1530
<   schedule: 0 */6 * * *
---
>   schedule: 0 5 * * *
./commit-fc765c2a/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1513,1515c1513,1515
<             - --pr-snapshots-to-keep=70
<             - --non-pr-snapshots-to-keep=600
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
>             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1530c1530
<   schedule: 0 */6 * * *
---
>   schedule: 0 5 * * * 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from fc765c2a to 258a3d80 on Wed Nov 27 09:23:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 071420df..6967bd23 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from fc765c2a to 258a3d80 on Wed Nov 27 09:23:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 071420df..6967bd23 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 58f59119 to fc765c2a on Wed Nov 27 06:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
index ff33364b..f1707461 100644
--- a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
+++ b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
@@ -24,3 +24,4 @@ spec:
         aws_region: "{{ .aws_region }}"
         bucket: "{{ .bucket }}"
         endpoint: "https://{{ .endpoint }}"
+        s3_url: "s3://{{ .bucket }}"
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 58dfd147..cc10560e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -439,6 +439,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -731,6 +743,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -872,6 +896,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1066,7 +1103,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1114,7 +1151,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1207,6 +1244,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1256,6 +1367,7 @@ spec:
             - token
             - -check_owner=false
             - -completed_run_grace_period=2h
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1273,7 +1385,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index da4f57ad..88a34ab6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -409,6 +409,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -684,6 +696,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -825,6 +849,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1046,7 +1083,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1074,6 +1111,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1094,7 +1136,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1158,6 +1200,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1235,6 +1351,7 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1252,7 +1369,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7b2535c1..72cfe7db 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0393db22..3be83ff8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 58f59119 to fc765c2a on Wed Nov 27 06:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
index ff33364b..f1707461 100644
--- a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
+++ b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
@@ -24,3 +24,4 @@ spec:
         aws_region: "{{ .aws_region }}"
         bucket: "{{ .bucket }}"
         endpoint: "https://{{ .endpoint }}"
+        s3_url: "s3://{{ .bucket }}"
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 58dfd147..cc10560e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -439,6 +439,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -731,6 +743,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -872,6 +896,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1066,7 +1103,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1114,7 +1151,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1207,6 +1244,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1256,6 +1367,7 @@ spec:
             - token
             - -check_owner=false
             - -completed_run_grace_period=2h
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1273,7 +1385,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index da4f57ad..88a34ab6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -409,6 +409,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -684,6 +696,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -825,6 +849,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1046,7 +1083,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1074,6 +1111,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1094,7 +1136,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1158,6 +1200,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1235,6 +1351,7 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1252,7 +1369,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7b2535c1..72cfe7db 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0393db22..3be83ff8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-58f59119/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
543,554d542
<   - ""
<   resources:
<   - events
<   verbs:
<   - get
<   - list
<   - create
<   - update
<   - delete
<   - patch
<   - watch
< - apiGroups:
1082,1093d1069
<     CONVERTER_ENABLE=false
<     CONVERTER_DB_LIMIT=50
<     LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
<     LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
<     LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
<     LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
<     LOGGING_PLUGIN_CA_CERT=
<     LOGGING_PLUGIN_QUERY_LIMIT=1700
<     LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
<     LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
<     LOGGING_PLUGIN_API_URL=s3://tekton-logs
<     LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
1236,1250d1211
<   maxRetention: "30"
<   runAt: 5 5 * * 0
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-config-results-retention-policy
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1471c1432
<           value: blob
---
>           value: S3
1499,1503d1459
<         - name: LOGGING_PLUGIN_API_URL
<           valueFrom:
<             secretKeyRef:
<               key: s3_url
<               name: tekton-results-s3
1523c1479
<         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
1590,1664d1545
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy-agent
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-retention-policy-agent
<   namespace: tekton-results
< spec:
<   replicas: 0
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: tekton-results-retention-policy-agent
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
<       labels:
<         app.kubernetes.io/name: tekton-results-retention-policy-agent
<         app.kubernetes.io/version: devel
<     spec:
<       containers:
<       - env:
<         - name: SYSTEM_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         - name: CONFIG_LOGGING_NAME
<           value: tekton-results-config-logging
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: POSTGRES_USER
<               name: tekton-results-postgres
<           valueFrom:
<             secretKeyRef:
<               name: tekton-results-postgres
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
<         name: retention-policy-agent
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
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
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       serviceAccountName: tekton-results-watcher
<       volumes:
<       - configMap:
<           name: tekton-results-api-config
<         name: config
<       - name: tls
<         secret:
<           secretName: tekton-results-tls
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1739d1619
<         - -logs_api=true
1757c1637
<         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
2144d2023
<         s3_url: s3://{{ .bucket }}
./commit-58f59119/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
543,554d542
<   - ""
<   resources:
<   - events
<   verbs:
<   - get
<   - list
<   - create
<   - update
<   - delete
<   - patch
<   - watch
< - apiGroups:
1082,1093d1069
<     CONVERTER_ENABLE=false
<     CONVERTER_DB_LIMIT=50
<     LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
<     LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
<     LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
<     LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
<     LOGGING_PLUGIN_CA_CERT=
<     LOGGING_PLUGIN_QUERY_LIMIT=1700
<     LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
<     LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
<     LOGGING_PLUGIN_API_URL=s3://tekton-logs
<     LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
1236,1250d1211
<   maxRetention: "30"
<   runAt: 5 5 * * 0
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-config-results-retention-policy
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1471c1432
<           value: blob
---
>           value: S3
1499,1503d1459
<         - name: LOGGING_PLUGIN_API_URL
<           valueFrom:
<             secretKeyRef:
<               key: s3_url
<               name: tekton-results-s3
1523c1479
<         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
1590,1664d1545
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy-agent
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-retention-policy-agent
<   namespace: tekton-results
< spec:
<   replicas: 0
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: tekton-results-retention-policy-agent
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
<       labels:
<         app.kubernetes.io/name: tekton-results-retention-policy-agent
<         app.kubernetes.io/version: devel
<     spec:
<       containers:
<       - env:
<         - name: SYSTEM_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         - name: CONFIG_LOGGING_NAME
<           value: tekton-results-config-logging
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: POSTGRES_USER
<               name: tekton-results-postgres
<           valueFrom:
<             secretKeyRef:
<               name: tekton-results-postgres
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
<         name: retention-policy-agent
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
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
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       serviceAccountName: tekton-results-watcher
<       volumes:
<       - configMap:
<           name: tekton-results-api-config
<         name: config
<       - name: tls
<         secret:
<           secretName: tekton-results-tls
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1739d1619
<         - -logs_api=true
1757c1637
<         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
2144d2023
<         s3_url: s3://{{ .bucket }} 
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
<h3>4: Development changes from 58f59119 to fc765c2a on Wed Nov 27 06:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
index ff33364b..f1707461 100644
--- a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
+++ b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
@@ -24,3 +24,4 @@ spec:
         aws_region: "{{ .aws_region }}"
         bucket: "{{ .bucket }}"
         endpoint: "https://{{ .endpoint }}"
+        s3_url: "s3://{{ .bucket }}"
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 58dfd147..cc10560e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -439,6 +439,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -731,6 +743,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -872,6 +896,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1066,7 +1103,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1114,7 +1151,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1207,6 +1244,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1256,6 +1367,7 @@ spec:
             - token
             - -check_owner=false
             - -completed_run_grace_period=2h
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1273,7 +1385,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index da4f57ad..88a34ab6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -409,6 +409,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -684,6 +696,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -825,6 +849,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1046,7 +1083,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1074,6 +1111,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1094,7 +1136,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1158,6 +1200,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1235,6 +1351,7 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1252,7 +1369,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7b2535c1..72cfe7db 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0393db22..3be83ff8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
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
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (133 lines)</summary>  

``` 
./commit-58f59119/development/components/pipeline-service/development/kustomize.out.yaml
558,569d557
<   - ""
<   resources:
<   - events
<   verbs:
<   - get
<   - list
<   - create
<   - update
<   - delete
<   - patch
<   - watch
< - apiGroups:
948,959d935
<     CONVERTER_ENABLE=false
<     CONVERTER_DB_LIMIT=50
<     LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
<     LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
<     LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
<     LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
<     LOGGING_PLUGIN_CA_CERT=
<     LOGGING_PLUGIN_QUERY_LIMIT=1700
<     LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
<     LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
<     LOGGING_PLUGIN_API_URL=s3://tekton-logs
<     LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
1102,1116d1077
<   maxRetention: "30"
<   runAt: 5 5 * * 0
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-config-results-retention-policy
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1310c1271
<           value: blob
---
>           value: S3
1357c1318
<         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
1453,1527d1413
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy-agent
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-retention-policy-agent
<   namespace: tekton-results
< spec:
<   replicas: 0
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: tekton-results-retention-policy-agent
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
<       labels:
<         app.kubernetes.io/name: tekton-results-retention-policy-agent
<         app.kubernetes.io/version: devel
<     spec:
<       containers:
<       - env:
<         - name: SYSTEM_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         - name: CONFIG_LOGGING_NAME
<           value: tekton-results-config-logging
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: POSTGRES_USER
<               name: tekton-results-postgres
<           valueFrom:
<             secretKeyRef:
<               name: tekton-results-postgres
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
<         name: retention-policy-agent
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
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
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       serviceAccountName: tekton-results-watcher
<       volumes:
<       - configMap:
<           name: tekton-results-api-config
<         name: config
<       - name: tls
<         secret:
<           secretName: tekton-results-tls
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1574d1459
<         - -logs_api=true
1592c1477
<         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116 
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
