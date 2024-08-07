# kustomize changes tracked by commits 
### This file generated at Wed Aug  7 16:07:58 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6ec66970 to f50ee652 on Wed Aug 7 15:18:51 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index ad0eb82e..1098cb53 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/konflux-ci
   - ../../base/cluster-secret-store-rh
   - ../../base/toolchain-member
+  - ../../base/eaas
 
 namespace: konflux-public-production
 
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-base-domain-param.yaml
new file mode 100644
index 00000000..70237afc
--- /dev/null
+++ b/components/cluster-as-a-service/production/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: prod.konfluxeaas.com
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
new file mode 100644
index 00000000..b0ec83fa
--- /dev/null
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -0,0 +1,56 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-credentials
+  namespace: clusters
+  labels:
+    hypershift.openshift.io/safe-to-delete-with-cluster: "false"
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-serviceaccount
+  - extract:
+      key: production/eaas/konflux-eaas-prod
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift
+    template:
+      data:
+        aws_access_key_id: "{{ .aws_access_key_id }}"
+        aws_secret_access_key: "{{ .aws_secret_access_key }}"
+        pullSecret: "{{ .ocp_pull_secret }}"
+        baseDomain: prod.konfluxeaas.com
+        ssh-privatekey: unused
+        ssh-publickey: unused
+
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-oidc-credentials
+  namespace: local-cluster
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-bucket-s3
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift-operator-oidc-provider-s3-credentials
+    template:
+      data:
+        bucket: prod-eaas-bucket
+        region: us-east-1
+        credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index d0b07b07..0258ccfc 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -4,3 +4,10 @@ kind: Kustomization
 resources:
   - ../base
   - ../../openshift-gitops
+  - external-secrets.yaml
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 188854a6..61f288b9 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-prd-es01.1ion.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (61 lines)</summary>  

