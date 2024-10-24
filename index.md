# kustomize changes tracked by commits 
### This file generated at Thu Oct 24 04:03:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c3fd746b to e81ca85d on Wed Oct 23 21:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml b/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml
new file mode 100644
index 00000000..a24f4d7f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/knative-eventing
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: knative-eventing-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: knative-eventing
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml
new file mode 100644
index 00000000..a1d21b54
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- knative-eventing.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d465ff86..e7b5e19c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -25,5 +25,6 @@ resources:
   - kubearchive
   - workspaces
   - proactive-scaler
+  - knative-eventing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index b381e4d0..fb9292f6 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -179,3 +179,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: kubearchive
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: knative-eventing
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 7894dc06..49d0f500 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -32,3 +32,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 88ca15d7..dbee992c 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -50,3 +50,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index f2238de8..983e6b78 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# KubeArchive is not yet installed here
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/components/knative-eventing/OWNERS b/components/knative-eventing/OWNERS
new file mode 100644
index 00000000..f92cbbd2
--- /dev/null
+++ b/components/knative-eventing/OWNERS
@@ -0,0 +1,15 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+# These owners are the same as the ones on KubeArchive
+# because Knative Eventing is a dependency for KubeArchive
+# if you also use Knative Eventing as a dependency, please
+# add yourself here too.
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
diff --git a/components/knative-eventing/base/kustomization.yaml b/components/knative-eventing/base/kustomization.yaml
new file mode 100644
index 00000000..0c46f0fb
--- /dev/null
+++ b/components/knative-eventing/base/kustomization.yaml
@@ -0,0 +1,35 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/knative/eventing/releases/download/knative-v1.15.3/eventing-core.yaml?timeout=90s
+
+patches:
+# kube-lint fixes
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: eventing-controller
+      namespace: knative-eventing
+    spec:
+      template:
+        spec:
+          containers:
+            - name: eventing-controller
+              resources:
+                requests:
+                  cpu: 35m
+                  memory: 100Mi
+                limits:
+                  cpu: 100m
+                  memory: 200Mi
+# This was causing issues with kube-linter and I didn't want
+# to increase its replicas to 2, so I deleted it instead
+- patch: |-
+    $patch: delete
+    apiVersion: policy/v1
+    kind: PodDisruptionBudget
+    metadata:
+      name: eventing-webhook
+      namespace: knative-eventing
diff --git a/components/knative-eventing/development/kustomization.yaml b/components/knative-eventing/development/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/knative-eventing/development/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/knative-eventing/staging/kustomization.yaml b/components/knative-eventing/staging/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/knative-eventing/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from c3fd746b to e81ca85d on Wed Oct 23 21:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml b/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml
new file mode 100644
index 00000000..a24f4d7f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/knative-eventing
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: knative-eventing-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: knative-eventing
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml
new file mode 100644
index 00000000..a1d21b54
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- knative-eventing.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d465ff86..e7b5e19c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -25,5 +25,6 @@ resources:
   - kubearchive
   - workspaces
   - proactive-scaler
