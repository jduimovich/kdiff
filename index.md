# kustomize changes tracked by commits 
### This file generated at Tue Apr 16 20:03:16 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 60523233 to 7bbdb100 on Tue Apr 16 19:13:08 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 4ce01c97..1555167e 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -64,3 +64,15 @@ kind: ApplicationSet
 metadata:
   name: ca-bundle
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: toolchain-host-operator
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: toolchain-member-operator
+$patch: delete
diff --git a/components/sandbox/toolchain-host-operator/development/kustomization.yaml b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
deleted file mode 100644
index e609fb24..00000000
--- a/components/sandbox/toolchain-host-operator/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources: []
diff --git a/components/sandbox/toolchain-member-operator/development/kustomization.yaml b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
deleted file mode 100644
index e609fb24..00000000
--- a/components/sandbox/toolchain-member-operator/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources: [] 
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
<h3>1: Staging changes from 60523233 to 7bbdb100 on Tue Apr 16 19:13:08 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 4ce01c97..1555167e 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -64,3 +64,15 @@ kind: ApplicationSet
 metadata:
   name: ca-bundle
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: toolchain-host-operator
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: toolchain-member-operator
+$patch: delete
diff --git a/components/sandbox/toolchain-host-operator/development/kustomization.yaml b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
deleted file mode 100644
index e609fb24..00000000
--- a/components/sandbox/toolchain-host-operator/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources: []
diff --git a/components/sandbox/toolchain-member-operator/development/kustomization.yaml b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
deleted file mode 100644
index e609fb24..00000000
--- a/components/sandbox/toolchain-member-operator/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources: [] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 60523233 to 7bbdb100 on Tue Apr 16 19:13:08 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 4ce01c97..1555167e 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -64,3 +64,15 @@ kind: ApplicationSet
 metadata:
   name: ca-bundle
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: toolchain-host-operator
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: toolchain-member-operator
+$patch: delete
diff --git a/components/sandbox/toolchain-host-operator/development/kustomization.yaml b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
deleted file mode 100644
index e609fb24..00000000
--- a/components/sandbox/toolchain-host-operator/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources: []
diff --git a/components/sandbox/toolchain-member-operator/development/kustomization.yaml b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
deleted file mode 100644
index e609fb24..00000000
--- a/components/sandbox/toolchain-member-operator/development/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources: [] 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (102 lines)</summary>  

