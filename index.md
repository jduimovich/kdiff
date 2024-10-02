# kustomize changes tracked by commits 
### This file generated at Wed Oct  2 00:07:39 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 252c7592 to daa49836 on Tue Oct 1 19:00:26 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 36efa1c4..4be79041 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -30,3 +30,4 @@ spec:
         - tekton-results
         - gitops
         - openshift-adp
+        - product-kubearchive 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-252c7592/production/components/cluster-secret-store/production/kustomize.out.yaml
68d67
<     - product-kubearchive 
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
<h3>1: Staging changes from 252c7592 to daa49836 on Tue Oct 1 19:00:26 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 36efa1c4..4be79041 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -30,3 +30,4 @@ spec:
         - tekton-results
         - gitops
         - openshift-adp
+        - product-kubearchive 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-252c7592/staging/components/cluster-secret-store/staging/kustomize.out.yaml
69d68
<     - product-kubearchive 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 252c7592 to daa49836 on Tue Oct 1 19:00:26 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 36efa1c4..4be79041 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -30,3 +30,4 @@ spec:
         - tekton-results
         - gitops
         - openshift-adp
+        - product-kubearchive 
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
<h3>2: Production changes from 0721034d to 252c7592 on Tue Oct 1 17:04:57 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
index 21792c07..255cbce8 100644
--- a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
@@ -26,7 +26,9 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubearchive
+        # This is the default namespace if resources or kustomziation.yaml do
+        # not specifcy namespace
+        namespace: product-kubearchive
         server: '{{server}}'
       syncPolicy:
         automated:
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 55436e03..1461bdc7 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -50,3 +50,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-kubearchive'
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
index 1aad985d..4afc6c6a 100644
--- a/components/kubearchive/base/kustomization.yaml
+++ b/components/kubearchive/base/kustomization.yaml
@@ -4,11 +4,75 @@ kind: Kustomization
 resources:
 - https://github.com/kubearchive/kubearchive/releases/download/v0.1.0/kubearchive.yaml?timeout=90
 - rbac.yaml
-namespace: kubearchive
+
+# ROSA does not support namespaces starting with `kube`
+namespace: product-kubearchive
+
+
+patches:
+# These patches changes some resources that point directly to
+# the 'kubearchive' namespace in their function.
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: RoleBinding
+    metadata:
+      name: kubearchive-operator-leader-election
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-api-server
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-api-server
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-operator
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-operator-proxy
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: admissionregistration.k8s.io/v1
+    kind: MutatingWebhookConfiguration
+    metadata:
+      name: kubearchive-mutating-webhook-configuration
+    webhooks:
+    - name: mkubearchiveconfig.kb.io
+      clientConfig:
+        service:
+          name: kubearchive-operator-webhooks
+          namespace: product-kubearchive
+- patch: |-
+    apiVersion: admissionregistration.k8s.io/v1
+    kind: ValidatingWebhookConfiguration
+    metadata:
+      name: kubearchive-validating-webhook-configuration
+    webhooks:
+    - name: vkubearchiveconfig.kb.io
+      clientConfig:
+        service:
+          name: kubearchive-operator-webhooks
+          namespace: product-kubearchive
 
 # These patches add an annotation so an OpenShift service
 # creates the TLS secrets instead of Cert Manager
-patches:
 - patch: |-
     apiVersion: v1
     kind: Service
@@ -16,7 +80,6 @@ patches:
       name: kubearchive-api-server
       annotations:
         service.beta.openshift.io/serving-cert-secret-name: kubearchive-api-server-tls
-
 - patch: |-
     apiVersion: v1
     kind: Service
@@ -25,6 +88,7 @@ patches:
       annotations:
         service.beta.openshift.io/serving-cert-secret-name: kubearchive-operator-tls
 
+# These patches solve Kube Linter problems
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -45,7 +109,6 @@ patches:
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
-
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -65,7 +128,6 @@ patches:
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
-
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -87,7 +149,7 @@ patches:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
 
