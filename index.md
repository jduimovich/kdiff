# kustomize changes tracked by commits 
### This file generated at Thu Mar 14 12:05:42 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 105f82cf to 185923a7 on Thu Mar 14 11:04:30 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
new file mode 100644
index 00000000..d93979e2
--- /dev/null
+++ b/components/gitops/development/core_service_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-core-service-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 100m
+            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
new file mode 100644
index 00000000..1ee73e1a
--- /dev/null
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -0,0 +1,11 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ArgoCD
+metadata:
+  name: gitops-service-argocd
+  namespace: gitops-service-argocd
+spec:
+  repo:
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 322bdd57..ddfcf202 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,3 +9,8 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
+
+patches:
+  - path: core_service_resources_patch.yaml
+  - path: service_agent_resources_patch.yaml
+  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
new file mode 100644
index 00000000..c9ed7fdd
--- /dev/null
+++ b/components/gitops/development/service_agent_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-service-agent-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 50m
+            memory: 100Mi 
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
<h3>1: Staging changes from 105f82cf to 185923a7 on Thu Mar 14 11:04:30 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
new file mode 100644
index 00000000..d93979e2
--- /dev/null
+++ b/components/gitops/development/core_service_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-core-service-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 100m
+            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
new file mode 100644
index 00000000..1ee73e1a
--- /dev/null
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -0,0 +1,11 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ArgoCD
+metadata:
+  name: gitops-service-argocd
+  namespace: gitops-service-argocd
+spec:
+  repo:
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 322bdd57..ddfcf202 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,3 +9,8 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
+
+patches:
+  - path: core_service_resources_patch.yaml
+  - path: service_agent_resources_patch.yaml
+  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
new file mode 100644
index 00000000..c9ed7fdd
--- /dev/null
+++ b/components/gitops/development/service_agent_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-service-agent-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 50m
+            memory: 100Mi 
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
<h3>1: Development changes from 105f82cf to 185923a7 on Thu Mar 14 11:04:30 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
new file mode 100644
index 00000000..d93979e2
--- /dev/null
+++ b/components/gitops/development/core_service_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-core-service-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 100m
+            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
new file mode 100644
index 00000000..1ee73e1a
--- /dev/null
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -0,0 +1,11 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ArgoCD
+metadata:
+  name: gitops-service-argocd
+  namespace: gitops-service-argocd
+spec:
+  repo:
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 322bdd57..ddfcf202 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,3 +9,8 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
+
+patches:
+  - path: core_service_resources_patch.yaml
+  - path: service_agent_resources_patch.yaml
+  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
new file mode 100644
index 00000000..c9ed7fdd
--- /dev/null
+++ b/components/gitops/development/service_agent_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-service-agent-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 50m
+            memory: 100Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-105f82cf/development/components/gitops/development/kustomize.out.yaml
2484,2485c2484,2485
<             cpu: 100m
<             memory: 100Mi
---
>             cpu: 1000m
>             memory: 2400Mi
2589,2590c2589,2590
<             cpu: 50m
<             memory: 100Mi
---
>             cpu: 200m
>             memory: 300Mi
2835,2836c2835,2836
<         cpu: 100m
<         memory: 100Mi
---
>         cpu: 500m
>         memory: 512Mi 
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
<h3>2: Production changes from 761f54ce to 105f82cf on Thu Mar 14 08:14:50 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 109dd851..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,6 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-761f54ce/production/components/tekton-ci/production/kustomize.out.yaml
20d19
< - name: registry-redhat-io-pull-secret 
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
<h3>2: Staging changes from 761f54ce to 105f82cf on Thu Mar 14 08:14:50 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 109dd851..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,6 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-761f54ce/staging/components/tekton-ci/staging/kustomize.out.yaml
20d19
< - name: registry-redhat-io-pull-secret 
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
<h3>2: Development changes from 761f54ce to 105f82cf on Thu Mar 14 08:14:50 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 109dd851..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,6 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret 
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
<h3>3: Production changes from 192922a6 to 761f54ce on Thu Mar 14 02:32:24 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 2a6bb3f9..796c0ad1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 52e80606..3036fccf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7aedc9a8..1b7f2ef7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f24b768c..1da3cb1e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7c674ade..796b507c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d68126df..78940544 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \ 
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
<h3>3: Staging changes from 192922a6 to 761f54ce on Thu Mar 14 02:32:24 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 2a6bb3f9..796c0ad1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 52e80606..3036fccf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7aedc9a8..1b7f2ef7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f24b768c..1da3cb1e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7c674ade..796b507c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d68126df..78940544 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (54 lines)</summary>  

``` 
./commit-192922a6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1374c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1528c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1665a1666,1673
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
./commit-192922a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1374c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1528c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1665a1666,1673
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
./commit-192922a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1374c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1528c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1665a1666,1673
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f - 
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
<h3>3: Development changes from 192922a6 to 761f54ce on Thu Mar 14 02:32:24 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 2a6bb3f9..796c0ad1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 52e80606..3036fccf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7aedc9a8..1b7f2ef7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f24b768c..1da3cb1e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7c674ade..796b507c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d68126df..78940544 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-192922a6/development/components/pipeline-service/development/kustomize.out.yaml
1350c1350
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1568c1568
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1802a1803,1810
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f - 
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
<h3>4: Production changes from ffa9fef1 to 192922a6 on Thu Mar 14 00:39:32 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index dae8dd44..e5c68931 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
+  newTag: c09c4f874cdda8505909b3b2627771c76df44797
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 5001d2cc..bc9c0065 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
+    value: c09c4f874cdda8505909b3b2627771c76df44797
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 02e3d6a6..897403ee 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-ffa9fef1/production/components/jvm-build-service/production/kustomize.out.yaml
173,175d172
<                         finishTime:
<                           format: int64
<                           type: integer
180,200d176
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
321,329d296
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                   type: object
<                 type: array
810,811d776
<               digest:
<                 type: string
1431c1396
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
1483c1448
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
1487c1452
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb 
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
<h3>4: Staging changes from ffa9fef1 to 192922a6 on Thu Mar 14 00:39:32 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index dae8dd44..e5c68931 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
+  newTag: c09c4f874cdda8505909b3b2627771c76df44797
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 5001d2cc..bc9c0065 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
+    value: c09c4f874cdda8505909b3b2627771c76df44797
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 02e3d6a6..897403ee 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-ffa9fef1/staging/components/jvm-build-service/staging/kustomize.out.yaml
173,175d172
<                         finishTime:
<                           format: int64
<                           type: integer
180,200d176
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
321,329d296
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                   type: object
<                 type: array
810,811d776
<               digest:
<                 type: string
1431c1396
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
1483c1448
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
1487c1452
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb 
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
<h3>4: Development changes from ffa9fef1 to 192922a6 on Thu Mar 14 00:39:32 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index dae8dd44..e5c68931 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
+  newTag: c09c4f874cdda8505909b3b2627771c76df44797
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 5001d2cc..bc9c0065 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
+    value: c09c4f874cdda8505909b3b2627771c76df44797
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 02e3d6a6..897403ee 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-ffa9fef1/development/components/jvm-build-service/development/kustomize.out.yaml
173,175d172
<                         finishTime:
<                           format: int64
<                           type: integer
180,200d176
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
321,329d296
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                   type: object
<                 type: array
810,811d776
<               digest:
<                 type: string
1431c1396
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
1462c1427
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
1466c1431
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb 
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