``` 
./commit-60523233/development/app-of-apps-development.yaml
1234a1235,1334
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: toolchain-host-operator
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/sandbox/toolchain-host-operator
>       - list:
>           elements:
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-stg-host
>             values.clusterDir: stone-stg-host
>           - nameNormalized: stone-prd-host1
>             values.clusterDir: stone-prd-host1
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: toolchain-host-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: toolchain-host-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
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
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: toolchain-member-operator
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/sandbox/toolchain-member-operator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: toolchain-member-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: toolchain-member-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from c724f166 to 60523233 on Tue Apr 16 14:30:23 2024 </h3>  
 
<details> 
<summary>Git Diff (1537 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..15b0babb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
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
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..3ff8b7cf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index 67bd967a..67e04604 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - eedri.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - hugares.yaml
@@ -19,4 +21,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..b8ae5a02
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..63b312b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
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
+  name: approve-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
new file mode 100644
index 00000000..1dd78280
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
new file mode 100644
index 00000000..7f13e068
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
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
+  name: approve-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..ec73894e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
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
+  name: ban-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
new file mode 100644
index 00000000..f7e8e58e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
new file mode 100644
index 00000000..78995b3c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
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
+  name: ban-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..71eb013c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
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
+  name: clusterrole-view-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
new file mode 100644
index 00000000..dc3078af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
new file mode 100644
index 00000000..ef2cb845
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
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
+  name: clusterrole-view-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..f80bddb1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
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
+  name: deactivate-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
new file mode 100644
index 00000000..f045f175
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
new file mode 100644
index 00000000..1104ebe2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
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
+  name: deactivate-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..785918b5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
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
+  name: gdpr-delete-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
new file mode 100644
index 00000000..3b028bdc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
new file mode 100644
index 00000000..8b484a30
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
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
+  name: gdpr-delete-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 4c6fc4f4..8ce5e802 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - approve-user-bkundu-host.yaml
 - approve-user-bsutter-host.yaml
 - approve-user-dfodor-host.yaml
+- approve-user-dperaza4dustbit-host.yaml
 - approve-user-eedri-host.yaml
 - approve-user-ergonzal-host.yaml
+- approve-user-filariow-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
 - approve-user-hugares-host.yaml
@@ -19,17 +21,23 @@ resources:
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
 - approve-user-rorai-host.yaml
+- approve-user-sadlerap-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
+- ban-user-dperaza4dustbit-host.yaml
+- ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
+- ban-user-sadlerap-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
 - clusterrole-view-bsutter-host.yaml
 - clusterrole-view-dfodor-host.yaml
+- clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-eedri-host.yaml
 - clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-filariow-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
 - clusterrole-view-hugares-host.yaml
@@ -37,37 +45,53 @@ resources:
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
 - clusterrole-view-rorai-host.yaml
+- clusterrole-view-sadlerap-host.yaml
 - clusterrole-view-saviv-host.yaml
 - deactivate-user-alkazako-host.yaml
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bsutter-host.yaml
+- deactivate-user-dperaza4dustbit-host.yaml
+- deactivate-user-filariow-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-hugares-host.yaml
 - deactivate-user-mjobanek-host.yaml
+- deactivate-user-sadlerap-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bsutter-host.yaml
+- gdpr-delete-dperaza4dustbit-host.yaml
+- gdpr-delete-filariow-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-hugares-host.yaml
 - gdpr-delete-mjobanek-host.yaml
+- gdpr-delete-sadlerap-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
+- promote-user-dperaza4dustbit-host.yaml
+- promote-user-filariow-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-hugares-host.yaml
 - promote-user-mjobanek-host.yaml
+- promote-user-sadlerap-host.yaml
 - restart-deployment-alkazako-host.yaml
+- restart-deployment-dperaza4dustbit-host.yaml
+- restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
+- restart-deployment-sadlerap-host.yaml
 - retarget-user-alkazako-host.yaml
 - retarget-user-bcook-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-eedri-host.yaml
+- retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-hugares-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
+- retarget-user-sadlerap-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..69f794bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
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
+  name: promote-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
new file mode 100644
index 00000000..a449f4d6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
new file mode 100644
index 00000000..36ab30e7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
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
+  name: promote-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..07e1b1bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
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
+  name: restart-deployment-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
new file mode 100644
index 00000000..96eec086
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
new file mode 100644
index 00000000..37a0f143
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
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
+  name: restart-deployment-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..50d011c0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
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
+  name: retarget-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
new file mode 100644
index 00000000..79c1dbda
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
new file mode 100644
index 00000000..00852d67
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
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
+  name: retarget-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..01dbca0e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
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
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..9b6a2301
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index 67bd967a..67e04604 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - eedri.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - hugares.yaml
@@ -19,4 +21,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..4f3cf84c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..9f5013c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
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
+  name: clusterrole-view-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
new file mode 100644
index 00000000..cc61c367
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
new file mode 100644
index 00000000..f8675a1f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
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
+  name: clusterrole-view-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 879ef9a7..240be135 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - clusterrole-view-bkundu-member.yaml
 - clusterrole-view-bsutter-member.yaml
 - clusterrole-view-dfodor-member.yaml
+- clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-eedri-member.yaml
 - clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-filariow-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
 - clusterrole-view-hugares-member.yaml
@@ -19,8 +21,12 @@ resources:
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
+- clusterrole-view-sadlerap-member.yaml
 - clusterrole-view-saviv-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
+- restart-deployment-dperaza4dustbit-member.yaml
+- restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
+- restart-deployment-sadlerap-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..b2a212c3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
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
+  name: restart-deployment-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
new file mode 100644
index 00000000..a97bca8b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
new file mode 100644
index 00000000..db508bcf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
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
+  name: restart-deployment-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index c6286bd5..ca1193e4 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -77,6 +77,75 @@ serviceAccounts:
       clusterRoles:
       - view
 
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
+- name: dperaza4dustbit
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
+- name: sadlerap
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
 - name: bkundu
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index d4585ca9..99dd4771 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -20,4 +20,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..b8ae5a02
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
new file mode 100644
index 00000000..7f13e068
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
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
+  name: approve-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
new file mode 100644
index 00000000..78995b3c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
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
+  name: ban-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
new file mode 100644
index 00000000..ef2cb845
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
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
+  name: clusterrole-view-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
new file mode 100644
index 00000000..1104ebe2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
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
+  name: deactivate-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
new file mode 100644
index 00000000..8b484a30
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
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
+  name: gdpr-delete-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index e208afed..a2a6232c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -20,12 +20,14 @@ resources:
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
 - approve-user-rorai-host.yaml
+- approve-user-sadlerap-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
+- ban-user-sadlerap-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -41,6 +43,7 @@ resources:
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
 - clusterrole-view-rorai-host.yaml
+- clusterrole-view-sadlerap-host.yaml
 - clusterrole-view-saviv-host.yaml
 - deactivate-user-alkazako-host.yaml
 - deactivate-user-bcook-host.yaml
@@ -52,6 +55,7 @@ resources:
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
 - deactivate-user-rorai-host.yaml
+- deactivate-user-sadlerap-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bkundu-host.yaml
@@ -63,6 +67,7 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
+- gdpr-delete-sadlerap-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -72,11 +77,13 @@ resources:
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
+- promote-user-sadlerap-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-dperaza4dustbit-host.yaml
 - restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
+- restart-deployment-sadlerap-host.yaml
 - retarget-user-alkazako-host.yaml
 - retarget-user-bcook-host.yaml
 - retarget-user-bkundu-host.yaml
@@ -91,4 +98,5 @@ resources:
 - retarget-user-pdave-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
+- retarget-user-sadlerap-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
new file mode 100644
index 00000000..36ab30e7
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
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
+  name: promote-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
new file mode 100644
index 00000000..37a0f143
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
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
+  name: restart-deployment-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
new file mode 100644
index 00000000..00852d67
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
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
+  name: retarget-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index d4585ca9..99dd4771 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -20,4 +20,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..4f3cf84c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
new file mode 100644
index 00000000..f8675a1f
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
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
+  name: clusterrole-view-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 2f94c063..1c5d568f 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -20,6 +20,7 @@ resources:
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
+- clusterrole-view-sadlerap-member.yaml
 - clusterrole-view-saviv-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
@@ -27,3 +28,4 @@ resources:
 - restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
+- restart-deployment-sadlerap-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
new file mode 100644
index 00000000..db508bcf
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
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
+  name: restart-deployment-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index 2b0e77f7..3d873917 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -55,6 +55,29 @@ serviceAccounts:
       clusterRoles:
       - view
 
+- name: sadlerap
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
 - name: alkazako
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c724f166 to 60523233 on Tue Apr 16 14:30:23 2024 </h3>  
 
<details> 
<summary>Git Diff (1537 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..15b0babb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
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
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..3ff8b7cf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index 67bd967a..67e04604 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - eedri.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - hugares.yaml
@@ -19,4 +21,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..b8ae5a02
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..63b312b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
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
+  name: approve-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
new file mode 100644
index 00000000..1dd78280
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
new file mode 100644
index 00000000..7f13e068
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
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
+  name: approve-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..ec73894e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
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
+  name: ban-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
new file mode 100644
index 00000000..f7e8e58e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
new file mode 100644
index 00000000..78995b3c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
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
+  name: ban-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..71eb013c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
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
+  name: clusterrole-view-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
new file mode 100644
index 00000000..dc3078af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
new file mode 100644
index 00000000..ef2cb845
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
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
+  name: clusterrole-view-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..f80bddb1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
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
+  name: deactivate-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
new file mode 100644
index 00000000..f045f175
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
new file mode 100644
index 00000000..1104ebe2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
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
+  name: deactivate-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..785918b5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
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
+  name: gdpr-delete-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
new file mode 100644
index 00000000..3b028bdc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
new file mode 100644
index 00000000..8b484a30
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
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
+  name: gdpr-delete-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 4c6fc4f4..8ce5e802 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - approve-user-bkundu-host.yaml
 - approve-user-bsutter-host.yaml
 - approve-user-dfodor-host.yaml
+- approve-user-dperaza4dustbit-host.yaml
 - approve-user-eedri-host.yaml
 - approve-user-ergonzal-host.yaml
+- approve-user-filariow-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
 - approve-user-hugares-host.yaml
@@ -19,17 +21,23 @@ resources:
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
 - approve-user-rorai-host.yaml
+- approve-user-sadlerap-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
+- ban-user-dperaza4dustbit-host.yaml
+- ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
+- ban-user-sadlerap-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
 - clusterrole-view-bsutter-host.yaml
 - clusterrole-view-dfodor-host.yaml
+- clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-eedri-host.yaml
 - clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-filariow-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
 - clusterrole-view-hugares-host.yaml
@@ -37,37 +45,53 @@ resources:
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
 - clusterrole-view-rorai-host.yaml
+- clusterrole-view-sadlerap-host.yaml
 - clusterrole-view-saviv-host.yaml
 - deactivate-user-alkazako-host.yaml
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bsutter-host.yaml
+- deactivate-user-dperaza4dustbit-host.yaml
+- deactivate-user-filariow-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-hugares-host.yaml
 - deactivate-user-mjobanek-host.yaml
+- deactivate-user-sadlerap-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bsutter-host.yaml
+- gdpr-delete-dperaza4dustbit-host.yaml
+- gdpr-delete-filariow-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-hugares-host.yaml
 - gdpr-delete-mjobanek-host.yaml
+- gdpr-delete-sadlerap-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
+- promote-user-dperaza4dustbit-host.yaml
+- promote-user-filariow-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-hugares-host.yaml
 - promote-user-mjobanek-host.yaml
+- promote-user-sadlerap-host.yaml
 - restart-deployment-alkazako-host.yaml
+- restart-deployment-dperaza4dustbit-host.yaml
+- restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
+- restart-deployment-sadlerap-host.yaml
 - retarget-user-alkazako-host.yaml
 - retarget-user-bcook-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-eedri-host.yaml
+- retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-hugares-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
+- retarget-user-sadlerap-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..69f794bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
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
+  name: promote-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
new file mode 100644
index 00000000..a449f4d6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
new file mode 100644
index 00000000..36ab30e7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
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
+  name: promote-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..07e1b1bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
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
+  name: restart-deployment-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
new file mode 100644
index 00000000..96eec086
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
new file mode 100644
index 00000000..37a0f143
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
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
+  name: restart-deployment-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..50d011c0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
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
+  name: retarget-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
new file mode 100644
index 00000000..79c1dbda
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
new file mode 100644
index 00000000..00852d67
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
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
+  name: retarget-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..01dbca0e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
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
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..9b6a2301
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index 67bd967a..67e04604 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - eedri.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - hugares.yaml
@@ -19,4 +21,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..4f3cf84c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..9f5013c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
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
+  name: clusterrole-view-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
new file mode 100644
index 00000000..cc61c367
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
new file mode 100644
index 00000000..f8675a1f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
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
+  name: clusterrole-view-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 879ef9a7..240be135 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - clusterrole-view-bkundu-member.yaml
 - clusterrole-view-bsutter-member.yaml
 - clusterrole-view-dfodor-member.yaml
+- clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-eedri-member.yaml
 - clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-filariow-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
 - clusterrole-view-hugares-member.yaml
@@ -19,8 +21,12 @@ resources:
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
+- clusterrole-view-sadlerap-member.yaml
 - clusterrole-view-saviv-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
+- restart-deployment-dperaza4dustbit-member.yaml
+- restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
+- restart-deployment-sadlerap-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..b2a212c3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
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
+  name: restart-deployment-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
new file mode 100644
index 00000000..a97bca8b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
new file mode 100644
index 00000000..db508bcf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
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
+  name: restart-deployment-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index c6286bd5..ca1193e4 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -77,6 +77,75 @@ serviceAccounts:
       clusterRoles:
       - view
 
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
+- name: dperaza4dustbit
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
+- name: sadlerap
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
 - name: bkundu
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index d4585ca9..99dd4771 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -20,4 +20,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..b8ae5a02
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
new file mode 100644
index 00000000..7f13e068
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
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
+  name: approve-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
new file mode 100644
index 00000000..78995b3c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
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
+  name: ban-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
new file mode 100644
index 00000000..ef2cb845
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
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
+  name: clusterrole-view-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
new file mode 100644
index 00000000..1104ebe2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
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
+  name: deactivate-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
new file mode 100644
index 00000000..8b484a30
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
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
+  name: gdpr-delete-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index e208afed..a2a6232c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -20,12 +20,14 @@ resources:
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
 - approve-user-rorai-host.yaml
+- approve-user-sadlerap-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
+- ban-user-sadlerap-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -41,6 +43,7 @@ resources:
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
 - clusterrole-view-rorai-host.yaml
+- clusterrole-view-sadlerap-host.yaml
 - clusterrole-view-saviv-host.yaml
 - deactivate-user-alkazako-host.yaml
 - deactivate-user-bcook-host.yaml
@@ -52,6 +55,7 @@ resources:
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
 - deactivate-user-rorai-host.yaml
+- deactivate-user-sadlerap-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bkundu-host.yaml
@@ -63,6 +67,7 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
+- gdpr-delete-sadlerap-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -72,11 +77,13 @@ resources:
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
+- promote-user-sadlerap-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-dperaza4dustbit-host.yaml
 - restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
+- restart-deployment-sadlerap-host.yaml
 - retarget-user-alkazako-host.yaml
 - retarget-user-bcook-host.yaml
 - retarget-user-bkundu-host.yaml
@@ -91,4 +98,5 @@ resources:
 - retarget-user-pdave-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
+- retarget-user-sadlerap-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
new file mode 100644
index 00000000..36ab30e7
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
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
+  name: promote-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
new file mode 100644
index 00000000..37a0f143
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
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
+  name: restart-deployment-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
new file mode 100644
index 00000000..00852d67
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
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
+  name: retarget-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index d4585ca9..99dd4771 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -20,4 +20,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..4f3cf84c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
new file mode 100644
index 00000000..f8675a1f
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
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
+  name: clusterrole-view-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 2f94c063..1c5d568f 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -20,6 +20,7 @@ resources:
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
+- clusterrole-view-sadlerap-member.yaml
 - clusterrole-view-saviv-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
@@ -27,3 +28,4 @@ resources:
 - restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
+- restart-deployment-sadlerap-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
new file mode 100644
index 00000000..db508bcf
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
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
+  name: restart-deployment-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index 2b0e77f7..3d873917 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -55,6 +55,29 @@ serviceAccounts:
       clusterRoles:
       - view
 
+- name: sadlerap
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
 - name: alkazako
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c724f166 to 60523233 on Tue Apr 16 14:30:23 2024 </h3>  
 
<details> 
<summary>Git Diff (1537 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..15b0babb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
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
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..3ff8b7cf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index 67bd967a..67e04604 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - eedri.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - hugares.yaml
@@ -19,4 +21,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..b8ae5a02
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..63b312b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
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
+  name: approve-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
new file mode 100644
index 00000000..1dd78280
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
new file mode 100644
index 00000000..7f13e068
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
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
+  name: approve-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..ec73894e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
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
+  name: ban-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
new file mode 100644
index 00000000..f7e8e58e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
new file mode 100644
index 00000000..78995b3c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
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
+  name: ban-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..71eb013c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
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
+  name: clusterrole-view-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
new file mode 100644
index 00000000..dc3078af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
new file mode 100644
index 00000000..ef2cb845
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
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
+  name: clusterrole-view-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..f80bddb1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
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
+  name: deactivate-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
new file mode 100644
index 00000000..f045f175
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
new file mode 100644
index 00000000..1104ebe2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
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
+  name: deactivate-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..785918b5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
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
+  name: gdpr-delete-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
new file mode 100644
index 00000000..3b028bdc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
new file mode 100644
index 00000000..8b484a30
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
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
+  name: gdpr-delete-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 4c6fc4f4..8ce5e802 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - approve-user-bkundu-host.yaml
 - approve-user-bsutter-host.yaml
 - approve-user-dfodor-host.yaml
+- approve-user-dperaza4dustbit-host.yaml
 - approve-user-eedri-host.yaml
 - approve-user-ergonzal-host.yaml
+- approve-user-filariow-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
 - approve-user-hugares-host.yaml
@@ -19,17 +21,23 @@ resources:
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
 - approve-user-rorai-host.yaml
+- approve-user-sadlerap-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
+- ban-user-dperaza4dustbit-host.yaml
+- ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
+- ban-user-sadlerap-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
 - clusterrole-view-bsutter-host.yaml
 - clusterrole-view-dfodor-host.yaml
+- clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-eedri-host.yaml
 - clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-filariow-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
 - clusterrole-view-hugares-host.yaml
@@ -37,37 +45,53 @@ resources:
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
 - clusterrole-view-rorai-host.yaml
+- clusterrole-view-sadlerap-host.yaml
 - clusterrole-view-saviv-host.yaml
 - deactivate-user-alkazako-host.yaml
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bsutter-host.yaml
+- deactivate-user-dperaza4dustbit-host.yaml
+- deactivate-user-filariow-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-hugares-host.yaml
 - deactivate-user-mjobanek-host.yaml
+- deactivate-user-sadlerap-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bsutter-host.yaml
+- gdpr-delete-dperaza4dustbit-host.yaml
+- gdpr-delete-filariow-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-hugares-host.yaml
 - gdpr-delete-mjobanek-host.yaml
+- gdpr-delete-sadlerap-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
+- promote-user-dperaza4dustbit-host.yaml
+- promote-user-filariow-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-hugares-host.yaml
 - promote-user-mjobanek-host.yaml
+- promote-user-sadlerap-host.yaml
 - restart-deployment-alkazako-host.yaml
+- restart-deployment-dperaza4dustbit-host.yaml
+- restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
+- restart-deployment-sadlerap-host.yaml
 - retarget-user-alkazako-host.yaml
 - retarget-user-bcook-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-eedri-host.yaml
+- retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-hugares-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
+- retarget-user-sadlerap-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..69f794bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
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
+  name: promote-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
new file mode 100644
index 00000000..a449f4d6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
new file mode 100644
index 00000000..36ab30e7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
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
+  name: promote-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..07e1b1bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
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
+  name: restart-deployment-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
new file mode 100644
index 00000000..96eec086
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
new file mode 100644
index 00000000..37a0f143
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
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
+  name: restart-deployment-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..50d011c0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
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
+  name: retarget-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
new file mode 100644
index 00000000..79c1dbda
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
new file mode 100644
index 00000000..00852d67
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
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
+  name: retarget-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..01dbca0e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
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
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
new file mode 100644
index 00000000..9b6a2301
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index 67bd967a..67e04604 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - eedri.yaml
 - ergonzal.yaml
+- filariow.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
 - hugares.yaml
@@ -19,4 +21,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..4f3cf84c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..9f5013c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
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
+  name: clusterrole-view-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
new file mode 100644
index 00000000..cc61c367
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
new file mode 100644
index 00000000..f8675a1f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
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
+  name: clusterrole-view-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 879ef9a7..240be135 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -10,8 +10,10 @@ resources:
 - clusterrole-view-bkundu-member.yaml
 - clusterrole-view-bsutter-member.yaml
 - clusterrole-view-dfodor-member.yaml
+- clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-eedri-member.yaml
 - clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-filariow-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
 - clusterrole-view-hugares-member.yaml
@@ -19,8 +21,12 @@ resources:
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
+- clusterrole-view-sadlerap-member.yaml
 - clusterrole-view-saviv-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
+- restart-deployment-dperaza4dustbit-member.yaml
+- restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
+- restart-deployment-sadlerap-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..b2a212c3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
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
+  name: restart-deployment-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
new file mode 100644
index 00000000..a97bca8b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
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
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
new file mode 100644
index 00000000..db508bcf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
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
+  name: restart-deployment-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index c6286bd5..ca1193e4 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -77,6 +77,75 @@ serviceAccounts:
       clusterRoles:
       - view
 
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
+- name: dperaza4dustbit
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
+- name: sadlerap
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
 - name: bkundu
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index d4585ca9..99dd4771 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -20,4 +20,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..b8ae5a02
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
new file mode 100644
index 00000000..7f13e068
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
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
+  name: approve-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
new file mode 100644
index 00000000..78995b3c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
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
+  name: ban-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
new file mode 100644
index 00000000..ef2cb845
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
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
+  name: clusterrole-view-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
new file mode 100644
index 00000000..1104ebe2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
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
+  name: deactivate-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
new file mode 100644
index 00000000..8b484a30
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
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
+  name: gdpr-delete-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index e208afed..a2a6232c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -20,12 +20,14 @@ resources:
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
 - approve-user-rorai-host.yaml
+- approve-user-sadlerap-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-filariow-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
+- ban-user-sadlerap-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -41,6 +43,7 @@ resources:
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
 - clusterrole-view-rorai-host.yaml
+- clusterrole-view-sadlerap-host.yaml
 - clusterrole-view-saviv-host.yaml
 - deactivate-user-alkazako-host.yaml
 - deactivate-user-bcook-host.yaml
@@ -52,6 +55,7 @@ resources:
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
 - deactivate-user-rorai-host.yaml
+- deactivate-user-sadlerap-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bkundu-host.yaml
@@ -63,6 +67,7 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
+- gdpr-delete-sadlerap-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -72,11 +77,13 @@ resources:
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
+- promote-user-sadlerap-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-dperaza4dustbit-host.yaml
 - restart-deployment-filariow-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
+- restart-deployment-sadlerap-host.yaml
 - retarget-user-alkazako-host.yaml
 - retarget-user-bcook-host.yaml
 - retarget-user-bkundu-host.yaml
@@ -91,4 +98,5 @@ resources:
 - retarget-user-pdave-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
+- retarget-user-sadlerap-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
new file mode 100644
index 00000000..36ab30e7
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
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
+  name: promote-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
new file mode 100644
index 00000000..37a0f143
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
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
+  name: restart-deployment-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
new file mode 100644
index 00000000..00852d67
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
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
+  name: retarget-user-sadlerap-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index d4585ca9..99dd4771 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -20,4 +20,5 @@ resources:
 - pdave.yaml
 - ralphbean.yaml
 - rorai.yaml
+- sadlerap.yaml
 - saviv.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
new file mode 100644
index 00000000..4f3cf84c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
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
+    username: sadlerap
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
new file mode 100644
index 00000000..f8675a1f
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
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
+  name: clusterrole-view-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 2f94c063..1c5d568f 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -20,6 +20,7 @@ resources:
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
+- clusterrole-view-sadlerap-member.yaml
 - clusterrole-view-saviv-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
@@ -27,3 +28,4 @@ resources:
 - restart-deployment-filariow-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
+- restart-deployment-sadlerap-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
new file mode 100644
index 00000000..db508bcf
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
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
+  name: restart-deployment-sadlerap-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: sadlerap
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index 2b0e77f7..3d873917 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -55,6 +55,29 @@ serviceAccounts:
       clusterRoles:
       - view
 
+- name: sadlerap
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
 - name: alkazako
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 09cfeaa0 to c724f166 on Tue Apr 16 14:03:53 2024 </h3>  
 
<details> 
<summary>Git Diff (307 lines)</summary>  

``` 
diff --git a/components/authentication/base/all/admin-checker/admin-checker-sa.yaml b/components/authentication/base/admin-checker/admin-checker-sa.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/admin-checker-sa.yaml
rename to components/authentication/base/admin-checker/admin-checker-sa.yaml
diff --git a/components/authentication/base/all/admin-checker/cronjob.yaml b/components/authentication/base/admin-checker/cronjob.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/cronjob.yaml
rename to components/authentication/base/admin-checker/cronjob.yaml
diff --git a/components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml b/components/authentication/base/admin-checker/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
rename to components/authentication/base/admin-checker/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml b/components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
rename to components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
diff --git a/components/authentication/base/all/admin-checker/kustomization.yaml b/components/authentication/base/admin-checker/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/kustomization.yaml
rename to components/authentication/base/admin-checker/kustomization.yaml
diff --git a/components/authentication/base/all/admin-checker/namespace.yaml b/components/authentication/base/admin-checker/namespace.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/namespace.yaml
rename to components/authentication/base/admin-checker/namespace.yaml
diff --git a/components/authentication/base/all/component-maintainer.yaml b/components/authentication/base/component-maintainer.yaml
similarity index 100%
rename from components/authentication/base/all/component-maintainer.yaml
rename to components/authentication/base/component-maintainer.yaml
diff --git a/components/authentication/base/all/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/all/everyone-can-view-patch.yaml
rename to components/authentication/base/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
similarity index 100%
rename from components/authentication/base/all/everyone-can-view.yaml
rename to components/authentication/base/everyone-can-view.yaml
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
deleted file mode 100644
index 5585c537..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
deleted file mode 100644
index 8e663f2b..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
deleted file mode 100644
index 23ebd876..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio
-      credentialsSecret:
-        name: github-redhat-appstudio
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
deleted file mode 100644
index 81213fa4..00000000
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: group-sync-operator
-resources:
-- external-secrets
-- github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
deleted file mode 100644
index 6fb7c23c..00000000
--- a/components/authentication/base/github/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../all
-- group-sync
diff --git a/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml b/components/authentication/base/group-sync/external-secrets/konflux-ldap-sa.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
rename to components/authentication/base/group-sync/external-secrets/konflux-ldap-sa.yaml
diff --git a/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/group-sync/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/group-sync/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/group-sync/external-secrets/mtls-ca-validators.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
rename to components/authentication/base/group-sync/external-secrets/mtls-ca-validators.yaml
diff --git a/components/authentication/base/all/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/group-sync.yaml
rename to components/authentication/base/group-sync/group-sync.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/group-sync/konflux-rover-groups.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
rename to components/authentication/base/group-sync/konflux-rover-groups.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/group-sync/kustomization.yaml
similarity index 86%
rename from components/authentication/base/all/group-sync/kustomization.yaml
rename to components/authentication/base/group-sync/kustomization.yaml
index 22a78cdd..a8ba40e0 100644
--- a/components/authentication/base/all/group-sync/kustomization.yaml
+++ b/components/authentication/base/group-sync/kustomization.yaml
@@ -4,5 +4,6 @@ namespace: group-sync-operator
 resources:
 - group-sync.yaml
 - external-secrets