-# Remove Certificates and Issuer
+# These patches remove Certificates and Issuer from Cert-Manager
 - patch: |-
     $patch: delete
     apiVersion: cert-manager.io/v1
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
index 082abadb..6526d863 100644
--- a/components/kubearchive/development/kustomization.yaml
+++ b/components/kubearchive/development/kustomization.yaml
@@ -4,8 +4,6 @@ resources:
 - ../base
 - postgresql.yaml
 
-namespace: kubearchive
-
 secretGenerator:
 - behavior: merge
   literals:
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
index 1d4c71ba..ea568bae 100644
--- a/components/kubearchive/staging/kustomization.yaml
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -4,7 +4,5 @@ resources:
   - ../base
   - database-secret.yaml
 
-namespace: kubearchive
-
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-0721034d/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
618,620d617
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
679,681d675
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
740,742d733
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
801,803d791
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
./commit-0721034d/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
618,620d617
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
679,681d675
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
740,742d733
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
801,803d791
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive 
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
<h3>2: Staging changes from 0721034d to 252c7592 on Tue Oct 1 17:04:57 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
index 21792c07..255cbce8 100644
--- a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
@@ -26,7 +26,9 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubearchive
+        # This is the default namespace if resources or kustomziation.yaml do
+        # not specifcy namespace
+        namespace: product-kubearchive
         server: '{{server}}'
       syncPolicy:
         automated:
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 55436e03..1461bdc7 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -50,3 +50,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-kubearchive'
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
index 1aad985d..4afc6c6a 100644
--- a/components/kubearchive/base/kustomization.yaml
+++ b/components/kubearchive/base/kustomization.yaml
@@ -4,11 +4,75 @@ kind: Kustomization
 resources:
 - https://github.com/kubearchive/kubearchive/releases/download/v0.1.0/kubearchive.yaml?timeout=90
 - rbac.yaml
-namespace: kubearchive
+
+# ROSA does not support namespaces starting with `kube`
+namespace: product-kubearchive
+
+
+patches:
+# These patches changes some resources that point directly to
+# the 'kubearchive' namespace in their function.
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: RoleBinding
+    metadata:
+      name: kubearchive-operator-leader-election
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-api-server
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-api-server
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-operator
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-operator-proxy
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: admissionregistration.k8s.io/v1
+    kind: MutatingWebhookConfiguration
+    metadata:
+      name: kubearchive-mutating-webhook-configuration
+    webhooks:
+    - name: mkubearchiveconfig.kb.io
+      clientConfig:
+        service:
+          name: kubearchive-operator-webhooks
+          namespace: product-kubearchive
+- patch: |-
+    apiVersion: admissionregistration.k8s.io/v1
+    kind: ValidatingWebhookConfiguration
+    metadata:
+      name: kubearchive-validating-webhook-configuration
+    webhooks:
+    - name: vkubearchiveconfig.kb.io
+      clientConfig:
+        service:
+          name: kubearchive-operator-webhooks
+          namespace: product-kubearchive
 
 # These patches add an annotation so an OpenShift service
 # creates the TLS secrets instead of Cert Manager
-patches:
 - patch: |-
     apiVersion: v1
     kind: Service
@@ -16,7 +80,6 @@ patches:
       name: kubearchive-api-server
       annotations:
         service.beta.openshift.io/serving-cert-secret-name: kubearchive-api-server-tls
-
 - patch: |-
     apiVersion: v1
     kind: Service
@@ -25,6 +88,7 @@ patches:
       annotations:
         service.beta.openshift.io/serving-cert-secret-name: kubearchive-operator-tls
 
+# These patches solve Kube Linter problems
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -45,7 +109,6 @@ patches:
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
-
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -65,7 +128,6 @@ patches:
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
-
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -87,7 +149,7 @@ patches:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
 
-# Remove Certificates and Issuer
+# These patches remove Certificates and Issuer from Cert-Manager
 - patch: |-
     $patch: delete
     apiVersion: cert-manager.io/v1
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
index 082abadb..6526d863 100644
--- a/components/kubearchive/development/kustomization.yaml
+++ b/components/kubearchive/development/kustomization.yaml
@@ -4,8 +4,6 @@ resources:
 - ../base
 - postgresql.yaml
 
