# kustomize changes tracked by commits 
### This file generated at Sun Apr  7 20:02:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cb5d6f57 to fe02e6e5 on Sun Apr 7 06:49:09 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d0074960..e8fcb344 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -20,5 +20,6 @@ resources:
   - multi-platform-controller
   - perf-team-prometheus-reader
   - project-controller
+  - spacerequest-cleaner
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml
new file mode 100644
index 00000000..b9cb6032
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- spacerequest-cleaner.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml
new file mode 100644
index 00000000..c33da0f1
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: spacerequest-cleaner
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/spacerequest-cleaner
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: spacerequest-cleaner-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: spacerequest-cleaner
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
index f65f585e..781a4059 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -124,3 +124,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: project-controller
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/OWNERS b/components/spacerequest-cleaner/OWNERS
new file mode 100644
index 00000000..97a7c2e6
--- /dev/null
+++ b/components/spacerequest-cleaner/OWNERS
@@ -0,0 +1,11 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- yftacherzog
+- gbenhaim
+- Omeramsc
+
+reviewers:
+- yftacherzog
+- gbenhaim
+- Omeramsc
diff --git a/components/spacerequest-cleaner/base/cronjob.yaml b/components/spacerequest-cleaner/base/cronjob.yaml
new file mode 100644
index 00000000..90e7884e
--- /dev/null
+++ b/components/spacerequest-cleaner/base/cronjob.yaml
@@ -0,0 +1,30 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: spacerequest-cleaner
+  namespace: spacerequest-cleaner
+spec:
+  schedule: "0 4 * * *" # every day at 4AM UTC
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+            - name: spacerequest-cleaner
+              image: >-
+                quay.io/redhat-appstudio/tools:2c47ed424b6b150445a45f34569f7dcce9ebad71
+              command:
+                - clean_spacerequests
+              imagePullPolicy: Always
+              resources:
+                requests:
+                  cpu: 250m
+                  memory: 125Mi
+                limits:
+                  cpu: 250m
+                  memory: 125Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+          restartPolicy: Never
+          serviceAccountName: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/base/kustomization.yaml b/components/spacerequest-cleaner/base/kustomization.yaml
new file mode 100644
index 00000000..babc9f7d
--- /dev/null
+++ b/components/spacerequest-cleaner/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- rbac.yaml
+- cronjob.yaml
diff --git a/components/spacerequest-cleaner/base/namespace.yaml b/components/spacerequest-cleaner/base/namespace.yaml
new file mode 100644
index 00000000..65bfa4e8
--- /dev/null
+++ b/components/spacerequest-cleaner/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/base/rbac.yaml b/components/spacerequest-cleaner/base/rbac.yaml
new file mode 100644
index 00000000..f52dd39d
--- /dev/null
+++ b/components/spacerequest-cleaner/base/rbac.yaml
@@ -0,0 +1,38 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: spacerequest-cleaner
+  namespace: spacerequest-cleaner
+---
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: spacerequest-cleaner
+rules:
+  - apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
+    verbs:
+      - list
+      - delete
+  - apiGroups:
+      - ""
+    resources:
+      - namespaces
+    verbs:
+      - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: spacerequest-cleaner
+subjects:
+  - kind: ServiceAccount
+    name: spacerequest-cleaner
+    namespace: spacerequest-cleaner
+roleRef:
+  kind: ClusterRole
+  name: spacerequest-cleaner
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/spacerequest-cleaner/development/kustomization.yaml b/components/spacerequest-cleaner/development/kustomization.yaml
new file mode 100644
index 00000000..59c945f8
--- /dev/null
+++ b/components/spacerequest-cleaner/development/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+namespace: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/production/kustomization.yaml b/components/spacerequest-cleaner/production/kustomization.yaml
new file mode 100644
index 00000000..1275a74b
--- /dev/null
+++ b/components/spacerequest-cleaner/production/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources: []
+
+namespace: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/staging/kustomization.yaml b/components/spacerequest-cleaner/staging/kustomization.yaml
new file mode 100644
index 00000000..59c945f8
--- /dev/null
+++ b/components/spacerequest-cleaner/staging/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+namespace: spacerequest-cleaner 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-fe02e6e5/production/components: spacerequest-cleaner 
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
<h3>1: Staging changes from cb5d6f57 to fe02e6e5 on Sun Apr 7 06:49:09 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d0074960..e8fcb344 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -20,5 +20,6 @@ resources:
   - multi-platform-controller
   - perf-team-prometheus-reader
   - project-controller