+- konflux-rover-groups.yaml
 - namespaces.yaml
 - subscription.yaml
diff --git a/components/authentication/base/all/group-sync/namespaces.yaml b/components/authentication/base/group-sync/namespaces.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/namespaces.yaml
rename to components/authentication/base/group-sync/namespaces.yaml
diff --git a/components/authentication/base/all/group-sync/subscription.yaml b/components/authentication/base/group-sync/subscription.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/subscription.yaml
rename to components/authentication/base/group-sync/subscription.yaml
diff --git a/components/authentication/base/all/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
similarity index 100%
rename from components/authentication/base/all/konflux-admins.yaml
rename to components/authentication/base/konflux-admins.yaml
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/kustomization.yaml
rename to components/authentication/base/kustomization.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
deleted file mode 100644
index 9453f06e..00000000
--- a/components/authentication/base/rh-idp/group-sync/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: group-sync-operator
-resources:
-- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
deleted file mode 100644
index 6fb7c23c..00000000
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../all
-- group-sync
diff --git a/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
deleted file mode 100644
index 92f7db51..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio
diff --git a/components/authentication/production/base/konflux-ldap-sa-patch.yaml b/components/authentication/production/base/konflux-ldap-sa-patch.yaml
new file mode 100644
index 00000000..30af93be
--- /dev/null
+++ b/components/authentication/production/base/konflux-ldap-sa-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/group-sync/konflux-ldap-sa
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 91b9c215..4b27d6a1 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,13 +1,23 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/github
-components:
-  - ../k-components/rhtap-infra-secrets-patch
+  - ../../base
 patches:
