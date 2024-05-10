# kustomize changes tracked by commits 
### This file generated at Fri May 10 16:05:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-e3286dd8/production/components/tekton-ci/production/kustomize.out.yaml
272a273,281
>   name: build-service
> spec:
>   url: https://github.com/konflux-ci/build-service
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-e3286dd8/staging/components/tekton-ci/staging/kustomize.out.yaml
232a233,241
>   name: build-service
> spec:
>   url: https://github.com/konflux-ci/build-service
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
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
<h3>2: Production changes from 49b4da5b to e3286dd8 on Fri May 10 13:26:54 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index dc4db592..1af783ab 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - delete-snapshots.yaml
+- manage-integrationtestscenarios.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/integration/base/manage-integrationtestscenarios.yaml b/components/integration/base/manage-integrationtestscenarios.yaml
new file mode 100644
index 00000000..6026efc2
--- /dev/null
+++ b/components/integration/base/manage-integrationtestscenarios.yaml
@@ -0,0 +1,31 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "integrationtestscenarios"
+    verbs:
+      - "create"
+      - "get"
+      - "list"
+      - "patch"
+      - "update"
+      - "watch"
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-integration
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manage-integrationtestscenarios 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-49b4da5b/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1133,1151d1132
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1283,1295d1263
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 49b4da5b to e3286dd8 on Fri May 10 13:26:54 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index dc4db592..1af783ab 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - delete-snapshots.yaml
+- manage-integrationtestscenarios.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/integration/base/manage-integrationtestscenarios.yaml b/components/integration/base/manage-integrationtestscenarios.yaml
new file mode 100644
index 00000000..6026efc2
--- /dev/null
+++ b/components/integration/base/manage-integrationtestscenarios.yaml
@@ -0,0 +1,31 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "integrationtestscenarios"
+    verbs:
+      - "create"
+      - "get"
+      - "list"
+      - "patch"
+      - "update"
+      - "watch"
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-integration
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manage-integrationtestscenarios 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-49b4da5b/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1133,1151d1132
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1283,1295d1263
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 49b4da5b to e3286dd8 on Fri May 10 13:26:54 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index dc4db592..1af783ab 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - delete-snapshots.yaml
+- manage-integrationtestscenarios.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/integration/base/manage-integrationtestscenarios.yaml b/components/integration/base/manage-integrationtestscenarios.yaml
new file mode 100644
index 00000000..6026efc2
--- /dev/null
+++ b/components/integration/base/manage-integrationtestscenarios.yaml
@@ -0,0 +1,31 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "integrationtestscenarios"
+    verbs:
+      - "create"
+      - "get"
+      - "list"
+      - "patch"
+      - "update"
+      - "watch"
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: manage-integrationtestscenarios
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-integration
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: manage-integrationtestscenarios 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-49b4da5b/development/components/integration/development/kustomize.out.yaml
1133,1151d1132
< kind: ClusterRole
< metadata:
<   name: manage-integrationtestscenarios
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - integrationtestscenarios
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
<   - delete
<   - deletecollection
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1283,1295d1263
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: manage-integrationtestscenarios
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: manage-integrationtestscenarios
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 7784fe3a to 49b4da5b on Fri May 10 11:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 4ff19f69..9ff866c0 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7784fe3a/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1417c1417
<         image: quay.io/redhat-appstudio/integration-service:e21bfe97779abdab5a936d610fe23dc809e7ffec
---
>         image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
1508c1508
<             image: quay.io/redhat-appstudio/integration-service:e21bfe97779abdab5a936d610fe23dc809e7ffec
---
>             image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 7784fe3a to 49b4da5b on Fri May 10 11:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 4ff19f69..9ff866c0 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 7784fe3a to 49b4da5b on Fri May 10 11:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 4ff19f69..9ff866c0 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from a883cfdf to 7784fe3a on Fri May 10 07:53:58 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 081e79d9..ae759bcb 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index a97b6060..11af4b1b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a883cfdf to 7784fe3a on Fri May 10 07:53:58 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 081e79d9..ae759bcb 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index a97b6060..11af4b1b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a883cfdf/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1417c1417
<         image: quay.io/redhat-appstudio/integration-service:e21bfe97779abdab5a936d610fe23dc809e7ffec
---
>         image: quay.io/redhat-appstudio/integration-service:14af21f9615490404d7d543cf4d7e3f20e7cc3a7
1508c1508
<             image: quay.io/redhat-appstudio/integration-service:e21bfe97779abdab5a936d610fe23dc809e7ffec
---
>             image: quay.io/redhat-appstudio/integration-service:14af21f9615490404d7d543cf4d7e3f20e7cc3a7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from a883cfdf to 7784fe3a on Fri May 10 07:53:58 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 081e79d9..ae759bcb 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index a97b6060..11af4b1b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 14af21f9615490404d7d543cf4d7e3f20e7cc3a7
+  newTag: e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a883cfdf/development/components/integration/development/kustomize.out.yaml
1415c1415
<         image: quay.io/redhat-appstudio/integration-service:e21bfe97779abdab5a936d610fe23dc809e7ffec
---
>         image: quay.io/redhat-appstudio/integration-service:14af21f9615490404d7d543cf4d7e3f20e7cc3a7
1509c1509
<             image: quay.io/redhat-appstudio/integration-service:e21bfe97779abdab5a936d610fe23dc809e7ffec
---
>             image: quay.io/redhat-appstudio/integration-service:14af21f9615490404d7d543cf4d7e3f20e7cc3a7 
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
```
 
</details> 
<br> 


</div>
