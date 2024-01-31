# kustomize changes tracked by commits 
### This file generated at Wed Jan 31 12:04:26 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 113b007b to 396d6a1d on Wed Jan 31 09:37:29 2024 </h3>  
 
<details> 
<summary>Git Diff (260 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 91a53d31..eada0e12 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/authentication
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -1,11 +1,4 @@
 ---
-# Github authentication/authorization isn't used downstream
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: authentication
-$patch: delete
----
 # Downstream deployment has the host and member operators deployed on the same cluster
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..138051b0
--- /dev/null
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -0,0 +1,46 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-core'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-ec'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-gitops'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-has'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-infra'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-integration'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-pipeline-service'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-qe'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-spi'
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..9637ff73
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
new file mode 100644
index 00000000..4648f470
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: mtls-ca-validators
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/mtls-ca-validators
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: mtls-ca-validators
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
new file mode 100644
index 00000000..1f0f1e86
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -0,0 +1,38 @@
+apiVersion: redhatcop.redhat.io/v1alpha1
+kind: GroupSync
+metadata:
+  name: konflux-rover-groups
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  providers:
+    - ldap:
+        ca:
+          key: ca.crt
+          kind: Secret
+          name: mtls-ca-validators
+          namespace: group-sync-operator
+        insecure: false
+        rfc2307:
+          usersQuery:
+            baseDN: 'dc=redhat,dc=com'
+            derefAliases: never
+            scope: sub
+          groupNameAttributes:
+            - cn
+          tolerateMemberNotFoundErrors: true
+          tolerateMemberOutOfScopeErrors: true
+          groupUIDAttribute: dn
+          groupMembershipAttributes:
+            - uniqueMember
+          userNameAttributes:
+            - uid
+          groupsQuery:
+            baseDN: 'ou=adhoc,ou=managedGroups,dc=redhat,dc=com'
+            derefAliases: never
+            filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
+            scope: sub
+          userUIDAttribute: dn
+        url: 'ldaps://ldap.corp.redhat.com'
+      name: ldap-corp
+  schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
new file mode 100644
index 00000000..9a9cf186
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- external-secrets
+- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
diff --git a/components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
similarity index 96%
rename from components/authentication/production/kustomization.yaml
rename to components/authentication/production/base/kustomization.yaml
index c317312e..b08bb10c 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/production/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
similarity index 77%
rename from components/authentication/staging/kustomization.yaml
rename to components/authentication/staging/base/kustomization.yaml
index ef81af8d..eaa1ccc2 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-113b007b/production/app-of-apps-production.yaml
54c54
<             clusterDir: base
---
>             clusterDir: ""
58,60c58
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: []
./commit-113b007b/production/components: authentication 
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
<h3>1: Staging changes from 113b007b to 396d6a1d on Wed Jan 31 09:37:29 2024 </h3>  
 
<details> 
<summary>Git Diff (260 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 91a53d31..eada0e12 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/authentication
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -1,11 +1,4 @@
 ---
-# Github authentication/authorization isn't used downstream
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: authentication
-$patch: delete
----
 # Downstream deployment has the host and member operators deployed on the same cluster
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..138051b0
--- /dev/null
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -0,0 +1,46 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-core'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-ec'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-gitops'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-has'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-infra'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-integration'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-pipeline-service'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-qe'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-spi'
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..9637ff73
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
new file mode 100644
index 00000000..4648f470
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: mtls-ca-validators
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/mtls-ca-validators
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: mtls-ca-validators
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
new file mode 100644
index 00000000..1f0f1e86
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -0,0 +1,38 @@
+apiVersion: redhatcop.redhat.io/v1alpha1
+kind: GroupSync
+metadata:
+  name: konflux-rover-groups
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  providers:
+    - ldap:
+        ca:
+          key: ca.crt
+          kind: Secret
+          name: mtls-ca-validators
+          namespace: group-sync-operator
+        insecure: false
+        rfc2307:
+          usersQuery:
+            baseDN: 'dc=redhat,dc=com'
+            derefAliases: never
+            scope: sub
+          groupNameAttributes:
+            - cn
+          tolerateMemberNotFoundErrors: true
+          tolerateMemberOutOfScopeErrors: true
+          groupUIDAttribute: dn
+          groupMembershipAttributes:
+            - uniqueMember
+          userNameAttributes:
+            - uid
+          groupsQuery:
+            baseDN: 'ou=adhoc,ou=managedGroups,dc=redhat,dc=com'
+            derefAliases: never
+            filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
+            scope: sub
+          userUIDAttribute: dn
+        url: 'ldaps://ldap.corp.redhat.com'
+      name: ldap-corp
+  schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
new file mode 100644
index 00000000..9a9cf186
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- external-secrets
+- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
diff --git a/components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
similarity index 96%
rename from components/authentication/production/kustomization.yaml
rename to components/authentication/production/base/kustomization.yaml
index c317312e..b08bb10c 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/production/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
similarity index 77%
rename from components/authentication/staging/kustomization.yaml
rename to components/authentication/staging/base/kustomization.yaml
index ef81af8d..eaa1ccc2 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-113b007b/staging/app-of-apps-staging.yaml
54c54
<             clusterDir: base
---
>             clusterDir: ""
58,60c58
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: []
./commit-113b007b/staging/components/authentication/staging: kustomize.out.yaml
./commit-396d6a1d/staging/components/authentication/staging: stone-stage-p01 
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
<h3>1: Development changes from 113b007b to 396d6a1d on Wed Jan 31 09:37:29 2024 </h3>  
 
<details> 
<summary>Git Diff (260 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 91a53d31..eada0e12 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/authentication
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -1,11 +1,4 @@
 ---
-# Github authentication/authorization isn't used downstream
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: authentication
-$patch: delete
----
 # Downstream deployment has the host and member operators deployed on the same cluster
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..138051b0
--- /dev/null
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -0,0 +1,46 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-core'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-ec'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-gitops'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-has'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-infra'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-integration'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-pipeline-service'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-qe'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-spi'
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..9637ff73
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
new file mode 100644
index 00000000..4648f470
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: mtls-ca-validators
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/mtls-ca-validators
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: mtls-ca-validators
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
new file mode 100644
index 00000000..1f0f1e86
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -0,0 +1,38 @@
+apiVersion: redhatcop.redhat.io/v1alpha1
+kind: GroupSync
+metadata:
+  name: konflux-rover-groups
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  providers:
+    - ldap:
+        ca:
+          key: ca.crt
+          kind: Secret
+          name: mtls-ca-validators
+          namespace: group-sync-operator
+        insecure: false
+        rfc2307:
+          usersQuery:
+            baseDN: 'dc=redhat,dc=com'
+            derefAliases: never
+            scope: sub
+          groupNameAttributes:
+            - cn
+          tolerateMemberNotFoundErrors: true
+          tolerateMemberOutOfScopeErrors: true
+          groupUIDAttribute: dn
+          groupMembershipAttributes:
+            - uniqueMember
+          userNameAttributes:
+            - uid
+          groupsQuery:
+            baseDN: 'ou=adhoc,ou=managedGroups,dc=redhat,dc=com'
+            derefAliases: never
+            filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
+            scope: sub
+          userUIDAttribute: dn
+        url: 'ldaps://ldap.corp.redhat.com'
+      name: ldap-corp
+  schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
new file mode 100644
index 00000000..9a9cf186
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- external-secrets
+- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
diff --git a/components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
similarity index 96%
rename from components/authentication/production/kustomization.yaml
rename to components/authentication/production/base/kustomization.yaml
index c317312e..b08bb10c 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/production/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
similarity index 77%
rename from components/authentication/staging/kustomization.yaml
rename to components/authentication/staging/base/kustomization.yaml
index ef81af8d..eaa1ccc2 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
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
<h3>2: Production changes from d00cd0de to 113b007b on Wed Jan 31 08:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index e87de695..ce8a58e9 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 94928b60..bbc38b39 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from d00cd0de to 113b007b on Wed Jan 31 08:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index e87de695..ce8a58e9 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 94928b60..bbc38b39 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
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
<h3>2: Development changes from d00cd0de to 113b007b on Wed Jan 31 08:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index e87de695..ce8a58e9 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 94928b60..bbc38b39 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
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
<h3>3: Production changes from ea865661 to d00cd0de on Wed Jan 31 06:31:05 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 8a084819..66d8c233 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ea865661/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ea865661 to d00cd0de on Wed Jan 31 06:31:05 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 8a084819..66d8c233 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ea865661/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6 
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
<h3>3: Development changes from ea865661 to d00cd0de on Wed Jan 31 06:31:05 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 8a084819..66d8c233 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ea865661/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6 
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
<h3>4: Production changes from 80112baf to ea865661 on Tue Jan 30 21:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d1d14177..1f1991ef 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -125,7 +125,6 @@ spec:
         exclude: []
         include:
           - kind
-          - step_image_registries
       data:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 462c615e..f90b6784 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-80112baf/production/components/enterprise-contract/kustomize.out.yaml
701a702
>       - step_image_registries 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 80112baf to ea865661 on Tue Jan 30 21:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d1d14177..1f1991ef 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -125,7 +125,6 @@ spec:
         exclude: []
         include:
           - kind
-          - step_image_registries
       data:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 462c615e..f90b6784 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-80112baf/staging/components/enterprise-contract/kustomize.out.yaml
701a702
>       - step_image_registries 
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
<h3>4: Development changes from 80112baf to ea865661 on Tue Jan 30 21:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d1d14177..1f1991ef 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -125,7 +125,6 @@ spec:
         exclude: []
         include:
           - kind
-          - step_image_registries
       data:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 462c615e..f90b6784 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-80112baf/development/components/enterprise-contract/kustomize.out.yaml
701a702
>       - step_image_registries 
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