-  - path: github-redhat-appstudio-secret-patch.yaml
+  - path: rhtap-infra-secrets-patch.yaml
     target:
-      name: github-redhat-appstudio
+      name: rhtap-infra-secrets
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: konflux-ldap-sa-patch.yaml
+    target:
+      name: konflux-ldap-sa
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: mtls-ca-validators-patch.yaml
+    target:
+      name: mtls-ca-validators
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
diff --git a/components/authentication/production/base/mtls-ca-validators-patch.yaml b/components/authentication/production/base/mtls-ca-validators-patch.yaml
new file mode 100644
index 00000000..d6a88c4f
--- /dev/null
+++ b/components/authentication/production/base/mtls-ca-validators-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/group-sync/mtls-ca-validators
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
deleted file mode 100644
index 6046aa98..00000000
--- a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
+++ /dev/null
@@ -1,10 +0,0 @@
----
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-patches:
-  - path: rhtap-infra-secrets-patch.yaml
-    target:
-      name: rhtap-infra-secrets
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
index 8a8a2c1a..48c2e849 100644
--- a/components/authentication/production/stone-prod-p01/kustomization.yaml
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../base
 components:
-  - ../k-components/rhtap-infra-secrets-patch
   - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/base/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
index 940d5937..2333422e 100644
--- a/components/authentication/staging/base/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../../base
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
index 2395e070..48c2e849 100644
--- a/components/authentication/staging/stone-stage-p01/kustomization.yaml
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../base
 components:
   - ../../k-components/ldap-url-patch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-09cfeaa0/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
