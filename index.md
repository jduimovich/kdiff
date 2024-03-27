# kustomize changes tracked by commits 
### This file generated at Wed Mar 27 08:04:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ff806c5d to 8e9c8159 on Wed Mar 27 07:38:43 2024 </h3>  
 
<details> 
<summary>Git Diff (102 lines)</summary>  

``` 
diff --git a/components/build-service/components/webhook-config/kustomization.yaml b/components/build-service/components/webhook-config/kustomization.yaml
new file mode 100644
index 00000000..55670205
--- /dev/null
+++ b/components/build-service/components/webhook-config/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: webhook-config-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+namespace: build-service
diff --git a/components/build-service/components/webhook-config/webhook-config-patch.yaml b/components/build-service/components/webhook-config/webhook-config-patch.yaml
new file mode 100644
index 00000000..c26b4d09
--- /dev/null
+++ b/components/build-service/components/webhook-config/webhook-config-patch.yaml
@@ -0,0 +1,21 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: '-webhook-config-path=/mnt/webhook-config.json'
+
+- op: add
+  path: /spec/template/spec/containers/0/volumeMounts/-
+  value:
+    name: webhook-config
+    mountPath: /mnt
+    readOnly: true
+
+- op: add
+  path: /spec/template/spec/volumes/-
+  value: 
+    name: webhook-config
+    configMap:
+      name: webhook-config
+      items:
+        - key: webhook-config.json
+          path: webhook-config.json
diff --git a/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml b/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml
deleted file mode 100644
index c5c18f90..00000000
--- a/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: build-service-controller-manager
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        env:
-          - name: PAC_WEBHOOK_URL
-            value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
-
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
index b7362bc8..478c681c 100644
--- a/components/build-service/staging/stone-stage-p01/kustomization.yaml
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+namespace: build-service
 patches:
   - path: pipelines-as-code-secret-path.yaml
     target:
@@ -9,10 +10,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: add-webhook-target-patch.yaml
-    target:
-      name: build-service-controller-manager
-      kind: Deployment
+
+configMapGenerator:
+  - name: webhook-config
+    files: 
+      - webhook-config.json
+
 components:
   - ../../components/rh-certs
-
+  - ../../components/webhook-config
diff --git a/components/build-service/staging/stone-stage-p01/webhook-config.json b/components/build-service/staging/stone-stage-p01/webhook-config.json
new file mode 100644
index 00000000..72568d43
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from ff806c5d to 8e9c8159 on Wed Mar 27 07:38:43 2024 </h3>  
 
<details> 
<summary>Git Diff (102 lines)</summary>  

``` 
diff --git a/components/build-service/components/webhook-config/kustomization.yaml b/components/build-service/components/webhook-config/kustomization.yaml
new file mode 100644
index 00000000..55670205
--- /dev/null
+++ b/components/build-service/components/webhook-config/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: webhook-config-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+namespace: build-service
diff --git a/components/build-service/components/webhook-config/webhook-config-patch.yaml b/components/build-service/components/webhook-config/webhook-config-patch.yaml
new file mode 100644
index 00000000..c26b4d09
--- /dev/null
+++ b/components/build-service/components/webhook-config/webhook-config-patch.yaml
@@ -0,0 +1,21 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: '-webhook-config-path=/mnt/webhook-config.json'
+
+- op: add
+  path: /spec/template/spec/containers/0/volumeMounts/-
+  value:
+    name: webhook-config
+    mountPath: /mnt
+    readOnly: true
+
+- op: add
+  path: /spec/template/spec/volumes/-
+  value: 
+    name: webhook-config
+    configMap:
+      name: webhook-config
+      items:
+        - key: webhook-config.json
+          path: webhook-config.json
diff --git a/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml b/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml
deleted file mode 100644
index c5c18f90..00000000
--- a/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: build-service-controller-manager
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        env:
-          - name: PAC_WEBHOOK_URL
-            value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
-
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
index b7362bc8..478c681c 100644
--- a/components/build-service/staging/stone-stage-p01/kustomization.yaml
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+namespace: build-service
 patches:
   - path: pipelines-as-code-secret-path.yaml
     target:
@@ -9,10 +10,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: add-webhook-target-patch.yaml
-    target:
-      name: build-service-controller-manager
-      kind: Deployment
+
+configMapGenerator:
+  - name: webhook-config
+    files: 
+      - webhook-config.json
+
 components:
   - ../../components/rh-certs
