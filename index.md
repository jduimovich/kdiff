# kustomize changes tracked by commits 
### This file generated at Thu Mar 14 00:05:33 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0b5a4d39 to ffa9fef1 on Wed Mar 13 17:57:57 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ce8b9c73..a073f8f9 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -10,6 +10,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL=""
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index b342b5f2..f7f38971 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: c6ceab5e54a3b57e1a699d534ad1179ac60029f2
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b390da58..b9a05eb2 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 200m
             memory: 600Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index ec1f2bdb..9a47b350 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-0b5a4d39/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1085,1093d1084
<   CONSOLE_URL: https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace
<     }}/pipelinerun/{{ .PipelineRunName }}
< kind: ConfigMap
< metadata:
<   name: console-url-h2kgf6tmbb
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
1192,1198d1182
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-h2kgf6tmbb
<               optional: true 
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
<h3>1: Staging changes from 0b5a4d39 to ffa9fef1 on Wed Mar 13 17:57:57 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ce8b9c73..a073f8f9 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -10,6 +10,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL=""
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index b342b5f2..f7f38971 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: c6ceab5e54a3b57e1a699d534ad1179ac60029f2
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b390da58..b9a05eb2 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 200m
             memory: 600Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index ec1f2bdb..9a47b350 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-0b5a4d39/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1085,1093d1084
<   CONSOLE_URL: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace
<     }}/pipelinerun/{{ .PipelineRunName }}
< kind: ConfigMap
< metadata:
<   name: console-url-9bttdkbk4f
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
1192,1198d1182
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-9bttdkbk4f
<               optional: true 
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
<h3>1: Development changes from 0b5a4d39 to ffa9fef1 on Wed Mar 13 17:57:57 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ce8b9c73..a073f8f9 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -10,6 +10,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL=""
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index b342b5f2..f7f38971 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: c6ceab5e54a3b57e1a699d534ad1179ac60029f2
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b390da58..b9a05eb2 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 200m
             memory: 600Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index ec1f2bdb..9a47b350 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-0b5a4d39/development/components/integration/development/kustomize.out.yaml
1085,1092d1084
<   CONSOLE_URL: ""
< kind: ConfigMap
< metadata:
<   name: console-url-b957927t67
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
1191,1197d1182
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-b957927t67
<               optional: true 
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
<h3>2: Production changes from 595fd9c4 to 0b5a4d39 on Wed Mar 13 16:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..94d05424
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+namespace: konflux-public-staging
+patches:
+  - target:
+      kind: Application
+      name: all-application-sets
+    patch: |-
+      - op: replace
+        path: /spec/destination/namespace
+        value: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..146985da
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+namespace: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
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
<h3>2: Staging changes from 595fd9c4 to 0b5a4d39 on Wed Mar 13 16:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..94d05424
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+namespace: konflux-public-staging
+patches:
+  - target:
+      kind: Application
+      name: all-application-sets
+    patch: |-
+      - op: replace
+        path: /spec/destination/namespace
+        value: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..146985da
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+namespace: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
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
<h3>2: Development changes from 595fd9c4 to 0b5a4d39 on Wed Mar 13 16:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..94d05424
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+namespace: konflux-public-staging
+patches:
+  - target:
+      kind: Application
+      name: all-application-sets
+    patch: |-
+      - op: replace
+        path: /spec/destination/namespace
+        value: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..146985da
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+namespace: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
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
<h3>3: Production changes from 2804780f to 595fd9c4 on Wed Mar 13 15:15:43 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 7621f453..00941156 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=01fa361ee40f1c9ca0eec2bd3e966e4f32653567
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e0e19185..16cfc325 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 2d047bd8..dcb64462 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index b393aa5a..1b974ffb 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 patches:
   - target: 
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
<h3>3: Staging changes from 2804780f to 595fd9c4 on Wed Mar 13 15:15:43 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 7621f453..00941156 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=01fa361ee40f1c9ca0eec2bd3e966e4f32653567
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e0e19185..16cfc325 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 2d047bd8..dcb64462 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index b393aa5a..1b974ffb 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 patches:
   - target: 
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
<h3>3: Development changes from 2804780f to 595fd9c4 on Wed Mar 13 15:15:43 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 7621f453..00941156 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=01fa361ee40f1c9ca0eec2bd3e966e4f32653567
 - https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e0e19185..16cfc325 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 2d047bd8..dcb64462 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index b393aa5a..1b974ffb 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=17a9a500dd6054777e6e191cd32a663e392ffccf
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 17a9a500dd6054777e6e191cd32a663e392ffccf
+    newTag: dab2ba8babb0e5d7a3e20c7d2520e0154556736b
 
 patches:
   - target: 
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
<h3>4: Production changes from b616f93b to 2804780f on Wed Mar 13 14:17:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 2402b266..cdbffdb4 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 9a90cc435901c5eb1d0d0527d6d92c3937866526
+    newTag: 5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 7f8f5630..1564239c 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 9a90cc435901c5eb1d0d0527d6d92c3937866526
+    newTag: 5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 patches:
   - target: 
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
<h3>4: Staging changes from b616f93b to 2804780f on Wed Mar 13 14:17:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 2402b266..cdbffdb4 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 9a90cc435901c5eb1d0d0527d6d92c3937866526
+    newTag: 5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 7f8f5630..1564239c 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 9a90cc435901c5eb1d0d0527d6d92c3937866526
+    newTag: 5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 patches:
   - target: 
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
<h3>4: Development changes from b616f93b to 2804780f on Wed Mar 13 14:17:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 2402b266..cdbffdb4 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 9a90cc435901c5eb1d0d0527d6d92c3937866526
+    newTag: 5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 7f8f5630..1564239c 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=9a90cc435901c5eb1d0d0527d6d92c3937866526
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=5734b3b5c4ae2f46c42bc541e896971a5ab64810
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 9a90cc435901c5eb1d0d0527d6d92c3937866526
+    newTag: 5734b3b5c4ae2f46c42bc541e896971a5ab64810
 
 patches:
   - target: 
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