-namespace: kubearchive
-
 secretGenerator:
 - behavior: merge
   literals:
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
index 1d4c71ba..ea568bae 100644
--- a/components/kubearchive/staging/kustomization.yaml
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -4,7 +4,5 @@ resources:
   - ../base
   - database-secret.yaml
 
-namespace: kubearchive
-
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (112 lines)</summary>  

``` 
./commit-0721034d/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
618,620d617
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
679,681d675
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
740,742d733
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
801,803d791
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-kubearchive
./commit-0721034d/staging/components/kubearchive/staging/kustomize.out.yaml
6c6
<   name: product-kubearchive
---
>   name: kubearchive
23c23
<           namespace: product-kubearchive
---
>           namespace: kubearchive
154c154
<   namespace: product-kubearchive
---
>   namespace: kubearchive
168c168
<   namespace: product-kubearchive
---
>   namespace: kubearchive
176c176
<   namespace: product-kubearchive
---
>   namespace: kubearchive
190c190
<   namespace: product-kubearchive
---
>   namespace: kubearchive
441c441
<   namespace: product-kubearchive
---
>   namespace: kubearchive
464c464
<   namespace: product-kubearchive
---
>   namespace: kubearchive
472c472
<   namespace: product-kubearchive
---
>   namespace: kubearchive
487c487
<   namespace: product-kubearchive
---
>   namespace: kubearchive
508c508
<   namespace: product-kubearchive
---
>   namespace: kubearchive
529c529
<   namespace: product-kubearchive
---
>   namespace: kubearchive
537c537
<   namespace: product-kubearchive
---
>   namespace: kubearchive
552c552
<   namespace: product-kubearchive
---
>   namespace: kubearchive
562c562
<   namespace: product-kubearchive
---
>   namespace: kubearchive
585c585
<   namespace: product-kubearchive
---
>   namespace: kubearchive
608c608
<   namespace: product-kubearchive
---
>   namespace: kubearchive
624c624
<   namespace: product-kubearchive
---
>   namespace: kubearchive
639c639
<   namespace: product-kubearchive
---
>   namespace: kubearchive
721c721
<   namespace: product-kubearchive
---
>   namespace: kubearchive
827c827
<   namespace: product-kubearchive
---
>   namespace: kubearchive
898a899
>   namespace: kubearchive
938c939
<       namespace: product-kubearchive
---
>       namespace: kubearchive
973c974
<       namespace: product-kubearchive
---
>       namespace: kubearchive 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 0721034d to 252c7592 on Tue Oct 1 17:04:57 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
index 21792c07..255cbce8 100644
--- a/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kubearchive/kubearchive.yaml
@@ -26,7 +26,9 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubearchive
+        # This is the default namespace if resources or kustomziation.yaml do
+        # not specifcy namespace
+        namespace: product-kubearchive
         server: '{{server}}'
       syncPolicy:
         automated:
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 55436e03..1461bdc7 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -50,3 +50,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-kubearchive'
diff --git a/components/kubearchive/base/kustomization.yaml b/components/kubearchive/base/kustomization.yaml
index 1aad985d..4afc6c6a 100644
--- a/components/kubearchive/base/kustomization.yaml
+++ b/components/kubearchive/base/kustomization.yaml
@@ -4,11 +4,75 @@ kind: Kustomization
 resources:
 - https://github.com/kubearchive/kubearchive/releases/download/v0.1.0/kubearchive.yaml?timeout=90
 - rbac.yaml
-namespace: kubearchive
+
+# ROSA does not support namespaces starting with `kube`
+namespace: product-kubearchive
+
+
+patches:
+# These patches changes some resources that point directly to
+# the 'kubearchive' namespace in their function.
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: RoleBinding
+    metadata:
+      name: kubearchive-operator-leader-election
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-api-server
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-api-server
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-operator
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: rbac.authorization.k8s.io/v1
+    kind: ClusterRoleBinding
+    metadata:
+      name: kubearchive-operator-proxy
+    subjects:
+    - kind: ServiceAccount
+      name: kubearchive-operator
+      namespace: product-kubearchive
+- patch: |-
+    apiVersion: admissionregistration.k8s.io/v1
+    kind: MutatingWebhookConfiguration
+    metadata:
+      name: kubearchive-mutating-webhook-configuration
+    webhooks:
+    - name: mkubearchiveconfig.kb.io
+      clientConfig:
+        service:
+          name: kubearchive-operator-webhooks
+          namespace: product-kubearchive
+- patch: |-
+    apiVersion: admissionregistration.k8s.io/v1
+    kind: ValidatingWebhookConfiguration
+    metadata:
+      name: kubearchive-validating-webhook-configuration
+    webhooks:
+    - name: vkubearchiveconfig.kb.io
+      clientConfig:
+        service:
+          name: kubearchive-operator-webhooks
+          namespace: product-kubearchive
 
 # These patches add an annotation so an OpenShift service
 # creates the TLS secrets instead of Cert Manager
-patches:
 - patch: |-
     apiVersion: v1
     kind: Service
@@ -16,7 +80,6 @@ patches:
       name: kubearchive-api-server
       annotations:
         service.beta.openshift.io/serving-cert-secret-name: kubearchive-api-server-tls
-
 - patch: |-
     apiVersion: v1
     kind: Service
@@ -25,6 +88,7 @@ patches:
       annotations:
         service.beta.openshift.io/serving-cert-secret-name: kubearchive-operator-tls
 
+# These patches solve Kube Linter problems
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -45,7 +109,6 @@ patches:
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
-
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -65,7 +128,6 @@ patches:
               securityContext:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
-
 - patch: |-
     apiVersion: apps/v1
     kind: Deployment
@@ -87,7 +149,7 @@ patches:
                 readOnlyRootFilesystem: true
                 runAsNonRoot: true
 
-# Remove Certificates and Issuer
+# These patches remove Certificates and Issuer from Cert-Manager
 - patch: |-
     $patch: delete
     apiVersion: cert-manager.io/v1
diff --git a/components/kubearchive/development/kustomization.yaml b/components/kubearchive/development/kustomization.yaml
index 082abadb..6526d863 100644
--- a/components/kubearchive/development/kustomization.yaml
+++ b/components/kubearchive/development/kustomization.yaml
@@ -4,8 +4,6 @@ resources:
 - ../base
 - postgresql.yaml
 
-namespace: kubearchive
-
 secretGenerator:
 - behavior: merge
   literals:
diff --git a/components/kubearchive/staging/kustomization.yaml b/components/kubearchive/staging/kustomization.yaml
index 1d4c71ba..ea568bae 100644
--- a/components/kubearchive/staging/kustomization.yaml
+++ b/components/kubearchive/staging/kustomization.yaml
@@ -4,7 +4,5 @@ resources:
   - ../base
   - database-secret.yaml
 
-namespace: kubearchive
-
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (102 lines)</summary>  

``` 
./commit-0721034d/development/app-of-apps-development.yaml
673c673
<         namespace: product-kubearchive
---
>         namespace: kubearchive
./commit-0721034d/development/components/kubearchive/development/kustomize.out.yaml
6c6
<   name: product-kubearchive
---
>   name: kubearchive
23c23
<           namespace: product-kubearchive
---
>           namespace: kubearchive
154c154
<   namespace: product-kubearchive
---
>   namespace: kubearchive
168c168
<   namespace: product-kubearchive
---
>   namespace: kubearchive
176c176
<   namespace: product-kubearchive
---
>   namespace: kubearchive
190c190
<   namespace: product-kubearchive
---
>   namespace: kubearchive
441c441
<   namespace: product-kubearchive
---
>   namespace: kubearchive
464c464
<   namespace: product-kubearchive
---
>   namespace: kubearchive
472c472
<   namespace: product-kubearchive
---
>   namespace: kubearchive
487c487
<   namespace: product-kubearchive
---
>   namespace: kubearchive
508c508
<   namespace: product-kubearchive
---
>   namespace: kubearchive
529c529
<   namespace: product-kubearchive
---
>   namespace: kubearchive
537c537
<   namespace: product-kubearchive
---
>   namespace: kubearchive
552c552
<   namespace: product-kubearchive
---
>   namespace: kubearchive
562c562
<   namespace: product-kubearchive
---
>   namespace: kubearchive
585c585
<   namespace: product-kubearchive
---
>   namespace: kubearchive
608c608
<   namespace: product-kubearchive
---
>   namespace: kubearchive
624c624
<   namespace: product-kubearchive
---
>   namespace: kubearchive
640a641
>   namespace: kubearchive
654c655
<   namespace: product-kubearchive
---
>   namespace: kubearchive
736c737
<   namespace: product-kubearchive
---
>   namespace: kubearchive
842c843
<   namespace: product-kubearchive
---
>   namespace: kubearchive
916a918
>   namespace: kubearchive
970c972
<       namespace: product-kubearchive
---
>       namespace: kubearchive
1005c1007
<       namespace: product-kubearchive
---
>       namespace: kubearchive 
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
<h3>3: Production changes from e2981ed6 to 0721034d on Tue Oct 1 16:01:15 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index bc0770b7..8ec11e4d 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -458,11 +458,11 @@ data:
   host.power-konflux-prod-large-2.concurrency: "1"
 
   #IBM GPU Node
