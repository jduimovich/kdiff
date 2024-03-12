# kustomize changes tracked by commits 
### This file generated at Tue Mar 12 20:04:04 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9f3774c1 to fb7d6852 on Tue Mar 12 17:15:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
index 56f05e5b..aa17ccbc 100644
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging/kustomization.yaml
@@ -4,3 +4,8 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/staging/migration.patch.yaml b/argo-cd-apps/overlays/staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/staging/migration.patch.yaml
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
<h3>1: Staging changes from 9f3774c1 to fb7d6852 on Tue Mar 12 17:15:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
index 56f05e5b..aa17ccbc 100644
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging/kustomization.yaml
@@ -4,3 +4,8 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/staging/migration.patch.yaml b/argo-cd-apps/overlays/staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/staging/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (404 lines)</summary>  

``` 
./commit-9f3774c1/staging/app-of-apps-staging.yaml
23a24,33
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
66a77,86
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
104a125,136
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
142a175,186
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
182a227,238
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
221a278,289
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
259a328,337
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
298a377,388
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
337a428,439
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
361a464,473
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
400a513,522
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
446a569,580
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
480a615,624
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
514a659,670
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
547a704,715
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false
585a754,763
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
609a788,797
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
643a832,843
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
682a883,894
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
725a938,947
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
780a1003,1012
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
814a1047,1058
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
848a1093,1104
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
894a1151,1162
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
928a1197,1206
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
974a1253,1262
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
1012a1301,1312
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1054a1355,1366
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1088a1401,1412
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1134a1459,1468
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
1168a1503,1514
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1210a1557,1568
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false
1244a1603,1614
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false 
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
<h3>1: Development changes from 9f3774c1 to fb7d6852 on Tue Mar 12 17:15:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
index 56f05e5b..aa17ccbc 100644
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging/kustomization.yaml
@@ -4,3 +4,8 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/staging/migration.patch.yaml b/argo-cd-apps/overlays/staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/staging/migration.patch.yaml
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
<h3>2: Production changes from a08f5c59 to 9f3774c1 on Tue Mar 12 16:20:45 2024 </h3>  
 
<details> 
<summary>Git Diff (433 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..3ff8b7cf
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: filariow
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index a962287c..d4585ca9 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - dfodor.yaml
 - dperaza4dustbit.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - jhutar.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
new file mode 100644
index 00000000..1dd78280
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
new file mode 100644
index 00000000..f7e8e58e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: ban-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
new file mode 100644
index 00000000..dc3078af
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
new file mode 100644
index 00000000..f045f175
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
new file mode 100644
index 00000000..3b028bdc
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index bb4341d3..e208afed 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - approve-user-dfodor-host.yaml
 - approve-user-dperaza4dustbit-host.yaml
 - approve-user-ergonzal-host.yaml
+- approve-user-filariow-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
 - approve-user-jhutar-host.yaml
@@ -22,6 +23,7 @@ resources:
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
 - ban-user-dperaza4dustbit-host.yaml
+- ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
@@ -31,6 +33,7 @@ resources:
 - clusterrole-view-dfodor-host.yaml
 - clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-filariow-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
 - clusterrole-view-jhutar-host.yaml
@@ -44,6 +47,7 @@ resources:
 - deactivate-user-bkundu-host.yaml
 - deactivate-user-bsutter-host.yaml
 - deactivate-user-dperaza4dustbit-host.yaml
+- deactivate-user-filariow-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
@@ -53,6 +57,7 @@ resources:
 - gdpr-delete-bkundu-host.yaml
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-dperaza4dustbit-host.yaml
+- gdpr-delete-filariow-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-jhutar-host.yaml
 - gdpr-delete-mjobanek-host.yaml
@@ -63,11 +68,13 @@ resources:
 - promote-user-bkundu-host.yaml
 - promote-user-bsutter-host.yaml
 - promote-user-dperaza4dustbit-host.yaml
+- promote-user-filariow-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-dperaza4dustbit-host.yaml
+- restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
 - retarget-user-alkazako-host.yaml
@@ -77,6 +84,7 @@ resources:
 - retarget-user-dfodor-host.yaml
 - retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
new file mode 100644
index 00000000..a449f4d6
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
new file mode 100644
index 00000000..96eec086
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
new file mode 100644
index 00000000..79c1dbda
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..9b6a2301
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: filariow
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index a962287c..d4585ca9 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - dfodor.yaml
 - dperaza4dustbit.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - jhutar.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
new file mode 100644
index 00000000..cc61c367
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-filariow-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 6dc88865..2f94c063 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - clusterrole-view-dfodor-member.yaml
 - clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-filariow-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
 - clusterrole-view-jhutar-member.yaml
@@ -23,5 +24,6 @@ resources:
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
+- restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
new file mode 100644
index 00000000..a97bca8b
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-filariow-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index f0611d27..54d01d63 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -9,6 +9,29 @@ clusters:
 
 serviceAccounts:
 ## service accounts to be used by humans via `sandbox-cli`
+- name: filariow
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - restart-deployment
+      - approve-user
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      clusterRoles:
+      - view
+
 - name: dperaza4dustbit
   host:
     roleBindings: 
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
<h3>2: Staging changes from a08f5c59 to 9f3774c1 on Tue Mar 12 16:20:45 2024 </h3>  
 
<details> 
<summary>Git Diff (433 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..3ff8b7cf
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: filariow
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index a962287c..d4585ca9 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - dfodor.yaml
 - dperaza4dustbit.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - jhutar.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
new file mode 100644
index 00000000..1dd78280
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
new file mode 100644
index 00000000..f7e8e58e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: ban-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
new file mode 100644
index 00000000..dc3078af
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
new file mode 100644
index 00000000..f045f175
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
new file mode 100644
index 00000000..3b028bdc
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index bb4341d3..e208afed 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - approve-user-dfodor-host.yaml
 - approve-user-dperaza4dustbit-host.yaml
 - approve-user-ergonzal-host.yaml
+- approve-user-filariow-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
 - approve-user-jhutar-host.yaml
@@ -22,6 +23,7 @@ resources:
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
 - ban-user-dperaza4dustbit-host.yaml
+- ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
@@ -31,6 +33,7 @@ resources:
 - clusterrole-view-dfodor-host.yaml
 - clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-filariow-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
 - clusterrole-view-jhutar-host.yaml
@@ -44,6 +47,7 @@ resources:
 - deactivate-user-bkundu-host.yaml
 - deactivate-user-bsutter-host.yaml
 - deactivate-user-dperaza4dustbit-host.yaml
+- deactivate-user-filariow-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
@@ -53,6 +57,7 @@ resources:
 - gdpr-delete-bkundu-host.yaml
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-dperaza4dustbit-host.yaml
+- gdpr-delete-filariow-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-jhutar-host.yaml
 - gdpr-delete-mjobanek-host.yaml
@@ -63,11 +68,13 @@ resources:
 - promote-user-bkundu-host.yaml
 - promote-user-bsutter-host.yaml
 - promote-user-dperaza4dustbit-host.yaml
+- promote-user-filariow-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-dperaza4dustbit-host.yaml
+- restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
 - retarget-user-alkazako-host.yaml
@@ -77,6 +84,7 @@ resources:
 - retarget-user-dfodor-host.yaml
 - retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
new file mode 100644
index 00000000..a449f4d6
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
new file mode 100644
index 00000000..96eec086
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
new file mode 100644
index 00000000..79c1dbda
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..9b6a2301
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: filariow
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index a962287c..d4585ca9 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - dfodor.yaml
 - dperaza4dustbit.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - jhutar.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
new file mode 100644
index 00000000..cc61c367
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-filariow-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 6dc88865..2f94c063 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - clusterrole-view-dfodor-member.yaml
 - clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-filariow-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
 - clusterrole-view-jhutar-member.yaml
@@ -23,5 +24,6 @@ resources:
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
+- restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
new file mode 100644
index 00000000..a97bca8b
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-filariow-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index f0611d27..54d01d63 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -9,6 +9,29 @@ clusters:
 
 serviceAccounts:
 ## service accounts to be used by humans via `sandbox-cli`
+- name: filariow
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - restart-deployment
+      - approve-user
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      clusterRoles:
+      - view
+
 - name: dperaza4dustbit
   host:
     roleBindings: 
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
<h3>2: Development changes from a08f5c59 to 9f3774c1 on Tue Mar 12 16:20:45 2024 </h3>  
 
<details> 
<summary>Git Diff (433 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..3ff8b7cf
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: filariow
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index a962287c..d4585ca9 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - dfodor.yaml
 - dperaza4dustbit.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - jhutar.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
new file mode 100644
index 00000000..1dd78280
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
new file mode 100644
index 00000000..f7e8e58e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: ban-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
new file mode 100644
index 00000000..dc3078af
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
new file mode 100644
index 00000000..f045f175
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
new file mode 100644
index 00000000..3b028bdc
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index bb4341d3..e208afed 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - approve-user-dfodor-host.yaml
 - approve-user-dperaza4dustbit-host.yaml
 - approve-user-ergonzal-host.yaml
+- approve-user-filariow-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
 - approve-user-jhutar-host.yaml
@@ -22,6 +23,7 @@ resources:
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
 - ban-user-dperaza4dustbit-host.yaml
+- ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
@@ -31,6 +33,7 @@ resources:
 - clusterrole-view-dfodor-host.yaml
 - clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-filariow-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
 - clusterrole-view-jhutar-host.yaml
@@ -44,6 +47,7 @@ resources:
 - deactivate-user-bkundu-host.yaml
 - deactivate-user-bsutter-host.yaml
 - deactivate-user-dperaza4dustbit-host.yaml
+- deactivate-user-filariow-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
@@ -53,6 +57,7 @@ resources:
 - gdpr-delete-bkundu-host.yaml
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-dperaza4dustbit-host.yaml
+- gdpr-delete-filariow-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-jhutar-host.yaml
 - gdpr-delete-mjobanek-host.yaml
@@ -63,11 +68,13 @@ resources:
 - promote-user-bkundu-host.yaml
 - promote-user-bsutter-host.yaml
 - promote-user-dperaza4dustbit-host.yaml
+- promote-user-filariow-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-dperaza4dustbit-host.yaml
+- restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
 - retarget-user-alkazako-host.yaml
@@ -77,6 +84,7 @@ resources:
 - retarget-user-dfodor-host.yaml
 - retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
new file mode 100644
index 00000000..a449f4d6
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
new file mode 100644
index 00000000..96eec086
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
new file mode 100644
index 00000000..79c1dbda
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-filariow-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..9b6a2301
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: filariow
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index a962287c..d4585ca9 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - dfodor.yaml
 - dperaza4dustbit.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - jhutar.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
new file mode 100644
index 00000000..cc61c367
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-filariow-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 6dc88865..2f94c063 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - clusterrole-view-dfodor-member.yaml
 - clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-filariow-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
 - clusterrole-view-jhutar-member.yaml
@@ -23,5 +24,6 @@ resources:
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
+- restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
new file mode 100644
index 00000000..a97bca8b
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-filariow-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: filariow
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index f0611d27..54d01d63 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -9,6 +9,29 @@ clusters:
 
 serviceAccounts:
 ## service accounts to be used by humans via `sandbox-cli`
+- name: filariow
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - restart-deployment
+      - approve-user
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      clusterRoles:
+      - view
+
 - name: dperaza4dustbit
   host:
     roleBindings: 
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
<h3>3: Production changes from b8fee7df to a08f5c59 on Tue Mar 12 15:28:53 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
index b3f9c675..09bbdf08 100644
--- a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -15,7 +15,5 @@ spec:
               "-auth_mode",
               "token",
               "-check_owner=false",
-              "-completed_run_grace_period",
-              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
-              "2h",
+              "-completed_run_grace_period=2h",
             ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index abdaa837..52e80606 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -33,3 +33,12 @@ patches:
       namespace: tekton-results
       name: tekton-results-watcher
   - path: increase-results-pruner-gracePeriod.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: reduce-watcher-cpu-mem-reqs.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
new file mode 100644
index 00000000..8e50d3af
--- /dev/null
+++ b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/cpu
+  value: "100m"
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/memory
+  value: "64Mi"
\ No newline at end of file 
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
<h3>3: Staging changes from b8fee7df to a08f5c59 on Tue Mar 12 15:28:53 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
index b3f9c675..09bbdf08 100644
--- a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -15,7 +15,5 @@ spec:
               "-auth_mode",
               "token",
               "-check_owner=false",
-              "-completed_run_grace_period",
-              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
-              "2h",
+              "-completed_run_grace_period=2h",
             ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index abdaa837..52e80606 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -33,3 +33,12 @@ patches:
       namespace: tekton-results
       name: tekton-results-watcher
   - path: increase-results-pruner-gracePeriod.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: reduce-watcher-cpu-mem-reqs.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
new file mode 100644
index 00000000..8e50d3af
--- /dev/null
+++ b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/cpu
+  value: "100m"
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/memory
+  value: "64Mi"
\ No newline at end of file 
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
<h3>3: Development changes from b8fee7df to a08f5c59 on Tue Mar 12 15:28:53 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
index b3f9c675..09bbdf08 100644
--- a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -15,7 +15,5 @@ spec:
               "-auth_mode",
               "token",
               "-check_owner=false",
-              "-completed_run_grace_period",
-              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
-              "2h",
+              "-completed_run_grace_period=2h",
             ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index abdaa837..52e80606 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -33,3 +33,12 @@ patches:
       namespace: tekton-results
       name: tekton-results-watcher
   - path: increase-results-pruner-gracePeriod.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: reduce-watcher-cpu-mem-reqs.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
new file mode 100644
index 00000000..8e50d3af
--- /dev/null
+++ b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/cpu
+  value: "100m"
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/memory
+  value: "64Mi"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-b8fee7df/development/components/pipeline-service/development/kustomize.out.yaml
1550c1550,1551
<         - -completed_run_grace_period=2h
---
>         - -completed_run_grace_period
>         - 2h
1580,1581c1581,1582
<             cpu: 100m
<             memory: 64Mi
---
>             cpu: 250m
>             memory: 2Gi 
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
<h3>4: Production changes from ddb34f64 to b8fee7df on Tue Mar 12 13:30:17 2024 </h3>  
 
<details> 
<summary>Git Diff (1546 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 9d69d9e1..ff5d860f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -21,9 +21,6 @@ resources:
 - ban-user-alkazako-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -47,8 +44,6 @@ resources:
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-mjobanek-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
@@ -62,10 +57,8 @@ resources:
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
similarity index 87%
rename from components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
rename to components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index 07b47fe5..d8438153 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -7,12 +7,12 @@ kind: RoleBinding
 metadata:
   labels:
     provider: sandbox-sre
-  name: view-secrets-fmuntean-host
+  name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
-  name: view-secrets-host
+  name: retarget-user-host
 subjects:
 - kind: ServiceAccount
   name: fmuntean
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 3cfc9815..4a33f24c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,9 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -21,12 +18,7 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
index 77c382b3..28283b65 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,18 +23,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -44,28 +38,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -73,23 +61,20 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
+      - retarget-user
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
deleted file mode 100644
index 1682c6c1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
deleted file mode 100644
index 495a5754..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 2f967577..bb4341d3 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -24,10 +24,6 @@ resources:
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-dperaza4dustbit-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -62,9 +58,6 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-dperaza4dustbit-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -91,7 +84,3 @@ resources:
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-dperaza4dustbit-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
deleted file mode 100644
index 7d767237..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
deleted file mode 100644
index 07b47fe5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
deleted file mode 100644
index 83a28fe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3df642e4..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 7956116a..6dc88865 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,10 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-dperaza4dustbit-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -24,15 +20,8 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-dperaza4dustbit-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-dperaza4dustbit-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3ea1c71b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 63789e8d..f0611d27 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,28 +23,22 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: alkazako
   host:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -54,18 +46,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -73,28 +61,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -102,7 +84,6 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -110,16 +91,13 @@ serviceAccounts:
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu 
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
<h3>4: Staging changes from ddb34f64 to b8fee7df on Tue Mar 12 13:30:17 2024 </h3>  
 
<details> 
<summary>Git Diff (1546 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 9d69d9e1..ff5d860f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -21,9 +21,6 @@ resources:
 - ban-user-alkazako-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -47,8 +44,6 @@ resources:
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-mjobanek-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
@@ -62,10 +57,8 @@ resources:
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
similarity index 87%
rename from components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
rename to components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index 07b47fe5..d8438153 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -7,12 +7,12 @@ kind: RoleBinding
 metadata:
   labels:
     provider: sandbox-sre
-  name: view-secrets-fmuntean-host
+  name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
-  name: view-secrets-host
+  name: retarget-user-host
 subjects:
 - kind: ServiceAccount
   name: fmuntean
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 3cfc9815..4a33f24c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,9 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -21,12 +18,7 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
index 77c382b3..28283b65 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,18 +23,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -44,28 +38,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -73,23 +61,20 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
+      - retarget-user
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
deleted file mode 100644
index 1682c6c1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
deleted file mode 100644
index 495a5754..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 2f967577..bb4341d3 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -24,10 +24,6 @@ resources:
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-dperaza4dustbit-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -62,9 +58,6 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-dperaza4dustbit-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -91,7 +84,3 @@ resources:
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-dperaza4dustbit-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
deleted file mode 100644
index 7d767237..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
deleted file mode 100644
index 07b47fe5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
deleted file mode 100644
index 83a28fe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3df642e4..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 7956116a..6dc88865 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,10 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-dperaza4dustbit-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -24,15 +20,8 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-dperaza4dustbit-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-dperaza4dustbit-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3ea1c71b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 63789e8d..f0611d27 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,28 +23,22 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: alkazako
   host:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -54,18 +46,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -73,28 +61,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -102,7 +84,6 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -110,16 +91,13 @@ serviceAccounts:
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu 
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
<h3>4: Development changes from ddb34f64 to b8fee7df on Tue Mar 12 13:30:17 2024 </h3>  
 
<details> 
<summary>Git Diff (1546 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 9d69d9e1..ff5d860f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -21,9 +21,6 @@ resources:
 - ban-user-alkazako-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -47,8 +44,6 @@ resources:
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-mjobanek-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
@@ -62,10 +57,8 @@ resources:
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
similarity index 87%
rename from components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
rename to components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index 07b47fe5..d8438153 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -7,12 +7,12 @@ kind: RoleBinding
 metadata:
   labels:
     provider: sandbox-sre
-  name: view-secrets-fmuntean-host
+  name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
-  name: view-secrets-host
+  name: retarget-user-host
 subjects:
 - kind: ServiceAccount
   name: fmuntean
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 3cfc9815..4a33f24c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,9 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -21,12 +18,7 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
index 77c382b3..28283b65 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,18 +23,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -44,28 +38,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -73,23 +61,20 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
+      - retarget-user
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
deleted file mode 100644
index 1682c6c1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
deleted file mode 100644
index 495a5754..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 2f967577..bb4341d3 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -24,10 +24,6 @@ resources:
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-dperaza4dustbit-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -62,9 +58,6 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-dperaza4dustbit-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -91,7 +84,3 @@ resources:
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-dperaza4dustbit-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
deleted file mode 100644
index 7d767237..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
deleted file mode 100644
index 07b47fe5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
deleted file mode 100644
index 83a28fe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3df642e4..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 7956116a..6dc88865 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,10 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-dperaza4dustbit-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -24,15 +20,8 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-dperaza4dustbit-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-dperaza4dustbit-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3ea1c71b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 63789e8d..f0611d27 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,28 +23,22 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: alkazako
   host:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -54,18 +46,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -73,28 +61,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -102,7 +84,6 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -110,16 +91,13 @@ serviceAccounts:
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu 
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