+  - spacerequest-cleaner
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml
new file mode 100644
index 00000000..b9cb6032
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- spacerequest-cleaner.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml
new file mode 100644
index 00000000..c33da0f1
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: spacerequest-cleaner
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/spacerequest-cleaner
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: spacerequest-cleaner-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: spacerequest-cleaner
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
index f65f585e..781a4059 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -124,3 +124,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: project-controller
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/OWNERS b/components/spacerequest-cleaner/OWNERS
new file mode 100644
index 00000000..97a7c2e6
--- /dev/null
+++ b/components/spacerequest-cleaner/OWNERS
@@ -0,0 +1,11 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- yftacherzog
+- gbenhaim
+- Omeramsc
+
+reviewers:
+- yftacherzog
+- gbenhaim
+- Omeramsc
diff --git a/components/spacerequest-cleaner/base/cronjob.yaml b/components/spacerequest-cleaner/base/cronjob.yaml
new file mode 100644
index 00000000..90e7884e
--- /dev/null
+++ b/components/spacerequest-cleaner/base/cronjob.yaml
@@ -0,0 +1,30 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: spacerequest-cleaner
+  namespace: spacerequest-cleaner
+spec:
+  schedule: "0 4 * * *" # every day at 4AM UTC
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+            - name: spacerequest-cleaner
+              image: >-
+                quay.io/redhat-appstudio/tools:2c47ed424b6b150445a45f34569f7dcce9ebad71
+              command:
+                - clean_spacerequests
+              imagePullPolicy: Always
+              resources:
+                requests:
+                  cpu: 250m
+                  memory: 125Mi
+                limits:
+                  cpu: 250m
+                  memory: 125Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+          restartPolicy: Never
+          serviceAccountName: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/base/kustomization.yaml b/components/spacerequest-cleaner/base/kustomization.yaml
new file mode 100644
index 00000000..babc9f7d
--- /dev/null
+++ b/components/spacerequest-cleaner/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- rbac.yaml
+- cronjob.yaml
diff --git a/components/spacerequest-cleaner/base/namespace.yaml b/components/spacerequest-cleaner/base/namespace.yaml
new file mode 100644
index 00000000..65bfa4e8
--- /dev/null
+++ b/components/spacerequest-cleaner/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/base/rbac.yaml b/components/spacerequest-cleaner/base/rbac.yaml
new file mode 100644
index 00000000..f52dd39d
--- /dev/null
+++ b/components/spacerequest-cleaner/base/rbac.yaml
@@ -0,0 +1,38 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: spacerequest-cleaner
+  namespace: spacerequest-cleaner
+---
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: spacerequest-cleaner
+rules:
+  - apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
+    verbs:
+      - list
+      - delete
+  - apiGroups:
+      - ""
+    resources:
+      - namespaces
+    verbs:
+      - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: spacerequest-cleaner
+subjects:
+  - kind: ServiceAccount
+    name: spacerequest-cleaner
+    namespace: spacerequest-cleaner
+roleRef:
+  kind: ClusterRole
+  name: spacerequest-cleaner
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/spacerequest-cleaner/development/kustomization.yaml b/components/spacerequest-cleaner/development/kustomization.yaml
new file mode 100644
index 00000000..59c945f8
--- /dev/null
+++ b/components/spacerequest-cleaner/development/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+namespace: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/production/kustomization.yaml b/components/spacerequest-cleaner/production/kustomization.yaml
new file mode 100644
index 00000000..1275a74b
--- /dev/null
+++ b/components/spacerequest-cleaner/production/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources: []
+
+namespace: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/staging/kustomization.yaml b/components/spacerequest-cleaner/staging/kustomization.yaml
new file mode 100644
index 00000000..59c945f8
--- /dev/null
+++ b/components/spacerequest-cleaner/staging/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+namespace: spacerequest-cleaner 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-fe02e6e5/staging/components: spacerequest-cleaner 
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
<h3>1: Development changes from cb5d6f57 to fe02e6e5 on Sun Apr 7 06:49:09 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d0074960..e8fcb344 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -20,5 +20,6 @@ resources:
   - multi-platform-controller
   - perf-team-prometheus-reader
   - project-controller