796c796
<       key: production/group-sync/konflux-ldap-sa
---
>       key: staging/group-sync/konflux-ldap-sa
819c819
<       key: production/group-sync/mtls-ca-validators
---
>       key: staging/group-sync/mtls-ca-validators 
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
<h3>3: Staging changes from 09cfeaa0 to c724f166 on Tue Apr 16 14:03:53 2024 </h3>  
 
<details> 
<summary>Git Diff (307 lines)</summary>  

``` 
diff --git a/components/authentication/base/all/admin-checker/admin-checker-sa.yaml b/components/authentication/base/admin-checker/admin-checker-sa.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/admin-checker-sa.yaml
rename to components/authentication/base/admin-checker/admin-checker-sa.yaml
diff --git a/components/authentication/base/all/admin-checker/cronjob.yaml b/components/authentication/base/admin-checker/cronjob.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/cronjob.yaml
rename to components/authentication/base/admin-checker/cronjob.yaml
diff --git a/components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml b/components/authentication/base/admin-checker/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
rename to components/authentication/base/admin-checker/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml b/components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
rename to components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
diff --git a/components/authentication/base/all/admin-checker/kustomization.yaml b/components/authentication/base/admin-checker/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/kustomization.yaml
rename to components/authentication/base/admin-checker/kustomization.yaml
diff --git a/components/authentication/base/all/admin-checker/namespace.yaml b/components/authentication/base/admin-checker/namespace.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/namespace.yaml
rename to components/authentication/base/admin-checker/namespace.yaml
diff --git a/components/authentication/base/all/component-maintainer.yaml b/components/authentication/base/component-maintainer.yaml
similarity index 100%
rename from components/authentication/base/all/component-maintainer.yaml
rename to components/authentication/base/component-maintainer.yaml
diff --git a/components/authentication/base/all/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/all/everyone-can-view-patch.yaml
rename to components/authentication/base/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
similarity index 100%
rename from components/authentication/base/all/everyone-can-view.yaml
rename to components/authentication/base/everyone-can-view.yaml
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
deleted file mode 100644
index 5585c537..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
deleted file mode 100644
index 8e663f2b..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
deleted file mode 100644
index 23ebd876..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio
-      credentialsSecret:
-        name: github-redhat-appstudio
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
deleted file mode 100644
index 81213fa4..00000000
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: group-sync-operator
-resources:
-- external-secrets
-- github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
deleted file mode 100644
index 6fb7c23c..00000000
--- a/components/authentication/base/github/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../all
-- group-sync
diff --git a/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml b/components/authentication/base/group-sync/external-secrets/konflux-ldap-sa.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
rename to components/authentication/base/group-sync/external-secrets/konflux-ldap-sa.yaml
diff --git a/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/group-sync/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/group-sync/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/group-sync/external-secrets/mtls-ca-validators.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
rename to components/authentication/base/group-sync/external-secrets/mtls-ca-validators.yaml
diff --git a/components/authentication/base/all/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/group-sync.yaml
rename to components/authentication/base/group-sync/group-sync.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/group-sync/konflux-rover-groups.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
rename to components/authentication/base/group-sync/konflux-rover-groups.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/group-sync/kustomization.yaml
similarity index 86%
rename from components/authentication/base/all/group-sync/kustomization.yaml
rename to components/authentication/base/group-sync/kustomization.yaml
index 22a78cdd..a8ba40e0 100644
--- a/components/authentication/base/all/group-sync/kustomization.yaml
+++ b/components/authentication/base/group-sync/kustomization.yaml
@@ -4,5 +4,6 @@ namespace: group-sync-operator
 resources:
 - group-sync.yaml
 - external-secrets
+- konflux-rover-groups.yaml
 - namespaces.yaml
 - subscription.yaml
diff --git a/components/authentication/base/all/group-sync/namespaces.yaml b/components/authentication/base/group-sync/namespaces.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/namespaces.yaml
rename to components/authentication/base/group-sync/namespaces.yaml
diff --git a/components/authentication/base/all/group-sync/subscription.yaml b/components/authentication/base/group-sync/subscription.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/subscription.yaml
rename to components/authentication/base/group-sync/subscription.yaml
diff --git a/components/authentication/base/all/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
similarity index 100%
rename from components/authentication/base/all/konflux-admins.yaml
rename to components/authentication/base/konflux-admins.yaml
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/kustomization.yaml
rename to components/authentication/base/kustomization.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
deleted file mode 100644
index 9453f06e..00000000
--- a/components/authentication/base/rh-idp/group-sync/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: group-sync-operator
-resources:
-- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
deleted file mode 100644
index 6fb7c23c..00000000
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../all
-- group-sync
diff --git a/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
deleted file mode 100644
index 92f7db51..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio
diff --git a/components/authentication/production/base/konflux-ldap-sa-patch.yaml b/components/authentication/production/base/konflux-ldap-sa-patch.yaml
new file mode 100644
index 00000000..30af93be
--- /dev/null
+++ b/components/authentication/production/base/konflux-ldap-sa-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/group-sync/konflux-ldap-sa
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 91b9c215..4b27d6a1 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,13 +1,23 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/github
-components:
-  - ../k-components/rhtap-infra-secrets-patch
+  - ../../base
 patches:
-  - path: github-redhat-appstudio-secret-patch.yaml
+  - path: rhtap-infra-secrets-patch.yaml
     target:
-      name: github-redhat-appstudio
+      name: rhtap-infra-secrets
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: konflux-ldap-sa-patch.yaml
+    target:
+      name: konflux-ldap-sa
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: mtls-ca-validators-patch.yaml
+    target:
+      name: mtls-ca-validators
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
diff --git a/components/authentication/production/base/mtls-ca-validators-patch.yaml b/components/authentication/production/base/mtls-ca-validators-patch.yaml
new file mode 100644
index 00000000..d6a88c4f
--- /dev/null
+++ b/components/authentication/production/base/mtls-ca-validators-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/group-sync/mtls-ca-validators
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
deleted file mode 100644
index 6046aa98..00000000
--- a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
+++ /dev/null
@@ -1,10 +0,0 @@
----
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-patches:
-  - path: rhtap-infra-secrets-patch.yaml
-    target:
-      name: rhtap-infra-secrets
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
index 8a8a2c1a..48c2e849 100644
--- a/components/authentication/production/stone-prod-p01/kustomization.yaml
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../base
 components:
-  - ../k-components/rhtap-infra-secrets-patch
   - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/base/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
index 940d5937..2333422e 100644
--- a/components/authentication/staging/base/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../../base
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
index 2395e070..48c2e849 100644
--- a/components/authentication/staging/stone-stage-p01/kustomization.yaml
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../base
 components:
   - ../../k-components/ldap-url-patch 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 09cfeaa0 to c724f166 on Tue Apr 16 14:03:53 2024 </h3>  
 
<details> 
<summary>Git Diff (307 lines)</summary>  

``` 
diff --git a/components/authentication/base/all/admin-checker/admin-checker-sa.yaml b/components/authentication/base/admin-checker/admin-checker-sa.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/admin-checker-sa.yaml
rename to components/authentication/base/admin-checker/admin-checker-sa.yaml
diff --git a/components/authentication/base/all/admin-checker/cronjob.yaml b/components/authentication/base/admin-checker/cronjob.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/cronjob.yaml
rename to components/authentication/base/admin-checker/cronjob.yaml
diff --git a/components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml b/components/authentication/base/admin-checker/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
rename to components/authentication/base/admin-checker/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml b/components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
rename to components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
diff --git a/components/authentication/base/all/admin-checker/kustomization.yaml b/components/authentication/base/admin-checker/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/kustomization.yaml
rename to components/authentication/base/admin-checker/kustomization.yaml
diff --git a/components/authentication/base/all/admin-checker/namespace.yaml b/components/authentication/base/admin-checker/namespace.yaml
similarity index 100%
rename from components/authentication/base/all/admin-checker/namespace.yaml
rename to components/authentication/base/admin-checker/namespace.yaml
diff --git a/components/authentication/base/all/component-maintainer.yaml b/components/authentication/base/component-maintainer.yaml
similarity index 100%
rename from components/authentication/base/all/component-maintainer.yaml
rename to components/authentication/base/component-maintainer.yaml
diff --git a/components/authentication/base/all/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/all/everyone-can-view-patch.yaml
rename to components/authentication/base/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
similarity index 100%
rename from components/authentication/base/all/everyone-can-view.yaml
rename to components/authentication/base/everyone-can-view.yaml
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
deleted file mode 100644
index 5585c537..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
deleted file mode 100644
index 8e663f2b..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
deleted file mode 100644
index 23ebd876..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio
-      credentialsSecret:
-        name: github-redhat-appstudio
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
deleted file mode 100644
index 81213fa4..00000000
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: group-sync-operator
-resources:
-- external-secrets
-- github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
deleted file mode 100644
index 6fb7c23c..00000000
--- a/components/authentication/base/github/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../all
-- group-sync
diff --git a/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml b/components/authentication/base/group-sync/external-secrets/konflux-ldap-sa.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
rename to components/authentication/base/group-sync/external-secrets/konflux-ldap-sa.yaml
diff --git a/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/group-sync/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/group-sync/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/group-sync/external-secrets/mtls-ca-validators.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
rename to components/authentication/base/group-sync/external-secrets/mtls-ca-validators.yaml
diff --git a/components/authentication/base/all/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/group-sync.yaml
rename to components/authentication/base/group-sync/group-sync.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/group-sync/konflux-rover-groups.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
rename to components/authentication/base/group-sync/konflux-rover-groups.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/group-sync/kustomization.yaml
similarity index 86%
rename from components/authentication/base/all/group-sync/kustomization.yaml
rename to components/authentication/base/group-sync/kustomization.yaml
index 22a78cdd..a8ba40e0 100644
--- a/components/authentication/base/all/group-sync/kustomization.yaml
+++ b/components/authentication/base/group-sync/kustomization.yaml
@@ -4,5 +4,6 @@ namespace: group-sync-operator
 resources:
 - group-sync.yaml
 - external-secrets