-
+  - ../../components/webhook-config
diff --git a/components/build-service/staging/stone-stage-p01/webhook-config.json b/components/build-service/staging/stone-stage-p01/webhook-config.json
new file mode 100644
index 00000000..72568d43
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-ff806c5d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
625,636d624
< data:
<   webhook-config.json: |
<     {
<         "https://github.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12",
<         "https://gitlab.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
<     }
< kind: ConfigMap
< metadata:
<   name: webhook-config-8mt4hdd9kh
<   namespace: build-service
< ---
< apiVersion: v1
691d678
<         - -webhook-config-path=/mnt/webhook-config.json
693a681,683
>         env:
>         - name: PAC_WEBHOOK_URL
>           value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
726,728d715
<         - mountPath: /mnt
<           name: webhook-config
<           readOnly: true
763,768d749
<       - configMap:
<           items:
<           - key: webhook-config.json
<             path: webhook-config.json
<           name: webhook-config-8mt4hdd9kh
<         name: webhook-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from ff806c5d to 8e9c8159 on Wed Mar 27 07:38:43 2024 </h3>  
 
<details> 
<summary>Git Diff (102 lines)</summary>  

``` 
diff --git a/components/build-service/components/webhook-config/kustomization.yaml b/components/build-service/components/webhook-config/kustomization.yaml
new file mode 100644
index 00000000..55670205
--- /dev/null
+++ b/components/build-service/components/webhook-config/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: webhook-config-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+namespace: build-service
diff --git a/components/build-service/components/webhook-config/webhook-config-patch.yaml b/components/build-service/components/webhook-config/webhook-config-patch.yaml
new file mode 100644
index 00000000..c26b4d09
--- /dev/null
+++ b/components/build-service/components/webhook-config/webhook-config-patch.yaml
@@ -0,0 +1,21 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: '-webhook-config-path=/mnt/webhook-config.json'
+
+- op: add
+  path: /spec/template/spec/containers/0/volumeMounts/-
+  value:
+    name: webhook-config
+    mountPath: /mnt
+    readOnly: true
+
+- op: add
+  path: /spec/template/spec/volumes/-
+  value: 
+    name: webhook-config
+    configMap:
+      name: webhook-config
+      items:
+        - key: webhook-config.json
+          path: webhook-config.json
diff --git a/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml b/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml
deleted file mode 100644
index c5c18f90..00000000
--- a/components/build-service/staging/stone-stage-p01/add-webhook-target-patch.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: build-service-controller-manager
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        env:
-          - name: PAC_WEBHOOK_URL
-            value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
-
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
index b7362bc8..478c681c 100644
--- a/components/build-service/staging/stone-stage-p01/kustomization.yaml
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+namespace: build-service
 patches:
   - path: pipelines-as-code-secret-path.yaml
     target:
@@ -9,10 +10,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: add-webhook-target-patch.yaml
-    target:
-      name: build-service-controller-manager
-      kind: Deployment
+
+configMapGenerator:
+  - name: webhook-config
+    files: 
+      - webhook-config.json
+
 components:
   - ../../components/rh-certs
-
+  - ../../components/webhook-config
diff --git a/components/build-service/staging/stone-stage-p01/webhook-config.json b/components/build-service/staging/stone-stage-p01/webhook-config.json
new file mode 100644
index 00000000..72568d43
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 4ddbe2d3 to ff806c5d on Wed Mar 27 07:01:37 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 102ab5db..847dfccf 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
+    newTag: 6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index cb424f87..18e3d2e1 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
+    newTag: 6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index d7e5efa3..3502f273 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 9de01026..7da19cf9 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4ddbe2d3/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
---
>         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b 
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
<h3>2: Staging changes from 4ddbe2d3 to ff806c5d on Wed Mar 27 07:01:37 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 102ab5db..847dfccf 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
+    newTag: 6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index cb424f87..18e3d2e1 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
+    newTag: 6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index d7e5efa3..3502f273 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 9de01026..7da19cf9 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4ddbe2d3/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
---
>         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 4ddbe2d3 to ff806c5d on Wed Mar 27 07:01:37 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 102ab5db..847dfccf 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
+    newTag: 6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index cb424f87..18e3d2e1 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f00d9c392bf901acbb78b1e9c672d8958589331b
+    newTag: 6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index d7e5efa3..3502f273 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 9de01026..7da19cf9 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f00d9c392bf901acbb78b1e9c672d8958589331b
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4ddbe2d3/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:6956cf67fbbc8b1cf3bba084d2e674a0c66fdd3b
---
>         image: quay.io/redhat-appstudio/application-service:f00d9c392bf901acbb78b1e9c672d8958589331b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 2f901d8b to 4ddbe2d3 on Wed Mar 27 02:51:44 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index b3d8b7df..a95cda2c 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -57,13 +57,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: jvm-build-service-builder-images
-spec:
-  url: "https://github.com/redhat-appstudio/jvm-build-service-builder-images"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: tekton-results
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-2f901d8b/production/components/tekton-ci/production/kustomize.out.yaml
379a380,388
>   name: jvm-build-service-builder-images
> spec:
>   url: https://github.com/redhat-appstudio/jvm-build-service-builder-images
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
<h3>3: Staging changes from 2f901d8b to 4ddbe2d3 on Wed Mar 27 02:51:44 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index b3d8b7df..a95cda2c 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -57,13 +57,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: jvm-build-service-builder-images
-spec:
-  url: "https://github.com/redhat-appstudio/jvm-build-service-builder-images"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: tekton-results
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-2f901d8b/staging/components/tekton-ci/staging/kustomize.out.yaml
339a340,348
>   name: jvm-build-service-builder-images
> spec:
>   url: https://github.com/redhat-appstudio/jvm-build-service-builder-images
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 2f901d8b to 4ddbe2d3 on Wed Mar 27 02:51:44 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index b3d8b7df..a95cda2c 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -57,13 +57,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: jvm-build-service-builder-images
-spec:
-  url: "https://github.com/redhat-appstudio/jvm-build-service-builder-images"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: tekton-results
 spec: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 17a76f74 to 2f901d8b on Tue Mar 26 21:49:55 2024 </h3>  
 
<details> 
<summary>Git Diff (286 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 9e886d45..d0074960 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -19,5 +19,6 @@ resources:
   - toolchain-member-operator
   - multi-platform-controller
   - perf-team-prometheus-reader
+  - project-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml
new file mode 100644
index 00000000..85738686
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- project-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml b/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml
new file mode 100644
index 00000000..bb8276fd
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/project-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: project-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: project-controller
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
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index afe7470d..f65f585e 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -119,3 +119,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: repository-validator
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..2c12d377
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index c6aa992c..7f0b4496 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -12,6 +12,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target:
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 0257c01e..6985289d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+$patch: delete
diff --git a/components/project-controller/OWNERS b/components/project-controller/OWNERS
new file mode 100644
index 00000000..fbebd235
--- /dev/null
+++ b/components/project-controller/OWNERS
@@ -0,0 +1,9 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- ifireball
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- hmariset
diff --git a/components/project-controller/README.md b/components/project-controller/README.md
new file mode 100644
index 00000000..80d8967b
--- /dev/null
+++ b/components/project-controller/README.md
@@ -0,0 +1,3 @@
+# PROJECT-CONTROLLER
+
+Allow users to manage projects and development streams in Konflux. Related information can be found at the [project-controller repository](https://github.com/konflux-ci/project-controller)
diff --git a/components/project-controller/base/allow-argocd-to-manage.yaml b/components/project-controller/base/allow-argocd-to-manage.yaml
new file mode 100644
index 00000000..5e7f848c
--- /dev/null
+++ b/components/project-controller/base/allow-argocd-to-manage.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: grant-argocd
+  namespace: project-controller
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
diff --git a/components/project-controller/base/argocd-permissions.yaml b/components/project-controller/base/argocd-permissions.yaml
new file mode 100644
index 00000000..aeabedc8
--- /dev/null
+++ b/components/project-controller/base/argocd-permissions.yaml
@@ -0,0 +1,28 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: crd-manager-for-project-controller
+rules:
+  - verbs:
+      - patch
+      - get
+      - list
+      - create
+      - get
+    apiGroups:
+      - apiextensions.k8s.io
+    resources:
+      - customresourcedefinitions
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: grant-argocd-crd-permissions-for-project-controller
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: crd-manager-for-project-controller
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
diff --git a/components/project-controller/base/kustomization.yaml b/components/project-controller/base/kustomization.yaml
new file mode 100644
index 00000000..3cba52ed
--- /dev/null
+++ b/components/project-controller/base/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- project-controller.yaml
+- allow-argocd-to-manage.yaml
+- argocd-permissions.yaml
+
+namespace: project-controller
diff --git a/components/project-controller/base/project-controller.yaml b/components/project-controller/base/project-controller.yaml
new file mode 100644
index 00000000..96a1a0d1
--- /dev/null
+++ b/components/project-controller/base/project-controller.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: project-controller-maintainers
+  namespace: project-controller
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-o11y
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: project-controller-maintainer
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
new file mode 100644
index 00000000..9d4441cd
--- /dev/null
+++ b/components/project-controller/development/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller
diff --git a/components/project-controller/production/kustomization.yaml b/components/project-controller/production/kustomization.yaml
new file mode 100644
index 00000000..0ea6ab67
--- /dev/null
+++ b/components/project-controller/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..0ea6ab67
--- /dev/null
+++ b/components/project-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-2f901d8b/production/components: project-controller 
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
<h3>4: Staging changes from 17a76f74 to 2f901d8b on Tue Mar 26 21:49:55 2024 </h3>  
 
<details> 
<summary>Git Diff (286 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 9e886d45..d0074960 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -19,5 +19,6 @@ resources:
   - toolchain-member-operator
   - multi-platform-controller
   - perf-team-prometheus-reader
+  - project-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml
new file mode 100644
index 00000000..85738686
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- project-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml b/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml
new file mode 100644
index 00000000..bb8276fd
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/project-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: project-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: project-controller
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
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index afe7470d..f65f585e 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -119,3 +119,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: repository-validator
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..2c12d377
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index c6aa992c..7f0b4496 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -12,6 +12,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target:
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 0257c01e..6985289d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+$patch: delete
diff --git a/components/project-controller/OWNERS b/components/project-controller/OWNERS
new file mode 100644
index 00000000..fbebd235
--- /dev/null
+++ b/components/project-controller/OWNERS
@@ -0,0 +1,9 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- ifireball
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- hmariset
diff --git a/components/project-controller/README.md b/components/project-controller/README.md
new file mode 100644
index 00000000..80d8967b
--- /dev/null
+++ b/components/project-controller/README.md
@@ -0,0 +1,3 @@
+# PROJECT-CONTROLLER
+
+Allow users to manage projects and development streams in Konflux. Related information can be found at the [project-controller repository](https://github.com/konflux-ci/project-controller)
diff --git a/components/project-controller/base/allow-argocd-to-manage.yaml b/components/project-controller/base/allow-argocd-to-manage.yaml
new file mode 100644
index 00000000..5e7f848c
--- /dev/null
+++ b/components/project-controller/base/allow-argocd-to-manage.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: grant-argocd
+  namespace: project-controller
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
diff --git a/components/project-controller/base/argocd-permissions.yaml b/components/project-controller/base/argocd-permissions.yaml
new file mode 100644
index 00000000..aeabedc8
--- /dev/null
+++ b/components/project-controller/base/argocd-permissions.yaml
@@ -0,0 +1,28 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: crd-manager-for-project-controller
+rules:
+  - verbs:
+      - patch
+      - get
+      - list
+      - create
+      - get
+    apiGroups:
+      - apiextensions.k8s.io
+    resources:
+      - customresourcedefinitions
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: grant-argocd-crd-permissions-for-project-controller
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: crd-manager-for-project-controller
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
diff --git a/components/project-controller/base/kustomization.yaml b/components/project-controller/base/kustomization.yaml
new file mode 100644
index 00000000..3cba52ed
--- /dev/null
+++ b/components/project-controller/base/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- project-controller.yaml
+- allow-argocd-to-manage.yaml
+- argocd-permissions.yaml
+
+namespace: project-controller
diff --git a/components/project-controller/base/project-controller.yaml b/components/project-controller/base/project-controller.yaml
new file mode 100644
index 00000000..96a1a0d1
--- /dev/null
+++ b/components/project-controller/base/project-controller.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: project-controller-maintainers
+  namespace: project-controller
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-o11y
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: project-controller-maintainer
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
new file mode 100644
index 00000000..9d4441cd
--- /dev/null
+++ b/components/project-controller/development/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller
diff --git a/components/project-controller/production/kustomization.yaml b/components/project-controller/production/kustomization.yaml
new file mode 100644
index 00000000..0ea6ab67
--- /dev/null
+++ b/components/project-controller/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..0ea6ab67
--- /dev/null
+++ b/components/project-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-2f901d8b/staging/components: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 17a76f74 to 2f901d8b on Tue Mar 26 21:49:55 2024 </h3>  
 
<details> 
<summary>Git Diff (286 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 9e886d45..d0074960 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -19,5 +19,6 @@ resources:
   - toolchain-member-operator
   - multi-platform-controller
   - perf-team-prometheus-reader
+  - project-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml
new file mode 100644
index 00000000..85738686
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/project-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- project-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml b/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml
new file mode 100644
index 00000000..bb8276fd
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/project-controller/project-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/project-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: project-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: project-controller
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
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index afe7470d..f65f585e 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -119,3 +119,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: repository-validator
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..2c12d377
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index c6aa992c..7f0b4496 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -12,6 +12,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target:
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 0257c01e..6985289d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,3 +17,9 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: project-controller
+$patch: delete
diff --git a/components/project-controller/OWNERS b/components/project-controller/OWNERS
new file mode 100644
index 00000000..fbebd235
--- /dev/null
+++ b/components/project-controller/OWNERS
@@ -0,0 +1,9 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- ifireball
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- hmariset
diff --git a/components/project-controller/README.md b/components/project-controller/README.md
new file mode 100644
index 00000000..80d8967b
--- /dev/null
+++ b/components/project-controller/README.md
@@ -0,0 +1,3 @@
+# PROJECT-CONTROLLER
+
+Allow users to manage projects and development streams in Konflux. Related information can be found at the [project-controller repository](https://github.com/konflux-ci/project-controller)
diff --git a/components/project-controller/base/allow-argocd-to-manage.yaml b/components/project-controller/base/allow-argocd-to-manage.yaml
new file mode 100644
index 00000000..5e7f848c
--- /dev/null
+++ b/components/project-controller/base/allow-argocd-to-manage.yaml
@@ -0,0 +1,13 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: grant-argocd
+  namespace: project-controller
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
diff --git a/components/project-controller/base/argocd-permissions.yaml b/components/project-controller/base/argocd-permissions.yaml
new file mode 100644
index 00000000..aeabedc8
--- /dev/null
+++ b/components/project-controller/base/argocd-permissions.yaml
@@ -0,0 +1,28 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: crd-manager-for-project-controller
+rules:
+  - verbs:
+      - patch
+      - get
+      - list
+      - create
+      - get
+    apiGroups:
+      - apiextensions.k8s.io
+    resources:
+      - customresourcedefinitions
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: grant-argocd-crd-permissions-for-project-controller
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: crd-manager-for-project-controller
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
diff --git a/components/project-controller/base/kustomization.yaml b/components/project-controller/base/kustomization.yaml
new file mode 100644
index 00000000..3cba52ed
--- /dev/null
+++ b/components/project-controller/base/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- project-controller.yaml
+- allow-argocd-to-manage.yaml
+- argocd-permissions.yaml
+
+namespace: project-controller
diff --git a/components/project-controller/base/project-controller.yaml b/components/project-controller/base/project-controller.yaml
new file mode 100644
index 00000000..96a1a0d1
--- /dev/null
+++ b/components/project-controller/base/project-controller.yaml
@@ -0,0 +1,13 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: project-controller-maintainers
+  namespace: project-controller
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-o11y
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: project-controller-maintainer
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
new file mode 100644
index 00000000..9d4441cd
--- /dev/null
+++ b/components/project-controller/development/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller
diff --git a/components/project-controller/production/kustomization.yaml b/components/project-controller/production/kustomization.yaml
new file mode 100644
index 00000000..0ea6ab67
--- /dev/null
+++ b/components/project-controller/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..0ea6ab67
--- /dev/null
+++ b/components/project-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - https://github.com/konflux-ci/project-controller/config/default?ref=cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+images:
+- name: konflux-project-controller
+  newName: quay.io/redhat-appstudio/project-controller
+  newTag: cdfd3f9d019e99e7fa6ba9620313a65e213b410d
+
+namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-17a76f74/development/app-of-apps-development.yaml
913,956d912
<   name: project-controller
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
<             sourceRoot: components/project-controller
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: project-controller-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: project-controller
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
./commit-2f901d8b/development/components: project-controller 
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
```
 
</details> 
<br> 


</div>