+  - spacerequest-cleaner
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml
new file mode 100644
index 00000000..b9cb6032
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- spacerequest-cleaner.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml
new file mode 100644
index 00000000..c33da0f1
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/spacerequest-cleaner/spacerequest-cleaner.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: spacerequest-cleaner
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/spacerequest-cleaner
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: spacerequest-cleaner-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: spacerequest-cleaner
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
index f65f585e..781a4059 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -124,3 +124,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: project-controller
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/OWNERS b/components/spacerequest-cleaner/OWNERS
new file mode 100644
index 00000000..97a7c2e6
--- /dev/null
+++ b/components/spacerequest-cleaner/OWNERS
@@ -0,0 +1,11 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- yftacherzog
+- gbenhaim
+- Omeramsc
+
+reviewers:
+- yftacherzog
+- gbenhaim
+- Omeramsc
diff --git a/components/spacerequest-cleaner/base/cronjob.yaml b/components/spacerequest-cleaner/base/cronjob.yaml
new file mode 100644
index 00000000..90e7884e
--- /dev/null
+++ b/components/spacerequest-cleaner/base/cronjob.yaml
@@ -0,0 +1,30 @@
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: spacerequest-cleaner
+  namespace: spacerequest-cleaner
+spec:
+  schedule: "0 4 * * *" # every day at 4AM UTC
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          containers:
+            - name: spacerequest-cleaner
+              image: >-
+                quay.io/redhat-appstudio/tools:2c47ed424b6b150445a45f34569f7dcce9ebad71
+              command:
+                - clean_spacerequests
+              imagePullPolicy: Always
+              resources:
+                requests:
+                  cpu: 250m
+                  memory: 125Mi
+                limits:
+                  cpu: 250m
+                  memory: 125Mi
+              securityContext:
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+          restartPolicy: Never
+          serviceAccountName: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/base/kustomization.yaml b/components/spacerequest-cleaner/base/kustomization.yaml
new file mode 100644
index 00000000..babc9f7d
--- /dev/null
+++ b/components/spacerequest-cleaner/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- rbac.yaml
+- cronjob.yaml
diff --git a/components/spacerequest-cleaner/base/namespace.yaml b/components/spacerequest-cleaner/base/namespace.yaml
new file mode 100644
index 00000000..65bfa4e8
--- /dev/null
+++ b/components/spacerequest-cleaner/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/base/rbac.yaml b/components/spacerequest-cleaner/base/rbac.yaml
new file mode 100644
index 00000000..f52dd39d
--- /dev/null
+++ b/components/spacerequest-cleaner/base/rbac.yaml
@@ -0,0 +1,38 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: spacerequest-cleaner
+  namespace: spacerequest-cleaner
+---
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: spacerequest-cleaner
+rules:
+  - apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
+    verbs:
+      - list
+      - delete
+  - apiGroups:
+      - ""
+    resources:
+      - namespaces
+    verbs:
+      - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: spacerequest-cleaner
+subjects:
+  - kind: ServiceAccount
+    name: spacerequest-cleaner
+    namespace: spacerequest-cleaner
+roleRef:
+  kind: ClusterRole
+  name: spacerequest-cleaner
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/spacerequest-cleaner/development/kustomization.yaml b/components/spacerequest-cleaner/development/kustomization.yaml
new file mode 100644
index 00000000..59c945f8
--- /dev/null
+++ b/components/spacerequest-cleaner/development/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+namespace: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/production/kustomization.yaml b/components/spacerequest-cleaner/production/kustomization.yaml
new file mode 100644
index 00000000..1275a74b
--- /dev/null
+++ b/components/spacerequest-cleaner/production/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources: []
+
+namespace: spacerequest-cleaner
diff --git a/components/spacerequest-cleaner/staging/kustomization.yaml b/components/spacerequest-cleaner/staging/kustomization.yaml
new file mode 100644
index 00000000..59c945f8
--- /dev/null
+++ b/components/spacerequest-cleaner/staging/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+namespace: spacerequest-cleaner 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-cb5d6f57/development/app-of-apps-development.yaml
1105,1148d1104
<   name: spacerequest-cleaner
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
<             sourceRoot: components/spacerequest-cleaner
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: spacerequest-cleaner-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: spacerequest-cleaner
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
./commit-fe02e6e5/development/components: spacerequest-cleaner 
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
<h3>2: Production changes from 3dfb43da to cb5d6f57 on Fri Apr 5 20:40:30 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9aae9eef..8e93d41b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 14674031..6bde15cf 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 540c1f34..e4e560d9 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2fdf4991..6248b2e4 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-3dfb43da/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
./commit-3dfb43da/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
./commit-3dfb43da/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23 
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
<h3>2: Staging changes from 3dfb43da to cb5d6f57 on Fri Apr 5 20:40:30 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9aae9eef..8e93d41b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 14674031..6bde15cf 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 540c1f34..e4e560d9 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2fdf4991..6248b2e4 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>2: Development changes from 3dfb43da to cb5d6f57 on Fri Apr 5 20:40:30 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9aae9eef..8e93d41b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 14674031..6bde15cf 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 540c1f34..e4e560d9 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2fdf4991..6248b2e4 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>3: Production changes from e3f66e46 to 3dfb43da on Fri Apr 5 18:00:56 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 72955533..8ae7e5d3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1024Mi
           requests:
             cpu: 100m
             memory: 20Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e3f66e46/production/components/release/production/kustomize.out.yaml