+  - knative-eventing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index b381e4d0..fb9292f6 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -179,3 +179,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: kubearchive
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: knative-eventing
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 7894dc06..49d0f500 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -32,3 +32,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 88ca15d7..dbee992c 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -50,3 +50,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index f2238de8..983e6b78 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# KubeArchive is not yet installed here
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/components/knative-eventing/OWNERS b/components/knative-eventing/OWNERS
new file mode 100644
index 00000000..f92cbbd2
--- /dev/null
+++ b/components/knative-eventing/OWNERS
@@ -0,0 +1,15 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+# These owners are the same as the ones on KubeArchive
+# because Knative Eventing is a dependency for KubeArchive
+# if you also use Knative Eventing as a dependency, please
+# add yourself here too.
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
diff --git a/components/knative-eventing/base/kustomization.yaml b/components/knative-eventing/base/kustomization.yaml
new file mode 100644
index 00000000..0c46f0fb
--- /dev/null
+++ b/components/knative-eventing/base/kustomization.yaml
@@ -0,0 +1,35 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/knative/eventing/releases/download/knative-v1.15.3/eventing-core.yaml?timeout=90s
+
+patches:
+# kube-lint fixes
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: eventing-controller
+      namespace: knative-eventing
+    spec:
+      template:
+        spec:
+          containers:
+            - name: eventing-controller
+              resources:
+                requests:
+                  cpu: 35m
+                  memory: 100Mi
+                limits:
+                  cpu: 100m
+                  memory: 200Mi
+# This was causing issues with kube-linter and I didn't want
+# to increase its replicas to 2, so I deleted it instead
+- patch: |-
+    $patch: delete
+    apiVersion: policy/v1
+    kind: PodDisruptionBudget
+    metadata:
+      name: eventing-webhook
+      namespace: knative-eventing
diff --git a/components/knative-eventing/development/kustomization.yaml b/components/knative-eventing/development/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/knative-eventing/development/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/knative-eventing/staging/kustomization.yaml b/components/knative-eventing/staging/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/knative-eventing/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-e81ca85d/staging/components: knative-eventing 
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
<h3>1: Development changes from c3fd746b to e81ca85d on Wed Oct 23 21:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml b/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml
new file mode 100644
index 00000000..a24f4d7f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/knative-eventing/knative-eventing.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/knative-eventing
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: knative-eventing-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: knative-eventing
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml
new file mode 100644
index 00000000..a1d21b54
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/knative-eventing/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- knative-eventing.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d465ff86..e7b5e19c 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -25,5 +25,6 @@ resources:
   - kubearchive
   - workspaces
   - proactive-scaler
+  - knative-eventing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index b381e4d0..fb9292f6 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -179,3 +179,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: kubearchive
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: knative-eventing
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 7894dc06..49d0f500 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -32,3 +32,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 88ca15d7..dbee992c 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -50,3 +50,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+# KubeArchive not yet ready to go to production
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index f2238de8..983e6b78 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# KubeArchive is not yet installed here
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: knative-eventing
+$patch: delete
diff --git a/components/knative-eventing/OWNERS b/components/knative-eventing/OWNERS
new file mode 100644
index 00000000..f92cbbd2
--- /dev/null
+++ b/components/knative-eventing/OWNERS
@@ -0,0 +1,15 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+# These owners are the same as the ones on KubeArchive
+# because Knative Eventing is a dependency for KubeArchive
+# if you also use Knative Eventing as a dependency, please
+# add yourself here too.
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
diff --git a/components/knative-eventing/base/kustomization.yaml b/components/knative-eventing/base/kustomization.yaml
new file mode 100644
index 00000000..0c46f0fb
--- /dev/null
+++ b/components/knative-eventing/base/kustomization.yaml
@@ -0,0 +1,35 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/knative/eventing/releases/download/knative-v1.15.3/eventing-core.yaml?timeout=90s
+
+patches:
+# kube-lint fixes
+- patch: |-
+    apiVersion: apps/v1
+    kind: Deployment
+    metadata:
+      name: eventing-controller
+      namespace: knative-eventing
+    spec:
+      template:
+        spec:
+          containers:
+            - name: eventing-controller
+              resources:
+                requests:
+                  cpu: 35m
+                  memory: 100Mi
+                limits:
+                  cpu: 100m
+                  memory: 200Mi
+# This was causing issues with kube-linter and I didn't want
+# to increase its replicas to 2, so I deleted it instead
+- patch: |-
+    $patch: delete
+    apiVersion: policy/v1
+    kind: PodDisruptionBudget
+    metadata:
+      name: eventing-webhook
+      namespace: knative-eventing
diff --git a/components/knative-eventing/development/kustomization.yaml b/components/knative-eventing/development/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/knative-eventing/development/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/knative-eventing/staging/kustomization.yaml b/components/knative-eventing/staging/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/knative-eventing/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-c3fd746b/development/app-of-apps-development.yaml
650,693d649
<   name: knative-eventing
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
<             sourceRoot: components/knative-eventing
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: knative-eventing-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: knative-eventing
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
./commit-e81ca85d/development/components: knative-eventing 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 50c1c175 to c3fd746b on Wed Oct 23 20:08:44 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index a076c6b0..c0c71ceb 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,10 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        memory: 16Gi
+                        memory: 4Gi
                       requests:
-                        cpu: "1"
-                        memory: 16Gi
+                        cpu: "500m"
+                        memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ab9c276f..fece808e 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 59cbbc74..805a44df 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 33d28743..c6b56dd6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 76fd52ea..b55878d2 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-50c1c175/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2074c2074
<                       memory: 4Gi
---
>                       memory: 16Gi
2076,2077c2076,2077
<                       cpu: 500m
<                       memory: 4Gi
---
>                       cpu: "1"
>                       memory: 16Gi
./commit-50c1c175/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2074c2074
<                       memory: 4Gi
---
>                       memory: 16Gi
2076,2077c2076,2077
<                       cpu: 500m
<                       memory: 4Gi
---
>                       cpu: "1"
>                       memory: 16Gi
./commit-50c1c175/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2074c2074
<                       memory: 4Gi
---
>                       memory: 16Gi
2076,2077c2076,2077
<                       cpu: 500m
<                       memory: 4Gi
---
>                       cpu: "1"
>                       memory: 16Gi
./commit-50c1c175/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2074c2074
<                       memory: 4Gi
---
>                       memory: 16Gi
2076,2077c2076,2077
<                       cpu: 500m
<                       memory: 4Gi
---
>                       cpu: "1"
>                       memory: 16Gi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 50c1c175 to c3fd746b on Wed Oct 23 20:08:44 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index a076c6b0..c0c71ceb 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,10 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        memory: 16Gi
+                        memory: 4Gi
                       requests:
-                        cpu: "1"
-                        memory: 16Gi
+                        cpu: "500m"
+                        memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ab9c276f..fece808e 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 59cbbc74..805a44df 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 33d28743..c6b56dd6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 76fd52ea..b55878d2 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template: 
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
<h3>2: Development changes from 50c1c175 to c3fd746b on Wed Oct 23 20:08:44 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index a076c6b0..c0c71ceb 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,10 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        memory: 16Gi
+                        memory: 4Gi
                       requests:
-                        cpu: "1"
-                        memory: 16Gi
+                        cpu: "500m"
+                        memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ab9c276f..fece808e 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 59cbbc74..805a44df 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 33d28743..c6b56dd6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 76fd52ea..b55878d2 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 16Gi
+                      memory: 4Gi
                     requests:
-                      cpu: "1"
-                      memory: 16Gi
+                      cpu: 500m
+                      memory: 4Gi
         tekton-pipelines-webhook:
           spec:
             template: 
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
<h3>3: Production changes from 5e0efd89 to 50c1c175 on Wed Oct 23 18:21:30 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b16e7399..356184cb 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 5e0efd89 to 50c1c175 on Wed Oct 23 18:21:30 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b16e7399..356184cb 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5e0efd89/staging/components/release/staging/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:69ae8399bf3b5961b672a5962a7d806376b7296f
---
>         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112 
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
<h3>3: Development changes from 5e0efd89 to 50c1c175 on Wed Oct 23 18:21:30 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b16e7399..356184cb 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from c2a3f868 to 5e0efd89 on Wed Oct 23 17:58:57 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index dc8c1b53..a076c6b0 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,11 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        cpu: "1"
                         memory: 16Gi
                       requests:
-                        cpu: 100m
-                        memory: 100Mi
+                        cpu: "1"
+                        memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 145db9c3..ab9c276f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 135182e1..59cbbc74 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 86ebf7f1..33d28743 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0df0c5fc..76fd52ea 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-c2a3f868/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
./commit-c2a3f868/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
./commit-c2a3f868/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
./commit-c2a3f868/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c2a3f868 to 5e0efd89 on Wed Oct 23 17:58:57 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index dc8c1b53..a076c6b0 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,11 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        cpu: "1"
                         memory: 16Gi
                       requests:
-                        cpu: 100m
-                        memory: 100Mi
+                        cpu: "1"
+                        memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 145db9c3..ab9c276f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 135182e1..59cbbc74 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 86ebf7f1..33d28743 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0df0c5fc..76fd52ea 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template: 
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
<h3>4: Development changes from c2a3f868 to 5e0efd89 on Wed Oct 23 17:58:57 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index dc8c1b53..a076c6b0 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,11 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        cpu: "1"
                         memory: 16Gi
                       requests:
-                        cpu: 100m
-                        memory: 100Mi
+                        cpu: "1"
+                        memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 145db9c3..ab9c276f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 135182e1..59cbbc74 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 86ebf7f1..33d28743 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0df0c5fc..76fd52ea 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template: 
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