-  host.ibm-gpu-amd64.address: "10.130.81.14"
-  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
-  host.ibm-gpu-amd64.user: "root"
-  host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
-  host.ibm-gpu-amd64.concurrency: "4"
+  # host.ibm-gpu-amd64.address: "10.130.81.14"
+  # host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  # host.ibm-gpu-amd64.user: "root"
+  # host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
+  # host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
<h3>3: Staging changes from e2981ed6 to 0721034d on Tue Oct 1 16:01:15 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index bc0770b7..8ec11e4d 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -458,11 +458,11 @@ data:
   host.power-konflux-prod-large-2.concurrency: "1"
 
   #IBM GPU Node
-  host.ibm-gpu-amd64.address: "10.130.81.14"
-  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
-  host.ibm-gpu-amd64.user: "root"
-  host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
-  host.ibm-gpu-amd64.concurrency: "4"
+  # host.ibm-gpu-amd64.address: "10.130.81.14"
+  # host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  # host.ibm-gpu-amd64.user: "root"
+  # host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
+  # host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from e2981ed6 to 0721034d on Tue Oct 1 16:01:15 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index bc0770b7..8ec11e4d 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -458,11 +458,11 @@ data:
   host.power-konflux-prod-large-2.concurrency: "1"
 
   #IBM GPU Node
-  host.ibm-gpu-amd64.address: "10.130.81.14"
-  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
-  host.ibm-gpu-amd64.user: "root"
-  host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
-  host.ibm-gpu-amd64.concurrency: "4"
+  # host.ibm-gpu-amd64.address: "10.130.81.14"
+  # host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  # host.ibm-gpu-amd64.user: "root"
+  # host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
+  # host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
<h3>4: Production changes from d5071d76 to e2981ed6 on Tue Oct 1 15:48:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 547c4eb7..bc0770b7 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -364,7 +364,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
 
   ## IBM s390x with 4CPU 16GiB RAM ####
@@ -378,7 +378,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "20"
+  dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
  
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
<h3>4: Staging changes from d5071d76 to e2981ed6 on Tue Oct 1 15:48:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 547c4eb7..bc0770b7 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -364,7 +364,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
 
   ## IBM s390x with 4CPU 16GiB RAM ####
@@ -378,7 +378,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "20"
+  dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from d5071d76 to e2981ed6 on Tue Oct 1 15:48:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 547c4eb7..bc0770b7 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -364,7 +364,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
 
   ## IBM s390x with 4CPU 16GiB RAM ####
@@ -378,7 +378,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "20"
+  dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
  
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