1786c1786
<             memory: 1024Mi
---
>             memory: 512Mi 
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
<h3>3: Staging changes from e3f66e46 to 3dfb43da on Fri Apr 5 18:00:56 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 72955533..8ae7e5d3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1024Mi
           requests:
             cpu: 100m
             memory: 20Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e3f66e46/staging/components/release/staging/kustomize.out.yaml
1811c1811
<             memory: 1024Mi
---
>             memory: 512Mi 
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
<h3>3: Development changes from e3f66e46 to 3dfb43da on Fri Apr 5 18:00:56 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
index 72955533..8ae7e5d3 100644
--- a/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/release/k-components/manager-resources-patch/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1024Mi
           requests:
             cpu: 100m
             memory: 20Mi 
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
<h3>4: Production changes from 25316d9c to e3f66e46 on Fri Apr 5 10:44:32 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 89d3a619..4292e6af 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -11,12 +11,6 @@ spec:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
       enabled: false
-    capacityThresholds:
-      maxNumberOfSpacesPerMemberCluster:
-        member-stone-prd-m01.84db.p1.openshiftapps.com: 1000
-        member-stone-prd-rh01.pg1f.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
-      resourceCapacityThreshold:
-        defaultThreshold: 90
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 0853c0ac..ed097778 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -11,9 +11,6 @@ spec:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
       enabled: true
-    capacityThresholds:
-      resourceCapacityThreshold:
-        defaultThreshold: 90
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
<h3>4: Staging changes from 25316d9c to e3f66e46 on Fri Apr 5 10:44:32 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 89d3a619..4292e6af 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -11,12 +11,6 @@ spec:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
       enabled: false
-    capacityThresholds:
-      maxNumberOfSpacesPerMemberCluster:
-        member-stone-prd-m01.84db.p1.openshiftapps.com: 1000
-        member-stone-prd-rh01.pg1f.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
-      resourceCapacityThreshold:
-        defaultThreshold: 90
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 0853c0ac..ed097778 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -11,9 +11,6 @@ spec:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
       enabled: true
-    capacityThresholds:
-      resourceCapacityThreshold:
-        defaultThreshold: 90
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
<h3>4: Development changes from 25316d9c to e3f66e46 on Fri Apr 5 10:44:32 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 89d3a619..4292e6af 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -11,12 +11,6 @@ spec:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
       enabled: false
-    capacityThresholds:
-      maxNumberOfSpacesPerMemberCluster:
-        member-stone-prd-m01.84db.p1.openshiftapps.com: 1000
-        member-stone-prd-rh01.pg1f.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
-      resourceCapacityThreshold:
-        defaultThreshold: 90
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 0853c0ac..ed097778 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -11,9 +11,6 @@ spec:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
       enabled: true
-    capacityThresholds:
-      resourceCapacityThreshold:
-        defaultThreshold: 90
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
