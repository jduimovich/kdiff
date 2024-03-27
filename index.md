# kustomize changes tracked by commits 
### This file generated at Wed Mar 27 00:06:28 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 17a76f74 to 2f901d8b on Tue Mar 26 21:49:55 2024 </h3>  
 
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
<h3>1: Staging changes from 17a76f74 to 2f901d8b on Tue Mar 26 21:49:55 2024 </h3>  
 
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
<h3>1: Development changes from 17a76f74 to 2f901d8b on Tue Mar 26 21:49:55 2024 </h3>  
 
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

<div>
<h3>2: Production changes from 417bbdd9 to 17a76f74 on Tue Mar 26 19:22:48 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 50ac1661..cf26400d 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 1d3f5405..2ce157db 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
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
<h3>2: Staging changes from 417bbdd9 to 17a76f74 on Tue Mar 26 19:22:48 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 50ac1661..cf26400d 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 1d3f5405..2ce157db 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-417bbdd9/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
684c684
<         image: quay.io/redhat-appstudio/build-service:a037b0de83021d2f9a1bd3a40311ddc1b05cca53
---
>         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213 
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
<h3>2: Development changes from 417bbdd9 to 17a76f74 on Tue Mar 26 19:22:48 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 50ac1661..cf26400d 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 1d3f5405..2ce157db 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-417bbdd9/development/components/build-service/development/kustomize.out.yaml
689c689
<         image: quay.io/redhat-appstudio/build-service:a037b0de83021d2f9a1bd3a40311ddc1b05cca53
---
>         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 5d41e36f to 417bbdd9 on Tue Mar 26 19:15:26 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 3581feb8..4818ceaa 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5d41e36f/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
766c766
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
778c778
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
790c790
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
802c802
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c 
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
<h3>3: Staging changes from 5d41e36f to 417bbdd9 on Tue Mar 26 19:15:26 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 3581feb8..4818ceaa 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5d41e36f/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
766c766
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
778c778
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
790c790
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
802c802
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c 
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
<h3>3: Development changes from 5d41e36f to 417bbdd9 on Tue Mar 26 19:15:26 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 3581feb8..4818ceaa 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5d41e36f/development/components/build-service/development/kustomize.out.yaml
771c771
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
783c783
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
795c795
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
807c807
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 08df8fd5 to 5d41e36f on Tue Mar 26 19:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (191 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index eaa1d319..a94281f3 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -24,7 +24,11 @@ jobs:
 
       - name: Run kustomize build
         run: |
-          find argo-cd-apps components -name 'kustomization.yaml' ! -path '*/k-components/*' | \
+          find argo-cd-apps components -name 'kustomization.yaml' \
+            ! -path '*/k-components/*' \
+            ! -path 'components/repository-validator/staging/*' \
+            ! -path 'components/repository-validator/production/*' \
+            | \
             xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
 
       - name: Scan yaml files with kube-linter
diff --git a/argo-cd-apps/base/repository-validator/kustomization.yaml b/argo-cd-apps/base/repository-validator/kustomization.yaml
new file mode 100644
index 00000000..8984ddbc
--- /dev/null
+++ b/argo-cd-apps/base/repository-validator/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- repository-validator.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/repository-validator/repository-validator.yaml b/argo-cd-apps/base/repository-validator/repository-validator.yaml
new file mode 100644
index 00000000..cbf7c35e
--- /dev/null
+++ b/argo-cd-apps/base/repository-validator/repository-validator.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: repository-validator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/repository-validator
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: repository-validator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: repository-validator
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=false
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index f622af08..afe7470d 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
   - ../../base/ca-bundle
+  - ../../base/repository-validator
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -113,3 +114,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: ca-bundle
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: repository-validator
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index efb16a30..ab1a178f 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - ../../base/ui
   - ../../base/ca-bundle
   - ../../base/keycloak
+  - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -165,3 +166,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: keycloak
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: repository-validator
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 81978523..676dddba 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/ui
   - ../../base/ca-bundle
   - ../../base/keycloak
+  - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
 patches:
diff --git a/components/repository-validator/development/config.json b/components/repository-validator/development/config.json
new file mode 100644
index 00000000..66a1e185
--- /dev/null
+++ b/components/repository-validator/development/config.json
@@ -0,0 +1 @@
+[""]
diff --git a/components/repository-validator/development/kustomization.yaml b/components/repository-validator/development/kustomization.yaml
new file mode 100644
index 00000000..1f0d75b0
--- /dev/null
+++ b/components/repository-validator/development/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+configMapGenerator:
+  - name: config
+    files: 
+      - config.json
+namespace: repository-validator
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
new file mode 100644
index 00000000..2a77876c
--- /dev/null
+++ b/components/repository-validator/production/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=ccb5d30304c16ba421d4b0380f9e9cedeefe0d49
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+namespace: repository-validator
diff --git a/components/repository-validator/staging/kustomization.yaml b/components/repository-validator/staging/kustomization.yaml
new file mode 100644
index 00000000..86e0183a
--- /dev/null
+++ b/components/repository-validator/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/staging?ref=ccb5d30304c16ba421d4b0380f9e9cedeefe0d49
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+namespace: repository-validator 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-5d41e36f/production/components: repository-validator 
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
<h3>4: Staging changes from 08df8fd5 to 5d41e36f on Tue Mar 26 19:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (191 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index eaa1d319..a94281f3 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -24,7 +24,11 @@ jobs:
 
       - name: Run kustomize build
         run: |
-          find argo-cd-apps components -name 'kustomization.yaml' ! -path '*/k-components/*' | \
+          find argo-cd-apps components -name 'kustomization.yaml' \
+            ! -path '*/k-components/*' \
+            ! -path 'components/repository-validator/staging/*' \
+            ! -path 'components/repository-validator/production/*' \
+            | \
             xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
 
       - name: Scan yaml files with kube-linter
diff --git a/argo-cd-apps/base/repository-validator/kustomization.yaml b/argo-cd-apps/base/repository-validator/kustomization.yaml
new file mode 100644
index 00000000..8984ddbc
--- /dev/null
+++ b/argo-cd-apps/base/repository-validator/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- repository-validator.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/repository-validator/repository-validator.yaml b/argo-cd-apps/base/repository-validator/repository-validator.yaml
new file mode 100644
index 00000000..cbf7c35e
--- /dev/null
+++ b/argo-cd-apps/base/repository-validator/repository-validator.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: repository-validator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/repository-validator
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: repository-validator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: repository-validator
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=false
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index f622af08..afe7470d 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
   - ../../base/ca-bundle
+  - ../../base/repository-validator
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -113,3 +114,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: ca-bundle
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: repository-validator
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index efb16a30..ab1a178f 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - ../../base/ui
   - ../../base/ca-bundle
   - ../../base/keycloak
+  - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -165,3 +166,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: keycloak
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: repository-validator
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 81978523..676dddba 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/ui
   - ../../base/ca-bundle
   - ../../base/keycloak
+  - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
 patches:
diff --git a/components/repository-validator/development/config.json b/components/repository-validator/development/config.json
new file mode 100644
index 00000000..66a1e185
--- /dev/null
+++ b/components/repository-validator/development/config.json
@@ -0,0 +1 @@
+[""]
diff --git a/components/repository-validator/development/kustomization.yaml b/components/repository-validator/development/kustomization.yaml
new file mode 100644
index 00000000..1f0d75b0
--- /dev/null
+++ b/components/repository-validator/development/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+configMapGenerator:
+  - name: config
+    files: 
+      - config.json
+namespace: repository-validator
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
new file mode 100644
index 00000000..2a77876c
--- /dev/null
+++ b/components/repository-validator/production/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=ccb5d30304c16ba421d4b0380f9e9cedeefe0d49
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+namespace: repository-validator
diff --git a/components/repository-validator/staging/kustomization.yaml b/components/repository-validator/staging/kustomization.yaml
new file mode 100644
index 00000000..86e0183a
--- /dev/null
+++ b/components/repository-validator/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/staging?ref=ccb5d30304c16ba421d4b0380f9e9cedeefe0d49
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+namespace: repository-validator 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-5d41e36f/staging/components: repository-validator 
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
<h3>4: Development changes from 08df8fd5 to 5d41e36f on Tue Mar 26 19:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (191 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index eaa1d319..a94281f3 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -24,7 +24,11 @@ jobs:
 
       - name: Run kustomize build
         run: |
-          find argo-cd-apps components -name 'kustomization.yaml' ! -path '*/k-components/*' | \
+          find argo-cd-apps components -name 'kustomization.yaml' \
+            ! -path '*/k-components/*' \
+            ! -path 'components/repository-validator/staging/*' \
+            ! -path 'components/repository-validator/production/*' \
+            | \
             xargs -I {} -n1 -P8  bash -c 'dir=$(dirname "{}"); output_file=$(echo $dir | tr / -)-kustomization.yaml; if ! log=$(kustomize build "$dir" -o "kustomizedfiles/$output_file" 2>&1); then echo "Error when running kustomize build for $dir: $log" && exit 1;fi'
 
       - name: Scan yaml files with kube-linter
diff --git a/argo-cd-apps/base/repository-validator/kustomization.yaml b/argo-cd-apps/base/repository-validator/kustomization.yaml
new file mode 100644
index 00000000..8984ddbc
--- /dev/null
+++ b/argo-cd-apps/base/repository-validator/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- repository-validator.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/repository-validator/repository-validator.yaml b/argo-cd-apps/base/repository-validator/repository-validator.yaml
new file mode 100644
index 00000000..cbf7c35e
--- /dev/null
+++ b/argo-cd-apps/base/repository-validator/repository-validator.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: repository-validator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/repository-validator
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: repository-validator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: repository-validator
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=false
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index f622af08..afe7470d 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
   - ../../base/ca-bundle
+  - ../../base/repository-validator
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -113,3 +114,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: ca-bundle
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: repository-validator
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index efb16a30..ab1a178f 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -6,6 +6,7 @@ resources:
   - ../../base/ui
   - ../../base/ca-bundle
   - ../../base/keycloak
+  - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -165,3 +166,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: keycloak
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: repository-validator
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 81978523..676dddba 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/ui
   - ../../base/ca-bundle
   - ../../base/keycloak
+  - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
 patches:
diff --git a/components/repository-validator/development/config.json b/components/repository-validator/development/config.json
new file mode 100644
index 00000000..66a1e185
--- /dev/null
+++ b/components/repository-validator/development/config.json
@@ -0,0 +1 @@
+[""]
diff --git a/components/repository-validator/development/kustomization.yaml b/components/repository-validator/development/kustomization.yaml
new file mode 100644
index 00000000..1f0d75b0
--- /dev/null
+++ b/components/repository-validator/development/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+configMapGenerator:
+  - name: config
+    files: 
+      - config.json
+namespace: repository-validator
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
new file mode 100644
index 00000000..2a77876c
--- /dev/null
+++ b/components/repository-validator/production/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=ccb5d30304c16ba421d4b0380f9e9cedeefe0d49
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+namespace: repository-validator
diff --git a/components/repository-validator/staging/kustomization.yaml b/components/repository-validator/staging/kustomization.yaml
new file mode 100644
index 00000000..86e0183a
--- /dev/null
+++ b/components/repository-validator/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/staging?ref=ccb5d30304c16ba421d4b0380f9e9cedeefe0d49
+images:
+  - name: controller
+    newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator
+    newTag: 1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
+namespace: repository-validator 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (49 lines)</summary>  

``` 
./commit-08df8fd5/development/app-of-apps-development.yaml
1013,1058d1012
<   name: repository-validator
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/internal-member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/repository-validator
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: repository-validator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: repository-validator
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
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=false
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-5d41e36f/development/components: repository-validator 
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
```
 
</details> 
<br> 


</div>