``` 
./commit-6ec66970/production/components/cluster-as-a-service/production/kustomize.out.yaml
233,234d232
<           - name: baseDomain
<             value: prod.konfluxeaas.com
283,338d280
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   labels:
<     hypershift.openshift.io/safe-to-delete-with-cluster: "false"
<   name: cluster-as-a-service-hypershift-credentials
<   namespace: clusters
< spec:
<   dataFrom:
<   - extract:
<       key: production/eaas/prod-eaas-serviceaccount
<   - extract:
<       key: production/eaas/konflux-eaas-prod
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: hypershift
<     template:
<       data:
<         aws_access_key_id: '{{ .aws_access_key_id }}'
<         aws_secret_access_key: '{{ .aws_secret_access_key }}'
<         baseDomain: prod.konfluxeaas.com
<         pullSecret: '{{ .ocp_pull_secret }}'
<         ssh-privatekey: unused
<         ssh-publickey: unused
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   name: cluster-as-a-service-hypershift-oidc-credentials
<   namespace: local-cluster
< spec:
<   dataFrom:
<   - extract:
<       key: production/eaas/prod-eaas-bucket-s3
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: hypershift-operator-oidc-provider-s3-credentials
<     template:
<       data:
<         bucket: prod-eaas-bucket
<         credentials: |
<           [default]
<           aws_access_key_id={{ .aws_access_key_id }}
<           aws_secret_access_key={{ .aws_secret_access_key }}
<         region: us-east-1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 6ec66970 to f50ee652 on Wed Aug 7 15:18:51 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index ad0eb82e..1098cb53 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/konflux-ci
   - ../../base/cluster-secret-store-rh
   - ../../base/toolchain-member
+  - ../../base/eaas
 
 namespace: konflux-public-production
 
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-base-domain-param.yaml
new file mode 100644
index 00000000..70237afc
--- /dev/null
+++ b/components/cluster-as-a-service/production/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: prod.konfluxeaas.com
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
new file mode 100644
index 00000000..b0ec83fa
--- /dev/null
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -0,0 +1,56 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-credentials
+  namespace: clusters
+  labels:
+    hypershift.openshift.io/safe-to-delete-with-cluster: "false"
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-serviceaccount
+  - extract:
+      key: production/eaas/konflux-eaas-prod
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift
+    template:
+      data:
+        aws_access_key_id: "{{ .aws_access_key_id }}"
+        aws_secret_access_key: "{{ .aws_secret_access_key }}"
+        pullSecret: "{{ .ocp_pull_secret }}"
+        baseDomain: prod.konfluxeaas.com
+        ssh-privatekey: unused
+        ssh-publickey: unused
+
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-oidc-credentials
+  namespace: local-cluster
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-bucket-s3
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift-operator-oidc-provider-s3-credentials
+    template:
+      data:
+        bucket: prod-eaas-bucket
+        region: us-east-1
+        credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index d0b07b07..0258ccfc 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -4,3 +4,10 @@ kind: Kustomization
 resources:
   - ../base
   - ../../openshift-gitops
+  - external-secrets.yaml
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 188854a6..61f288b9 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-prd-es01.1ion.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 6ec66970 to f50ee652 on Wed Aug 7 15:18:51 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index ad0eb82e..1098cb53 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/konflux-ci
   - ../../base/cluster-secret-store-rh
   - ../../base/toolchain-member
+  - ../../base/eaas
 
 namespace: konflux-public-production
 
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-base-domain-param.yaml
new file mode 100644
index 00000000..70237afc
--- /dev/null
+++ b/components/cluster-as-a-service/production/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: prod.konfluxeaas.com
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
new file mode 100644
index 00000000..b0ec83fa
--- /dev/null
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -0,0 +1,56 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-credentials
+  namespace: clusters
+  labels:
+    hypershift.openshift.io/safe-to-delete-with-cluster: "false"
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-serviceaccount
+  - extract:
+      key: production/eaas/konflux-eaas-prod
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift
+    template:
+      data:
+        aws_access_key_id: "{{ .aws_access_key_id }}"
+        aws_secret_access_key: "{{ .aws_secret_access_key }}"
+        pullSecret: "{{ .ocp_pull_secret }}"
+        baseDomain: prod.konfluxeaas.com
+        ssh-privatekey: unused
+        ssh-publickey: unused
+
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: cluster-as-a-service-hypershift-oidc-credentials
+  namespace: local-cluster
+spec:
+  dataFrom:
+  - extract:
+      key: production/eaas/prod-eaas-bucket-s3
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: hypershift-operator-oidc-provider-s3-credentials
+    template:
+      data:
+        bucket: prod-eaas-bucket
+        region: us-east-1
+        credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index d0b07b07..0258ccfc 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -4,3 +4,10 @@ kind: Kustomization
 resources:
   - ../base
   - ../../openshift-gitops
+  - external-secrets.yaml
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 188854a6..61f288b9 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -38,7 +38,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-kflux-prd-es01.1ion.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from bdb1c372 to 6ec66970 on Wed Aug 7 14:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 54802a41..6a9b04dc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a956cc55..e17277e9 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=564d4fedc4af05657ae7a17ab79ddf574c757d16
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=76ee48a4bb1a998d24da2bf8b83c2f15ecfc0e94
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
+      - verify_ec_task_git_revision=ac3fb80ff2eb91505c37d9252eb144eb02de5a67
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-bdb1c372/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
388c388
<   verify_ec_task_git_revision: ac3fb80ff2eb91505c37d9252eb144eb02de5a67
---
>   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from bdb1c372 to 6ec66970 on Wed Aug 7 14:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 54802a41..6a9b04dc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a956cc55..e17277e9 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=564d4fedc4af05657ae7a17ab79ddf574c757d16
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=76ee48a4bb1a998d24da2bf8b83c2f15ecfc0e94
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
+      - verify_ec_task_git_revision=ac3fb80ff2eb91505c37d9252eb144eb02de5a67
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-bdb1c372/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
388c388
<   verify_ec_task_git_revision: ac3fb80ff2eb91505c37d9252eb144eb02de5a67
---
>   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1 
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
<h3>2: Development changes from bdb1c372 to 6ec66970 on Wed Aug 7 14:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 54802a41..6a9b04dc 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a956cc55..e17277e9 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=564d4fedc4af05657ae7a17ab79ddf574c757d16
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=76ee48a4bb1a998d24da2bf8b83c2f15ecfc0e94
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
+      - verify_ec_task_git_revision=ac3fb80ff2eb91505c37d9252eb144eb02de5a67
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-bdb1c372/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
388c388
<   verify_ec_task_git_revision: ac3fb80ff2eb91505c37d9252eb144eb02de5a67
---
>   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 1854c29a to bdb1c372 on Wed Aug 7 13:19:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5b1ed803..c656b2c1 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/default?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
+  newTag: a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index b055e605..b35a9035 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/default?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
+  newTag: a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 configMapGenerator:
 - name: integration-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 1854c29a to bdb1c372 on Wed Aug 7 13:19:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5b1ed803..c656b2c1 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/default?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
+  newTag: a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index b055e605..b35a9035 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/default?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
+  newTag: a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-1854c29a/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
98c98
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
307c307
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
---
>         image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
---
>             image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26 
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
<h3>3: Development changes from 1854c29a to bdb1c372 on Wed Aug 7 13:19:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5b1ed803..c656b2c1 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/default?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
+  newTag: a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index b055e605..b35a9035 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/default?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
+  newTag: a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-1854c29a/development/components/integration/development/kustomize.out.yaml
98c98
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
307c307
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
---
>         image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:a0b2ceb838ee73f33447a5cfca34e2bc4b7955b7
---
>             image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 1cbde440 to 1854c29a on Wed Aug 7 10:45:44 2024 </h3>  
 
<details> 
<summary>Git Diff (404 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 6dd56fc5..84491478 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - mintmaker
   - tracing-workload-otel-collector
   - tempo
+  - notification-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
new file mode 100644
index 00000000..0a91019a
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- notification-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
new file mode 100644
index 00000000..06b7ee7c
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/notification-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: notification-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: notification-controller
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index f54fe616..988def10 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index daa9bff4..5cd46bcf 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -180,3 +180,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tempo
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: notification-controller
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 77b46ac9..c13c2052 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -57,3 +57,5 @@ spec:
         - clusters
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
+        - notification-controller
+
diff --git a/components/notification-controller/OWNERS b/components/notification-controller/OWNERS
new file mode 100644
index 00000000..1e21e9d2
--- /dev/null
+++ b/components/notification-controller/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
diff --git a/components/notification-controller/README.md b/components/notification-controller/README.md
new file mode 100644
index 00000000..75a932ef
--- /dev/null
+++ b/components/notification-controller/README.md
@@ -0,0 +1,63 @@
+---
+title: Notification Controller
+---
+
+## Notification Controller
+
+This controller sends push pipelineruns results to [AWS SNS service](https://aws.amazon.com/sns/).
+It watches for `push pipelineruns`, extract the results from pipelineruns that ended successfully 
+and sends them to a topic defined in `AWS SNS`.
+
+Secrets and environment variables are needed to configure the `AWS SNS`
+
+## Notification Controller secrets
+
+| Name | Source | Description |
+| -- | -- | -- |
+| aws-sns-secret | appsre-stonesoup-vault | Secret containing `aws_access_key_id` and `aws_secret_access_key`
+
+in the format:  
+name: `credentials`  
+value: 
+```
+[default]
+aws_access_key_id=<AWS_ACCESS_KEY_ID>
+aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
+```
+
+This secret will be used to connect to our AWS account and it is mounted in the created pod
+
+## Environment Variables
+
+List of environment variables:
+
+| Name | Description |
+| -- | -- |
+| NOTIFICATION_REGION | define the AWS region to use
+| NOTIFICATION_TOPIC_ARN | the topic arn the messages will be sent to
+
+These environment variables will be used to define the `SNS topic` which the messages will be sent to 
+and the `region` of the AWS account.
+
+## Staging/Production deployment
+
+To deploy the `Notification-Controller` in Staging/Production environments we are using `ExternalSecret`
+defined in `vault` and mount it to the created pod.
+In addition we supply the `NOTIFICATION_REGION` and `NOTIFICATION_TOPIC_ARN` environment variables.
+
+## Development deployment  
+
+By default, the controller will not be deployed in development environment.
+However, deploying to development is possible by following these steps:
+
+1. Obtain credentails for AWS.
+2. Create SNS TOPIC and obtain its `region` and `topic arn`
+3. Update the `NOTIFICATION_TOPIC_ARN` and `NOTIFICATION_REGION` in 
+[development deployment patch](../notification-controller/development/topic_region_add.yaml) file
+with the values you obtained         
+4. Remove the `Notification-Controller` from the [delete-applications.yaml](../../argo-cd-apps/overlays/development/delete-applications.yaml) file
+5. Bootstrap the cluster
+6. Create a secret in `Notification-Controller` namespace with the AWS credentials you previously obtained, 
+following the structure defined in the [Notification Controller secrets](#notification-controller-secrets) 
+section.
+
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
new file mode 100644
index 00000000..652a0220
--- /dev/null
+++ b/components/notification-controller/base/deployment.yaml
@@ -0,0 +1,40 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    run: notification-controller
+  name: notification-controller
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      run: notification-controller
+  template:
+    metadata:
+      labels:
+        run: notification-controller
+    spec:
+      volumes:
+      - name: vol-secret
+        secret:
+          secretName: aws-sns-secret    
+      serviceAccountName: notification-controller-sa
+      containers:
+      - name: notification-controller
+        image: quay.io/konflux-ci/notification-service@sha256:1e50bc62fd1d325736ea189e0ff1b66639f26e1503ab9a67443f8ede20fb3167
+        volumeMounts:
+        - name: vol-secret
+          mountPath: /.aws
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi          
diff --git a/components/notification-controller/base/external-secrets/aws-sns-secret.yaml b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
new file mode 100644
index 00000000..746ce6e8
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-sns-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/monitoring/scanner/sns_secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-sns-secret
diff --git a/components/notification-controller/base/external-secrets/kustomization.yaml b/components/notification-controller/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..97ff7b95
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- aws-sns-secret.yaml
+namespace: notification-controller
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
new file mode 100644
index 00000000..490bd913
--- /dev/null
+++ b/components/notification-controller/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- service-account.yaml
+- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
new file mode 100644
index 00000000..f888b500
--- /dev/null
+++ b/components/notification-controller/base/namespace.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: notification-controller
+spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
new file mode 100644
index 00000000..0e0fca63
--- /dev/null
+++ b/components/notification-controller/base/service-account.yaml
@@ -0,0 +1,37 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: notification-controller-sa
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous  
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: notification-controller-pipelinerun-viewer
+rules:
+- apiGroups:
+  - "tekton.dev"
+  resources:
+  - 'pipelineruns'
+  verbs:
+  - get
+  - list
+  - watch
+  - update
+  - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: notification-controller-pipelinerun-viewer
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: notification-controller-pipelinerun-viewer
+subjects:
+- kind: ServiceAccount
+  name: notification-controller-sa
+  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
new file mode 100644
index 00000000..db4bc24d
--- /dev/null
+++ b/components/notification-controller/development/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
new file mode 100644
index 00000000..5207bfdf
--- /dev/null
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: <TOPIC_ARN>
+    - name: NOTIFICATION_REGION
+      value: <REGION>
\ No newline at end of file
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..f3f4ae62
--- /dev/null
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+- ../base/external-secrets
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
new file mode 100644
index 00000000..b2b1c711
--- /dev/null
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-1cbde440/production/components/cluster-secret-store/production/kustomize.out.yaml
40d39
<     - notification-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 1cbde440 to 1854c29a on Wed Aug 7 10:45:44 2024 </h3>  
 
<details> 
<summary>Git Diff (404 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 6dd56fc5..84491478 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - mintmaker
   - tracing-workload-otel-collector
   - tempo
+  - notification-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
new file mode 100644
index 00000000..0a91019a
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- notification-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
new file mode 100644
index 00000000..06b7ee7c
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/notification-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: notification-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: notification-controller
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index f54fe616..988def10 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index daa9bff4..5cd46bcf 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -180,3 +180,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tempo
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: notification-controller
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 77b46ac9..c13c2052 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -57,3 +57,5 @@ spec:
         - clusters
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
+        - notification-controller
+
diff --git a/components/notification-controller/OWNERS b/components/notification-controller/OWNERS
new file mode 100644
index 00000000..1e21e9d2
--- /dev/null
+++ b/components/notification-controller/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
diff --git a/components/notification-controller/README.md b/components/notification-controller/README.md
new file mode 100644
index 00000000..75a932ef
--- /dev/null
+++ b/components/notification-controller/README.md
@@ -0,0 +1,63 @@
+---
+title: Notification Controller
+---
+
+## Notification Controller
+
+This controller sends push pipelineruns results to [AWS SNS service](https://aws.amazon.com/sns/).
+It watches for `push pipelineruns`, extract the results from pipelineruns that ended successfully 
+and sends them to a topic defined in `AWS SNS`.
+
+Secrets and environment variables are needed to configure the `AWS SNS`
+
+## Notification Controller secrets
+
+| Name | Source | Description |
+| -- | -- | -- |
+| aws-sns-secret | appsre-stonesoup-vault | Secret containing `aws_access_key_id` and `aws_secret_access_key`
+
+in the format:  
+name: `credentials`  
+value: 
+```
+[default]
+aws_access_key_id=<AWS_ACCESS_KEY_ID>
+aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
+```
+
+This secret will be used to connect to our AWS account and it is mounted in the created pod
+
+## Environment Variables
+
+List of environment variables:
+
+| Name | Description |
+| -- | -- |
+| NOTIFICATION_REGION | define the AWS region to use
+| NOTIFICATION_TOPIC_ARN | the topic arn the messages will be sent to
+
+These environment variables will be used to define the `SNS topic` which the messages will be sent to 
+and the `region` of the AWS account.
+
+## Staging/Production deployment
+
+To deploy the `Notification-Controller` in Staging/Production environments we are using `ExternalSecret`
+defined in `vault` and mount it to the created pod.
+In addition we supply the `NOTIFICATION_REGION` and `NOTIFICATION_TOPIC_ARN` environment variables.
+
+## Development deployment  
+
+By default, the controller will not be deployed in development environment.
+However, deploying to development is possible by following these steps:
+
+1. Obtain credentails for AWS.
+2. Create SNS TOPIC and obtain its `region` and `topic arn`
+3. Update the `NOTIFICATION_TOPIC_ARN` and `NOTIFICATION_REGION` in 
+[development deployment patch](../notification-controller/development/topic_region_add.yaml) file
+with the values you obtained         
+4. Remove the `Notification-Controller` from the [delete-applications.yaml](../../argo-cd-apps/overlays/development/delete-applications.yaml) file
+5. Bootstrap the cluster
+6. Create a secret in `Notification-Controller` namespace with the AWS credentials you previously obtained, 
+following the structure defined in the [Notification Controller secrets](#notification-controller-secrets) 
+section.
+
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
new file mode 100644
index 00000000..652a0220
--- /dev/null
+++ b/components/notification-controller/base/deployment.yaml
@@ -0,0 +1,40 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    run: notification-controller
+  name: notification-controller
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      run: notification-controller
+  template:
+    metadata:
+      labels:
+        run: notification-controller
+    spec:
+      volumes:
+      - name: vol-secret
+        secret:
+          secretName: aws-sns-secret    
+      serviceAccountName: notification-controller-sa
+      containers:
+      - name: notification-controller
+        image: quay.io/konflux-ci/notification-service@sha256:1e50bc62fd1d325736ea189e0ff1b66639f26e1503ab9a67443f8ede20fb3167
+        volumeMounts:
+        - name: vol-secret
+          mountPath: /.aws
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi          
diff --git a/components/notification-controller/base/external-secrets/aws-sns-secret.yaml b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
new file mode 100644
index 00000000..746ce6e8
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-sns-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/monitoring/scanner/sns_secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-sns-secret
diff --git a/components/notification-controller/base/external-secrets/kustomization.yaml b/components/notification-controller/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..97ff7b95
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- aws-sns-secret.yaml
+namespace: notification-controller
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
new file mode 100644
index 00000000..490bd913
--- /dev/null
+++ b/components/notification-controller/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- service-account.yaml
+- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
new file mode 100644
index 00000000..f888b500
--- /dev/null
+++ b/components/notification-controller/base/namespace.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: notification-controller
+spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
new file mode 100644
index 00000000..0e0fca63
--- /dev/null
+++ b/components/notification-controller/base/service-account.yaml
@@ -0,0 +1,37 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: notification-controller-sa
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous  
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: notification-controller-pipelinerun-viewer
+rules:
+- apiGroups:
+  - "tekton.dev"
+  resources:
+  - 'pipelineruns'
+  verbs:
+  - get
+  - list
+  - watch
+  - update
+  - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: notification-controller-pipelinerun-viewer
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: notification-controller-pipelinerun-viewer
+subjects:
+- kind: ServiceAccount
+  name: notification-controller-sa
+  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
new file mode 100644
index 00000000..db4bc24d
--- /dev/null
+++ b/components/notification-controller/development/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
new file mode 100644
index 00000000..5207bfdf
--- /dev/null
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: <TOPIC_ARN>
+    - name: NOTIFICATION_REGION
+      value: <REGION>
\ No newline at end of file
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..f3f4ae62
--- /dev/null
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+- ../base/external-secrets
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
new file mode 100644
index 00000000..b2b1c711
--- /dev/null
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-1cbde440/staging/components/cluster-secret-store/staging/kustomize.out.yaml
40d39
<     - notification-controller
./commit-1854c29a/staging/components: notification-controller 
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
<h3>4: Development changes from 1cbde440 to 1854c29a on Wed Aug 7 10:45:44 2024 </h3>  
 
<details> 
<summary>Git Diff (404 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 6dd56fc5..84491478 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -22,5 +22,6 @@ resources:
   - mintmaker
   - tracing-workload-otel-collector
   - tempo
+  - notification-controller
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
new file mode 100644
index 00000000..0a91019a
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- notification-controller.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
new file mode 100644
index 00000000..06b7ee7c
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/notification-controller/notification-controller.yaml
@@ -0,0 +1,39 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/notification-controller
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: notification-controller-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: notification-controller
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
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index f54fe616..988def10 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: notification-controller
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index daa9bff4..5cd46bcf 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -180,3 +180,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: tempo
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: notification-controller
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 77b46ac9..c13c2052 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -57,3 +57,5 @@ spec:
         - clusters
         - konflux-qe-team-tenant
         - rhtap-shared-team-tenant
+        - notification-controller
+
diff --git a/components/notification-controller/OWNERS b/components/notification-controller/OWNERS
new file mode 100644
index 00000000..1e21e9d2
--- /dev/null
+++ b/components/notification-controller/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- gbenhaim
+- avi-biton
+- amisstea
+- yftacherzog
+- ifireball
diff --git a/components/notification-controller/README.md b/components/notification-controller/README.md
new file mode 100644
index 00000000..75a932ef
--- /dev/null
+++ b/components/notification-controller/README.md
@@ -0,0 +1,63 @@
+---
+title: Notification Controller
+---
+
+## Notification Controller
+
+This controller sends push pipelineruns results to [AWS SNS service](https://aws.amazon.com/sns/).
+It watches for `push pipelineruns`, extract the results from pipelineruns that ended successfully 
+and sends them to a topic defined in `AWS SNS`.
+
+Secrets and environment variables are needed to configure the `AWS SNS`
+
+## Notification Controller secrets
+
+| Name | Source | Description |
+| -- | -- | -- |
+| aws-sns-secret | appsre-stonesoup-vault | Secret containing `aws_access_key_id` and `aws_secret_access_key`
+
+in the format:  
+name: `credentials`  
+value: 
+```
+[default]
+aws_access_key_id=<AWS_ACCESS_KEY_ID>
+aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
+```
+
+This secret will be used to connect to our AWS account and it is mounted in the created pod
+
+## Environment Variables
+
+List of environment variables:
+
+| Name | Description |
+| -- | -- |
+| NOTIFICATION_REGION | define the AWS region to use
+| NOTIFICATION_TOPIC_ARN | the topic arn the messages will be sent to
+
+These environment variables will be used to define the `SNS topic` which the messages will be sent to 
+and the `region` of the AWS account.
+
+## Staging/Production deployment
+
+To deploy the `Notification-Controller` in Staging/Production environments we are using `ExternalSecret`
+defined in `vault` and mount it to the created pod.
+In addition we supply the `NOTIFICATION_REGION` and `NOTIFICATION_TOPIC_ARN` environment variables.
+
+## Development deployment  
+
+By default, the controller will not be deployed in development environment.
+However, deploying to development is possible by following these steps:
+
+1. Obtain credentails for AWS.
+2. Create SNS TOPIC and obtain its `region` and `topic arn`
+3. Update the `NOTIFICATION_TOPIC_ARN` and `NOTIFICATION_REGION` in 
+[development deployment patch](../notification-controller/development/topic_region_add.yaml) file
+with the values you obtained         
+4. Remove the `Notification-Controller` from the [delete-applications.yaml](../../argo-cd-apps/overlays/development/delete-applications.yaml) file
+5. Bootstrap the cluster
+6. Create a secret in `Notification-Controller` namespace with the AWS credentials you previously obtained, 
+following the structure defined in the [Notification Controller secrets](#notification-controller-secrets) 
+section.
+
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
new file mode 100644
index 00000000..652a0220
--- /dev/null
+++ b/components/notification-controller/base/deployment.yaml
@@ -0,0 +1,40 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    run: notification-controller
+  name: notification-controller
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      run: notification-controller
+  template:
+    metadata:
+      labels:
+        run: notification-controller
+    spec:
+      volumes:
+      - name: vol-secret
+        secret:
+          secretName: aws-sns-secret    
+      serviceAccountName: notification-controller-sa
+      containers:
+      - name: notification-controller
+        image: quay.io/konflux-ci/notification-service@sha256:1e50bc62fd1d325736ea189e0ff1b66639f26e1503ab9a67443f8ede20fb3167
+        volumeMounts:
+        - name: vol-secret
+          mountPath: /.aws
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 100m
+            memory: 20Mi          
diff --git a/components/notification-controller/base/external-secrets/aws-sns-secret.yaml b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
new file mode 100644
index 00000000..746ce6e8
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/aws-sns-secret.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-sns-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/monitoring/scanner/sns_secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-sns-secret
diff --git a/components/notification-controller/base/external-secrets/kustomization.yaml b/components/notification-controller/base/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..97ff7b95
--- /dev/null
+++ b/components/notification-controller/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- aws-sns-secret.yaml
+namespace: notification-controller
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
new file mode 100644
index 00000000..490bd913
--- /dev/null
+++ b/components/notification-controller/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- namespace.yaml
+- service-account.yaml
+- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
new file mode 100644
index 00000000..f888b500
--- /dev/null
+++ b/components/notification-controller/base/namespace.yaml
@@ -0,0 +1,5 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: notification-controller
+spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
new file mode 100644
index 00000000..0e0fca63
--- /dev/null
+++ b/components/notification-controller/base/service-account.yaml
@@ -0,0 +1,37 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: notification-controller-sa
+  namespace: notification-controller
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous  
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: notification-controller-pipelinerun-viewer
+rules:
+- apiGroups:
+  - "tekton.dev"
+  resources:
+  - 'pipelineruns'
+  verbs:
+  - get
+  - list
+  - watch
+  - update
+  - patch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: notification-controller-pipelinerun-viewer
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: notification-controller-pipelinerun-viewer
+subjects:
+- kind: ServiceAccount
+  name: notification-controller-sa
+  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
new file mode 100644
index 00000000..db4bc24d
--- /dev/null
+++ b/components/notification-controller/development/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
new file mode 100644
index 00000000..5207bfdf
--- /dev/null
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: <TOPIC_ARN>
+    - name: NOTIFICATION_REGION
+      value: <REGION>
\ No newline at end of file
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
new file mode 100644
index 00000000..f3f4ae62
--- /dev/null
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+- ../base/external-secrets
+
+patches:
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller
+      kind: Deployment
\ No newline at end of file
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
new file mode 100644
index 00000000..b2b1c711
--- /dev/null
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1854c29a/development/components: notification-controller 
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
```
 
</details> 
<br> 


</div>