+- konflux-rover-groups.yaml
 - namespaces.yaml
 - subscription.yaml
diff --git a/components/authentication/base/all/group-sync/namespaces.yaml b/components/authentication/base/group-sync/namespaces.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/namespaces.yaml
rename to components/authentication/base/group-sync/namespaces.yaml
diff --git a/components/authentication/base/all/group-sync/subscription.yaml b/components/authentication/base/group-sync/subscription.yaml
similarity index 100%
rename from components/authentication/base/all/group-sync/subscription.yaml
rename to components/authentication/base/group-sync/subscription.yaml
diff --git a/components/authentication/base/all/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
similarity index 100%
rename from components/authentication/base/all/konflux-admins.yaml
rename to components/authentication/base/konflux-admins.yaml
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/kustomization.yaml
similarity index 100%
rename from components/authentication/base/all/kustomization.yaml
rename to components/authentication/base/kustomization.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
deleted file mode 100644
index 9453f06e..00000000
--- a/components/authentication/base/rh-idp/group-sync/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: group-sync-operator
-resources:
-- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
deleted file mode 100644
index 6fb7c23c..00000000
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../all
-- group-sync
diff --git a/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
deleted file mode 100644
index 92f7db51..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio
diff --git a/components/authentication/production/base/konflux-ldap-sa-patch.yaml b/components/authentication/production/base/konflux-ldap-sa-patch.yaml
new file mode 100644
index 00000000..30af93be
--- /dev/null
+++ b/components/authentication/production/base/konflux-ldap-sa-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/group-sync/konflux-ldap-sa
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 91b9c215..4b27d6a1 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,13 +1,23 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/github
-components:
-  - ../k-components/rhtap-infra-secrets-patch
+  - ../../base
 patches:
-  - path: github-redhat-appstudio-secret-patch.yaml
+  - path: rhtap-infra-secrets-patch.yaml
     target:
-      name: github-redhat-appstudio
+      name: rhtap-infra-secrets
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: konflux-ldap-sa-patch.yaml
+    target:
+      name: konflux-ldap-sa
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
+  - path: mtls-ca-validators-patch.yaml
+    target:
+      name: mtls-ca-validators
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
diff --git a/components/authentication/production/base/mtls-ca-validators-patch.yaml b/components/authentication/production/base/mtls-ca-validators-patch.yaml
new file mode 100644
index 00000000..d6a88c4f
--- /dev/null
+++ b/components/authentication/production/base/mtls-ca-validators-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/group-sync/mtls-ca-validators
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
deleted file mode 100644
index 6046aa98..00000000
--- a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
+++ /dev/null
@@ -1,10 +0,0 @@
----
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-patches:
-  - path: rhtap-infra-secrets-patch.yaml
-    target:
-      name: rhtap-infra-secrets
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
index 8a8a2c1a..48c2e849 100644
--- a/components/authentication/production/stone-prod-p01/kustomization.yaml
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../base
 components:
-  - ../k-components/rhtap-infra-secrets-patch
   - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/base/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
index 940d5937..2333422e 100644
--- a/components/authentication/staging/base/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../../base
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
index 2395e070..48c2e849 100644
--- a/components/authentication/staging/stone-stage-p01/kustomization.yaml
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/rh-idp
+  - ../base
 components:
   - ../../k-components/ldap-url-patch 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 37b979d9 to 09cfeaa0 on Tue Apr 16 12:39:54 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index bd1a30d8..ce87bded 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-37b979d9/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
---
>         image: quay.io/redhat-appstudio/integration-service:c25c29fb82da14a96095e3aeba6f0d17ee062f6c
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:1cf98dbb0b7fea4fc9e8118713d34f57323c341c
---
>             image: quay.io/redhat-appstudio/integration-service:c25c29fb82da14a96095e3aeba6f0d17ee062f6c 
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
<h3>4: Staging changes from 37b979d9 to 09cfeaa0 on Tue Apr 16 12:39:54 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index bd1a30d8..ce87bded 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 37b979d9 to 09cfeaa0 on Tue Apr 16 12:39:54 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index bd1a30d8..ce87bded 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c25c29fb82da14a96095e3aeba6f0d17ee062f6c
+  newTag: 1cf98dbb0b7fea4fc9e8118713d34f57323c341c
 
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
```
 
</details> 
<br> 


</div>
