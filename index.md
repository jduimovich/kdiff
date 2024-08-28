# kustomize changes tracked by commits 
### This file generated at Wed Aug 28 16:08:27 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8a60517d to 21b07204 on Wed Aug 28 15:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
new file mode 100644
index 00000000..13948d36
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -0,0 +1,36 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-pipelines-runner
+rules:
+  - verbs:
+      - get
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+  - verbs:
+      - use
+    apiGroups:
+      - security.openshift.io
+    resources:
+      - securitycontextconstraints
+    resourceNames:
+      - appstudio-pipelines-scc
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - appstudio.redhat.com
+    resources:
+      - enterprisecontractpolicies
+  - verbs:
+      - get
+      - create
+      - delete
+      - list
+      - watch
+    apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
index ccdc8591..e12a6bb6 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
+- appstudio-pipelines-runner.yaml
 - register-cluster-extra-member-permissions.yaml
 - sandbox-sre-admins.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 8a60517d to 21b07204 on Wed Aug 28 15:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
new file mode 100644
index 00000000..13948d36
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -0,0 +1,36 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-pipelines-runner
+rules:
+  - verbs:
+      - get
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+  - verbs:
+      - use
+    apiGroups:
+      - security.openshift.io
+    resources:
+      - securitycontextconstraints
+    resourceNames:
+      - appstudio-pipelines-scc
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - appstudio.redhat.com
+    resources:
+      - enterprisecontractpolicies
+  - verbs:
+      - get
+      - create
+      - delete
+      - list
+      - watch
+    apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
index ccdc8591..e12a6bb6 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
+- appstudio-pipelines-runner.yaml
 - register-cluster-extra-member-permissions.yaml
 - sandbox-sre-admins.yaml 
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
<h3>1: Development changes from 8a60517d to 21b07204 on Wed Aug 28 15:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
new file mode 100644
index 00000000..13948d36
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -0,0 +1,36 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-pipelines-runner
+rules:
+  - verbs:
+      - get
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+  - verbs:
+      - use
+    apiGroups:
+      - security.openshift.io
+    resources:
+      - securitycontextconstraints
+    resourceNames:
+      - appstudio-pipelines-scc
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - appstudio.redhat.com
+    resources:
+      - enterprisecontractpolicies
+  - verbs:
+      - get
+      - create
+      - delete
+      - list
+      - watch
+    apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
index ccdc8591..e12a6bb6 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
+- appstudio-pipelines-runner.yaml
 - register-cluster-extra-member-permissions.yaml
 - sandbox-sre-admins.yaml 
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
<h3>2: Production changes from bbbaea90 to 8a60517d on Wed Aug 28 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ded397c9..64d7365a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1513,6 +1513,9 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index faae709a..49366b6b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 23c716be..042d077b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c758dce8..dcab5f29 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index fc2bb1a1..2b7a7b43 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-bbbaea90/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120"
./commit-bbbaea90/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120"
./commit-bbbaea90/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120"
./commit-bbbaea90/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from bbbaea90 to 8a60517d on Wed Aug 28 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ded397c9..64d7365a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1513,6 +1513,9 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index faae709a..49366b6b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 23c716be..042d077b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c758dce8..dcab5f29 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index fc2bb1a1..2b7a7b43 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info 
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
<h3>2: Development changes from bbbaea90 to 8a60517d on Wed Aug 28 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ded397c9..64d7365a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1513,6 +1513,9 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index faae709a..49366b6b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 23c716be..042d077b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c758dce8..dcab5f29 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index fc2bb1a1..2b7a7b43 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info 
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
<h3>3: Production changes from 9a0e8a69 to bbbaea90 on Wed Aug 28 13:14:51 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index a94281f3..0e92c9aa 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -10,7 +10,7 @@ jobs:
     permissions: write-all
     runs-on: ubuntu-latest
     steps:
-      - uses: actions/checkout@v3
+      - uses: actions/checkout@v4
 
       # This prepares directory where github/codeql-action/upload-sarif@v1 looks up report files by default.
       - name: Create ../results directory for SARIF report files
@@ -49,7 +49,7 @@ jobs:
         continue-on-error: true
 
       - name: Upload SARIF report files to GitHub
-        uses: github/codeql-action/upload-sarif@v2
+        uses: github/codeql-action/upload-sarif@v3
 
       # Ensure the workflow eventually fails if files did not pass kube-linter checks.
       - name: Verify kube-linter-action succeeded 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9a0e8a69 to bbbaea90 on Wed Aug 28 13:14:51 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index a94281f3..0e92c9aa 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -10,7 +10,7 @@ jobs:
     permissions: write-all
     runs-on: ubuntu-latest
     steps:
-      - uses: actions/checkout@v3
+      - uses: actions/checkout@v4
 
       # This prepares directory where github/codeql-action/upload-sarif@v1 looks up report files by default.
       - name: Create ../results directory for SARIF report files
@@ -49,7 +49,7 @@ jobs:
         continue-on-error: true
 
       - name: Upload SARIF report files to GitHub
-        uses: github/codeql-action/upload-sarif@v2
+        uses: github/codeql-action/upload-sarif@v3
 
       # Ensure the workflow eventually fails if files did not pass kube-linter checks.
       - name: Verify kube-linter-action succeeded 
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
<h3>3: Development changes from 9a0e8a69 to bbbaea90 on Wed Aug 28 13:14:51 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index a94281f3..0e92c9aa 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -10,7 +10,7 @@ jobs:
     permissions: write-all
     runs-on: ubuntu-latest
     steps:
-      - uses: actions/checkout@v3
+      - uses: actions/checkout@v4
 
       # This prepares directory where github/codeql-action/upload-sarif@v1 looks up report files by default.
       - name: Create ../results directory for SARIF report files
@@ -49,7 +49,7 @@ jobs:
         continue-on-error: true
 
       - name: Upload SARIF report files to GitHub
-        uses: github/codeql-action/upload-sarif@v2
+        uses: github/codeql-action/upload-sarif@v3
 
       # Ensure the workflow eventually fails if files did not pass kube-linter checks.
       - name: Verify kube-linter-action succeeded 
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
<h3>4: Production changes from 09f7ab89 to 9a0e8a69 on Wed Aug 28 13:12:13 2024 </h3>  
 
<details> 
<summary>Git Diff (2717 lines)</summary>  

``` 
diff --git a/.gitignore b/.gitignore
index 0d0404fc..88418819 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,7 +1,6 @@
 hack/preview.env
 hack/monitoring.env
 cosign.pub
-components/spi/base/config.yaml
 .tmp/
 tmp
 .idea/*
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 84491478..26e96a32 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -6,8 +6,6 @@ resources:
   - has
   - release
   - integration
-  - spi
-  - remote-secret-controller
   - enterprise-contract
   - build-service
   - jvm-build-service
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml
deleted file mode 100644
index 093cfc7f..00000000
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- remote-secret-controller.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
deleted file mode 100644
index 77ec4789..00000000
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: remote-secret-controller
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/remote-secret-controller/overlays
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: remote-secret-controller-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: remotesecret
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml
deleted file mode 100644
index d2f6a992..00000000
--- a/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- spi.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
deleted file mode 100644
index c9856bd9..00000000
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: spi
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/spi/overlays
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: spi-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: spi-system
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml b/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml
deleted file mode 100644
index 3bf78b5f..00000000
--- a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- spi-vault.yaml
-components:
-  - ../../../../../k-components/deploy-to-member-cluster
diff --git a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml b/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml
deleted file mode 100644
index 541b3c81..00000000
--- a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml
+++ /dev/null
@@ -1,29 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: spi-vault 
-spec:
-  generators:
-    - clusters: {}
-  template:
-    metadata:
-      name: spi-vault-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: components/spi-vault
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: spi-vault
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5cd46bcf..3a01cbf9 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ../../base/host
   - ../../base/host/optional/infra-deployments/dev-sso
   - ../../base/member
-  - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
@@ -43,16 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 164a000e..27ca6580 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -42,17 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
-  - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
       version: v1alpha1
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 6b21e2d2..c0b3c9cf 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -42,17 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
-  - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
       version: v1alpha1
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index a12caa7e..57efbf4e 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -44,9 +44,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-spi'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-mintmaker-team'
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index 33863d61..c5fd397d 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -21,12 +21,7 @@ rules:
   - releases
   - releaseserviceconfigs
   - releasestrategies
-  - snapshotenvironmentbindings
   - snapshots
-  - spiaccesschecks
-  - spiaccesstokenbindings
-  - spifilecontentrequests
-  - remotesecrets
   verbs:
   - get
   - list
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index ca99f55a..3dfd14a2 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -21,12 +21,7 @@ rules:
       - releases
       - releaseserviceconfigs
       - releasestrategies
-      - snapshotenvironmentbindings
       - snapshots
-      - spiaccesschecks
-      - spiaccesstokenbindings
-      - spifilecontentrequests
-      - remotesecrets
     verbs:
       - '*'
   - apiGroups:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index e43c4b71..93633a1b 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -37,9 +37,7 @@ spec:
       - plnsvc-tests
       - quality-dashboard
       - release-service
-      - remotesecret
       - sandbox-sre-member
-      - spi-system
       - tekton-results
       - toolchain-member-operator
     includedResources:
@@ -49,7 +47,6 @@ spec:
       - integrationtestscenarios.appstudio.redhat.com
       - secrets
       - snapshots.appstudio.redhat.com
-      - snapshotenvironmentbindings.appstudio.redhat.com
       - serviceaccounts
       - namespaces
     storageLocation: velero-aws-1
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 94162119..57d884e7 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -30,7 +30,6 @@ spec:
         - dora-metrics
         - application-service
         - appstudio-workload-monitoring
-        - spi-system
         - group-sync-operator
         - build-templates
         - build-templates-e2e
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 26ea9398..36efa1c4 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -29,6 +29,4 @@ spec:
     - namespaces:
         - tekton-results
         - gitops
-        - spi-system
-        - remotesecret
         - openshift-adp
diff --git a/components/image-controller/base/rbac/image-controller-maintainer.yaml b/components/image-controller/base/rbac/image-controller-maintainer.yaml
index cc6000e7..ad0fc190 100644
--- a/components/image-controller/base/rbac/image-controller-maintainer.yaml
+++ b/components/image-controller/base/rbac/image-controller-maintainer.yaml
@@ -19,22 +19,6 @@ rules:
     verbs:
       - get
 
-  - apiGroups:
-      - 'appstudio.redhat.com'
-    resources:
-      - remotesecrets
-    verbs:
-      - get
-      - list
-      - watch
-
-  - apiGroups:
-      - 'appstudio.redhat.com'
-    resources:
-      - remotesecrets/status
-    verbs:
-      - get
-
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 91f4da6a..9ae3bac1 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - kubesaw/
-- spi/
 - build-service/
 - image-controller/
 - managed-gitops/
diff --git a/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml b/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml
deleted file mode 100644
index 72505d13..00000000
--- a/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-health
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-health
-    key: spi-health.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-outbound-traffic
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-outbound-traffic
-    key: spi-outbound-traffic.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-slo
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-slo
-    key: spi-slo.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: remotesecret-metrics-dashboard
-  labels:
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-remotesecret-metrics
-    key: remotesecret-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
deleted file mode 100644
index e097122d..00000000
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
-- dashboard.yaml
diff --git a/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml b/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
index 630fd857..cbb42aa3 100644
--- a/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
+++ b/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
@@ -7,4 +7,3 @@ resources:
 - release-service.yaml
 - sandbox-host-operator.yaml
 - sandbox-member-operator.yaml
-- spi-operator.yaml
diff --git a/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml b/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml
deleted file mode 100644
index 9b677e7b..00000000
--- a/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml
+++ /dev/null
@@ -1,37 +0,0 @@
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  namespace: appstudio-workload-monitoring
-  name: spi-operator
-  labels:
-    prometheus: appstudio-workload
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      name: "prometheus-k8s-token-xhrjb"
-      key: token
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-  namespaceSelector:
-    matchNames:
-    - spi-system
-  selector:
-    matchLabels:
-      control-plane: "controller-manager"
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-spi-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: spi-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: prometheus-k8s
-  namespace: appstudio-workload-monitoring
diff --git a/components/remote-secret-controller/OWNERS b/components/remote-secret-controller/OWNERS
deleted file mode 100644
index 8aeb4a61..00000000
--- a/components/remote-secret-controller/OWNERS
+++ /dev/null
@@ -1,9 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- skabashnyuk
-- mshaposhnik
-
-reviewers:
-- skabashnyuk
-- mshaposhnik
diff --git a/components/remote-secret-controller/base/argocd-permissions.yaml b/components/remote-secret-controller/base/argocd-permissions.yaml
deleted file mode 100644
index e346483a..00000000
--- a/components/remote-secret-controller/base/argocd-permissions.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: crd-manager-for-remote-secret
-rules:
-  - verbs:
-      - patch
-      - get
-      - list
-      - create
-      - get
-    apiGroups:
-      - apiextensions.k8s.io
-    resources:
-      - customresourcedefinitions
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: crd-manager-for-remote-secret
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: crd-manager-remote-secret
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
diff --git a/components/remote-secret-controller/base/kustomization.yaml b/components/remote-secret-controller/base/kustomization.yaml
deleted file mode 100644
index 21e26b62..00000000
--- a/components/remote-secret-controller/base/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - argocd-permissions.yaml
-  - ./rbac
-
-namespace: remotesecret
diff --git a/components/remote-secret-controller/base/rbac/kustomization.yaml b/components/remote-secret-controller/base/rbac/kustomization.yaml
deleted file mode 100644
index dfe83e69..00000000
--- a/components/remote-secret-controller/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - remote-secret.yaml
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
deleted file mode 100644
index 8c55752f..00000000
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: remotesecret-service-maintainers
-  namespace: remotesecret
-subjects:
-  - kind: Group
-    name: konflux-spi-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: component-maintainer
diff --git a/components/remote-secret-controller/overlays/development/config-patch.json b/components/remote-secret-controller/overlays/development/config-patch.json
deleted file mode 100644
index a919ec9f..00000000
--- a/components/remote-secret-controller/overlays/development/config-patch.json
+++ /dev/null
@@ -1,27 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps-crc.testing"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "remotesecret-dev"
-  },
-  {
-    "op": "add",
-    "path": "/data/ENABLEREMOTESECRETS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/VAULTINSECURETLS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/ZAPLOGLEVEL",
-    "value": "debug"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
deleted file mode 100644
index 29c09d95..00000000
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: remote-secret-controller-manager-environment-config
-    path: config-patch.json
diff --git a/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml b/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml
deleted file mode 100644
index e02b5bf1..00000000
--- a/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
deleted file mode 100644
index 556dcc70..00000000
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - aws-credentials-external-secret.yaml
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: Deployment
-      name: remote-secret-controller-manager
-    path: operator-limits-patch.json
diff --git a/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json b/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json
deleted file mode 100644
index 7c871ba0..00000000
--- a/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "1024Mi"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json
deleted file mode 100644
index e1ff2fb0..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rs-m01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json
deleted file mode 100644
index 37414488..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rs-rh01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
deleted file mode 100644
index a6c20191..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
deleted file mode 100644
index b21ad970..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
deleted file mode 100644
index 90f08b79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
deleted file mode 100644
index 20e812ed..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod-p02/rs-p02"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml b/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml
deleted file mode 100644
index e02b5bf1..00000000
--- a/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
deleted file mode 100644
index 556dcc70..00000000
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - aws-credentials-external-secret.yaml
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: Deployment
-      name: remote-secret-controller-manager
-    path: operator-limits-patch.json
diff --git a/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json b/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 2511dca8..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
deleted file mode 100644
index f532928c..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-stage/rs-p01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json
deleted file mode 100644
index cdd47923..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-m01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json
deleted file mode 100644
index 46bfe180..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-rh01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
deleted file mode 100644
index d63f5cb3..00000000
--- a/components/spi-vault/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: spi-vault
-
-resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
diff --git a/components/spi/OWNERS b/components/spi/OWNERS
deleted file mode 100644
index 8aeb4a61..00000000
--- a/components/spi/OWNERS
+++ /dev/null
@@ -1,9 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- skabashnyuk
-- mshaposhnik
-
-reviewers:
-- skabashnyuk
-- mshaposhnik
diff --git a/components/spi/base/argocd-permissions.yaml b/components/spi/base/argocd-permissions.yaml
deleted file mode 100644
index 005114c3..00000000
--- a/components/spi/base/argocd-permissions.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: crd-manager-for-spi
-rules:
-  - verbs:
-      - patch
-      - get
-      - list
-      - create
-      - get
-    apiGroups:
-      - apiextensions.k8s.io
-    resources:
-      - customresourcedefinitions
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: grant-argocd-crd-permissions-for-spi
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: crd-manager-for-spi
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
diff --git a/components/spi/base/config.yaml b/components/spi/base/config.yaml
deleted file mode 100644
index 88e205cb..00000000
--- a/components/spi/base/config.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-serviceProviders:
-  - type: GitHub
-    clientId: <github-client-id>
-    clientSecret: <github-client-secret>
diff --git a/components/spi/base/external-secrets/kustomization.yaml b/components/spi/base/external-secrets/kustomization.yaml
deleted file mode 100644
index 6b26a57b..00000000
--- a/components/spi/base/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - spi-shared-configuration-file.yaml
-namespace: spi-system
diff --git a/components/spi/base/external-secrets/spi-shared-configuration-file.yaml b/components/spi/base/external-secrets/spi-shared-configuration-file.yaml
deleted file mode 100644
index 245a24f8..00000000
--- a/components/spi/base/external-secrets/spi-shared-configuration-file.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-shared-configuration-file
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: shared-configuration-file
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
deleted file mode 100644
index db02eac7..00000000
--- a/components/spi/base/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ./rbac
-  - argocd-permissions.yaml
-
-namespace: spi-system
diff --git a/components/spi/base/rbac/kustomization.yaml b/components/spi/base/rbac/kustomization.yaml
deleted file mode 100644
index b2a156c1..00000000
--- a/components/spi/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - spi.yaml
\ No newline at end of file
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
deleted file mode 100644
index 869c9afc..00000000
--- a/components/spi/base/rbac/spi.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: spi-service-maintainers
-  namespace: spi-system
-subjects:
-  - kind: Group
-    name: konflux-spi-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: component-maintainer
diff --git a/components/spi/overlays/development/config-patch.json b/components/spi/overlays/development/config-patch.json
deleted file mode 100644
index a9b78908..00000000
--- a/components/spi/overlays/development/config-patch.json
+++ /dev/null
@@ -1,27 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.appstudio-stage.x99m.p1.openshiftapps.com"
-  },
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-dev"
-  },
-  {
-    "op": "add",
-    "path": "/data/VAULTINSECURETLS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "vault"
-  }
-]
diff --git a/components/spi/overlays/development/delete-shared-configuration-file.yaml b/components/spi/overlays/development/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/development/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
deleted file mode 100644
index 2d807b23..00000000
--- a/components/spi/overlays/development/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/development/operator-limits-patch.json b/components/spi/overlays/development/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/development/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/production/base/config-patch.json b/components/spi/overlays/production/base/config-patch.json
deleted file mode 100644
index 96bbfe07..00000000
--- a/components/spi/overlays/production/base/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "aws"
-  }
-]
diff --git a/components/spi/overlays/production/base/delete-shared-configuration-file.yaml b/components/spi/overlays/production/base/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/production/base/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
deleted file mode 100644
index e517631d..00000000
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - spi-aws-credentials-external-secret.yaml
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/production/base/operator-limits-patch.json b/components/spi/overlays/production/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/production/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml b/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml
deleted file mode 100644
index cc4545b4..00000000
--- a/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/spi/overlays/production/stone-prd-m01/config-patch.json b/components/spi/overlays/production/stone-prd-m01/config-patch.json
deleted file mode 100644
index ca75e7f7..00000000
--- a/components/spi/overlays/production/stone-prd-m01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/m01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 0a755f63..00000000
--- a/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/m01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prd-rh01/config-patch.json b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
deleted file mode 100644
index 135d826c..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rh01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 025361c4..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/rh01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prod-p01/config-patch.json b/components/spi/overlays/production/stone-prod-p01/config-patch.json
deleted file mode 100644
index 0d3de7c9..00000000
--- a/components/spi/overlays/production/stone-prod-p01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index a6c20191..00000000
--- a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 3490a5ea..00000000
--- a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/p01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
deleted file mode 100644
index 3530485a..00000000
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod-p02/spi-p02"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 90f08b79..00000000
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index a7db9b3a..00000000
--- a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/p02/shared-configuration-file
diff --git a/components/spi/overlays/staging/base/config-patch.json b/components/spi/overlays/staging/base/config-patch.json
deleted file mode 100644
index 96bbfe07..00000000
--- a/components/spi/overlays/staging/base/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "aws"
-  }
-]
diff --git a/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml b/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
deleted file mode 100644
index e517631d..00000000
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - spi-aws-credentials-external-secret.yaml
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/staging/base/operator-limits-patch.json b/components/spi/overlays/staging/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/staging/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml b/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml
deleted file mode 100644
index cc4545b4..00000000
--- a/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
deleted file mode 100644
index e4872e4e..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-stage/spi-p01"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index ed36b2cf..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 2511dca8..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index f65b16f8..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/p01/shared-configuration-file
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
deleted file mode 100644
index 77c2ccca..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ /dev/null
@@ -1,13 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/m01"
-  }
-
-]
diff --git a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 58b57b9a..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/m01/shared-configuration-file
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
deleted file mode 100644
index 2dca0c30..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rh01"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 74701088..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/rh01/shared-configuration-file
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 10fa4c35..19d8f764 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -17,8 +17,6 @@ docs-en:
         url: /docs/development/pre.html
       - title: Basic Development Environment
         url: /docs/development/deployment.html
-      - title: SPI Deployment
-        url: /docs/development/spi.html
       - title: Sandbox Operators Deployment
         url: /docs/development/sandbox.html
   - title: Testing
diff --git a/docs/deployment/extending-the-service.md b/docs/deployment/extending-the-service.md
index 798188d1..5ecdd7ea 100644
--- a/docs/deployment/extending-the-service.md
+++ b/docs/deployment/extending-the-service.md
@@ -58,8 +58,6 @@ These are the steps to add your own component:
                                 📄 kustomization.yaml
             ```
 
-            See `components/spi` for an example of this
-
     - See `components/gitops/staging` for more complex structure, where overlays are further structured for cluster specific configurations.
 
 3. Create an Argo CD `ApplicationSet` resource in `argo-cd-apps/base/directory/team-name/(team-name).yaml` or `argo-cd-apps/base/team-name/(team-name).yaml` depending on your application.
@@ -138,7 +136,7 @@ Access to namespaces is managed by [components/authentication](components/authen
 ## For Members and Maintainers
 
 ### How to add yourself as a reviewer/approver
-There is an OWNERS file present in each component folder [like this](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/OWNERS), people mentioned in the file have the respective access to approve/review PR's.
+There is an OWNERS file present in each component folder [like this](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/integration/OWNERS), people mentioned in the file have the respective access to approve/review PR's.
 
 To add yourself change the OWNERS file present in your component folder and Raise a pull request, if you want to be a Approver for the entire repo please change the OWNERS file present in the root level of this repository
 
diff --git a/docs/development/spi.md b/docs/development/spi.md
deleted file mode 100644
index d6fc564d..00000000
--- a/docs/development/spi.md
+++ /dev/null
@@ -1,59 +0,0 @@
----
-title: Service Provider Integration Deployment
----
-
-## SPI Deployment environment promotion
-
-SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/konflux-ci/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
-
-## Post-bootstrap Service Provider Integration(SPI) Configuration
-
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
-
-> **NOTE:**  Following process is automated in `preview` mode
-
-SPI components will fail to start right after the bootstrap as additional manual configuration is required before they are healthy.
-
-1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
-
-2. Create a `shared-configuration-file` Secret 
-
-```bash
-kubectl create secret generic shared-configuration-file --from-file=components/spi/base/config.yaml -n spi-system
-```
-
-3. In few moments, SPI pods should start
-
-SPI Vault instance has to be manually initialized. There is a script to help with that:
-
-1. Make sure that your cluster user has at least [permissions](../../components/authentication/spi-vault-admin.yaml).
-
-2. Clone SPI operator repo 
-
-```bash
-git clone https://github.com/konflux-ci/service-provider-integration-operator && cd service-provider-integration-operator
-```
-
-3. run `vault-init.sh` script from repo root directory 
-
-```bash
-`./hack/vault-init.sh`
-```
-
-### OAuth URLs for known environments
-
-#### stg-rh01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth/callback`
-
-#### stg-m01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com/oauth/callback`
-
-#### prd-rh01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com/oauth/callback`
-
-#### prd-m01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com/oauth/callback`
diff --git a/hack/preview.sh b/hack/preview.sh
index 95d7c903..8db3077f 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -156,23 +156,6 @@ if [ -n "$DEPLOY_ONLY" ]; then
   done
 fi
 
-# patch the SPI configuration with the Vault host configuration to provided VAULT_HOST variable or to current cluster
-# and the base URL set to the SPI_BASE_URL variable or the URL of the  route to the SPI OAuth service in the current cluster
-# This script also sets up the Vault client to accept insecure TLS connections so that the custom vault host doesn't have
-# to serve requests using a trusted TLS certificate.
-$ROOT/hack/util-patch-spi-config.sh
-# configure the secrets and providers in SPI
-TMP_FILE=$(mktemp)
-yq e ".serviceProviders[0].type=\"GitHub\"" $ROOT/components/spi/base/config.yaml | \
-    yq e ".serviceProviders[0].clientId=\"${SPI_GITHUB_CLIENT_ID:-app-client-id}\"" - | \
-    yq e ".serviceProviders[0].clientSecret=\"${SPI_GITHUB_CLIENT_SECRET:-app-secret}\"" - | \
-    yq e ".serviceProviders[1].type=\"Quay\"" - | \
-    yq e ".serviceProviders[1].clientId=\"${SPI_QUAY_CLIENT_ID:-app-client-id}\"" - | \
-    yq e ".serviceProviders[1].clientSecret=\"${SPI_QUAY_CLIENT_SECRET:-app-secret}\"" - > $TMP_FILE
-oc create namespace spi-system --dry-run=client -o yaml | oc apply -f -
-oc create -n spi-system secret generic shared-configuration-file --from-file=config.yaml=$TMP_FILE --dry-run=client -o yaml | oc apply -f -
-echo "SPI configured"
-rm $TMP_FILE
 
 $ROOT/hack/util-set-github-org $MY_GITHUB_ORG
 
@@ -206,17 +189,6 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${MINTMAKER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newTag=\"${MINTMAKER_IMAGE_TAG}\"" $ROOT/components/mintmaker/development/kustomization.yaml
 [[ -n "${MINTMAKER_PR_OWNER}" && "${MINTMAKER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/mintmaker*\")) |= \"https://github.com/${MINTMAKER_PR_OWNER}/mintmaker/config/default?ref=${MINTMAKER_PR_SHA}\"" $ROOT/components/mintmaker/development/kustomization.yaml
 
-[ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-
-[ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-
-[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
@@ -241,15 +213,6 @@ while [ "$(oc get applications.argoproj.io all-application-sets -n openshift-git
   sleep 5
 done
 
-# Init Vault
-$ROOT/hack/spi/vault-init.sh
-
-# Init SPI
-$ROOT/hack/spi/spi-init.sh
-
-# Init Remote Secret
-$ROOT/hack/spi/remote-secret-init.sh
-
 APPS=$(oc get apps -n openshift-gitops -o name)
 # trigger refresh of apps
 for APP in $APPS; do
diff --git a/hack/spi/remote-secret-init.sh b/hack/spi/remote-secret-init.sh
deleted file mode 100755
index 7ec0c022..00000000
--- a/hack/spi/remote-secret-init.sh
+++ /dev/null
@@ -1,43 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-REMOTE_SECRET_APP_ROLE_FILE="$(realpath .tmp)/approle_remote_secret.yaml"
-
-function auth() {
-	if ! vaultExec "vault auth list | grep -q approle"; then
-		echo "setup approle authentication ..."
-		vaultExec "vault auth enable approle"
-	fi
-
-	mkdir -p .tmp
-
-	echo '' > ${REMOTE_SECRET_APP_ROLE_FILE}
-	approleSet remote-secret-operator ${REMOTE_SECRET_APP_ROLE_FILE}
-
-	echo "secret yaml with Vault credentials prepared"
-}
-
-function approleAuthRemoteSecret() {
-	login
-	audit
-	auth
-}
-
-if ! timeout 300s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q remote-secret-controller-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application remote-secret-controller-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io remote-secret-controller-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing remote secret controller"
-		approleAuthRemoteSecret
-		restart
-		oc apply -f $REMOTE_SECRET_APP_ROLE_FILE -n remotesecret
-		echo "Remote secret controller initialization was completed"
-	else
-		echo "Remote secret controller initialization was skipped"
-	fi
-fi
diff --git a/hack/spi/spi-init.sh b/hack/spi/spi-init.sh
deleted file mode 100755
index 877811da..00000000
--- a/hack/spi/spi-init.sh
+++ /dev/null
@@ -1,68 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-SPI_APP_ROLE_FILE="$(realpath .tmp)/approle_secret.yaml"
-
-function k8sAuth() {
-	if ! vaultExec "vault auth list | grep -q kubernetes"; then
-		echo "setup kubernetes authentication ..."
-		vaultExec "vault auth enable kubernetes"
-	fi
-	vaultExec "vault write auth/kubernetes/role/spi-controller-manager \
-        bound_service_account_names=spi-controller-manager \
-        bound_service_account_namespaces=spi-system \
-        policies=${SPI_POLICY_NAME}"
-	vaultExec "vault write auth/kubernetes/role/spi-oauth \
-          bound_service_account_names=spi-oauth-sa \
-          bound_service_account_namespaces=spi-system \
-          policies=${SPI_POLICY_NAME}"
-	# shellcheck disable=SC2016
-	vaultExec 'vault write auth/kubernetes/config \
-        kubernetes_host=https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT'
-}
-
-function approleAuth() {
-	if ! vaultExec "vault auth list | grep -q approle"; then
-		echo "setup approle authentication ..."
-		vaultExec "vault auth enable approle"
-	fi
-
-	mkdir -p .tmp
-
-	echo '' > ${SPI_APP_ROLE_FILE}
-	approleSet spi-operator ${SPI_APP_ROLE_FILE}
-	approleSet spi-oauth ${SPI_APP_ROLE_FILE}
-
-	echo "secret yaml with Vault credentials prepared"
-}
-
-function auth() {
-	k8sAuth
-	approleAuth
-}
-
-function approleAuthSPI() {
-	login
-	audit
-	auth
-}
-
-if ! timeout 100s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application spi-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io spi-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing SPI"
-		approleAuthSPI
-		oc apply -f $SPI_APP_ROLE_FILE -n spi-system
-		echo "SPI initialization was completed"
-	else
-		echo "SPI initialization was skipped"
-	fi
-fi
diff --git a/hack/spi/utils.sh b/hack/spi/utils.sh
deleted file mode 100755
index ff51c1c0..00000000
--- a/hack/spi/utils.sh
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/bash
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-VAULT_KUBE_CONFIG=${VAULT_KUBE_CONFIG:-${KUBECONFIG:-$HOME/.kube/config}}
-VAULT_NAMESPACE=${VAULT_NAMESPACE:-spi-vault}
-VAULT_PODNAME=${VAULT_PODNAME:-vault-0}
-ROOT_TOKEN_NAME=vault-root-token
-
-function login() {
-	ROOT_TOKEN=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${ROOT_TOKEN_NAME} -n ${VAULT_NAMESPACE} -o jsonpath="{.data.root_token}" | base64 --decode)
-	vaultExec "vault login ${ROOT_TOKEN} > /dev/null"
-}
-
-function audit() {
-	if ! vaultExec "vault audit list | grep -q file"; then
-		echo "enabling audit log ..."
-		vaultExec "vault audit enable file file_path=stdout"
-	fi
-}
-
-function vaultExec() {
-	COMMAND=${1}
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} exec ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} -- sh -c "${COMMAND}" 2>/dev/null
-}
-
-function approleSet() {
-	vaultExec "vault write auth/approle/role/${1} token_policies=${SPI_POLICY_NAME}"
-	ROLE_ID=$(vaultExec "vault read auth/approle/role/${1}/role-id --format=json" | jq -r '.data.role_id')
-	SECRET_ID=$(vaultExec "vault write -force auth/approle/role/${1}/secret-id --format=json" | jq -r '.data.secret_id')
-	APP_ROLE_FILE=${2}
-	echo "---" >>${APP_ROLE_FILE}
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic vault-approle-${1} \
-		--from-literal=role_id=${ROLE_ID} --from-literal=secret_id=${SECRET_ID} \
-		--dry-run=client -o yaml >>${APP_ROLE_FILE}
-}
-
-function restart() {
-	echo "restarting vault pod '${VAULT_PODNAME}' ..."
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} delete pod ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} >/dev/null
-}
diff --git a/hack/spi/vault-init.sh b/hack/spi/vault-init.sh
deleted file mode 100755
index e79a969a..00000000
--- a/hack/spi/vault-init.sh
+++ /dev/null
@@ -1,173 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-set -e
-
-mkdir -p $HOME/.tmp
-touch $HOME/.tmp/keys-file
-
-VAULT_KUBE_CONFIG=${VAULT_KUBE_CONFIG:-${KUBECONFIG:-$HOME/.kube/config}}
-VAULT_NAMESPACE=${VAULT_NAMESPACE:-spi-vault}
-SECRET_NAME=spi-vault-keys
-VAULT_PODNAME=${VAULT_PODNAME:-vault-0}
-KEYS_FILE=${KEYS_FILE:-"$(echo $HOME/.tmp)/keys-file"}
-ROOT_TOKEN=""
-ROOT_TOKEN_NAME=vault-root-token
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-
-function init() {
-	INIT_STATE=$(isInitialized)
-	if [ "$INIT_STATE" == "false" ]; then
-		echo '' >${KEYS_FILE}
-		vaultExec "vault operator init" >"${KEYS_FILE}"
-		echo "Keys written at ${KEYS_FILE}"
-	elif [ "$INIT_STATE" == "true" ]; then
-		echo "Vault already initialized"
-	else
-		echo "$INIT_STATE"
-		exit 1
-	fi
-}
-
-function isInitialized() {
-	STATUS=$(vaultExec "vault status -format=yaml 2>&1")
-	INITIALIZED=$(echo "$STATUS" | grep "initialized")
-	if [ -z "${INITIALIZED}" ]; then
-		echo "failed to obtain initialization status; vault may be in an irrecoverable error state"
-		echo "vault status output: ${STATUS}"
-	fi
-	echo "${INITIALIZED}" | awk '{split($0,a,": "); print a[2]}'
-}
-
-function isSealed() {
-	SEALED=$(vaultExec "vault status -format=yaml | grep sealed")
-	echo "${SEALED}" | awk '{split($0,a,": "); print a[2]}'
-}
-
-function secret() {
-	if [ ! -s "${KEYS_FILE}" ]; then
-		return
-	fi
-
-	if oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} 2>/dev/null; then
-		echo "Secret ${SECRET_NAME} already exists. Deleting ..."
-		oc --kubeconfig=${VAULT_KUBE_CONFIG} delete secret ${SECRET_NAME} -n ${VAULT_NAMESPACE}
-	fi
-
-	COMMAND="oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic ${SECRET_NAME} -n ${VAULT_NAMESPACE}"
-	KEYI=1
-	# shellcheck disable=SC2013
-	for KEY in $(grep "Unseal Key" "${KEYS_FILE}" | awk '{split($0,a,": "); print a[2]}'); do
-		COMMAND="${COMMAND} --from-literal=key${KEYI}=${KEY}"
-		((KEYI++))
-	done
-
-	${COMMAND}
-}
-
-function unseal() {
-	KEYI=1
-	until [ "$(isSealed)" == "false" ]; do
-		echo "unsealing ..."
-		KEY=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} --template="{{.data.key${KEYI}}}" | base64 --decode)
-		if [ -z "${KEY}" ]; then
-			echo "failed to unseal"
-			exit 1
-		fi
-		vaultExec "vault operator unseal ${KEY}"
-		((KEYI++))
-	done
-	echo "unsealed"
-}
-
-function ensureRootToken() {
-	if [ -s "${KEYS_FILE}" ]; then
-		ROOT_TOKEN=$(grep "Root Token" "${KEYS_FILE}" | awk '{split($0,a,": "); print a[2]}')
-	else
-		generateRootToken
-	fi
-
-	# save ROOT_TOKEN to be used in the `spi-init` and `remote-secret-init` scripts
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic ${ROOT_TOKEN_NAME} \
-		--from-literal=root_token=${ROOT_TOKEN} -n ${VAULT_NAMESPACE}
-}
-
-function generateRootToken() {
-	echo "generating root token ..."
-
-	vaultExec "vault operator generate-root -cancel" >/dev/null
-	INIT=$(vaultExec "vault operator generate-root -init -format=yaml")
-	NONCE=$(echo "${INIT}" | grep "nonce:" | awk '{split($0,a,": "); print a[2]}')
-	OTP=$(echo "${INIT}" | grep "otp:" | awk '{split($0,a,": "); print a[2]}')
-
-	KEYI=1
-	COMPLETE="false"
-	until [ "${COMPLETE}" == "true" ]; do
-		KEY=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} --template="{{.data.key${KEYI}}}" | base64 --decode)
-		if [ -z "${KEY}" ]; then
-			echo "failed to generate token"
-			exit 1
-		fi
-		GENERATE_OUTPUT=$(vaultExec "echo ${KEY} | vault operator generate-root -nonce=${NONCE} -format=yaml -")
-		COMPLETE=$(echo "${GENERATE_OUTPUT}" | grep "complete:" | awk '{split($0,a,": "); print a[2]}')
-		if [ "${COMPLETE}" == "true" ]; then
-			ENCODED_TOKEN=$(echo "${GENERATE_OUTPUT}" | grep "encoded_token" | awk '{split($0,a,": "); print a[2]}')
-			ROOT_TOKEN=$(vaultExec "vault operator generate-root \
-        -decode=${ENCODED_TOKEN} \
-        -otp=${OTP} -format=yaml" |
-				awk '{split($0,a,": "); print a[2]}')
-		fi
-		((KEYI++))
-	done
-}
-
-function applyPolicy() {
-	POLICY_FILE=/tmp/spi_policy.hcl
-	vaultExec "echo 'path \"${SPI_DATA_PATH_PREFIX}/*\" { capabilities = [\"read\", \"create\", \"list\", \"delete\", \"update\"] }' > ${POLICY_FILE}"
-	vaultExec "vault policy write ${SPI_POLICY_NAME} ${POLICY_FILE}"
-	vaultExec "rm ${POLICY_FILE}"
-}
-
-function spiSecretEngine() {
-	if ! vaultExec "vault secrets list | grep -q ${SPI_DATA_PATH_PREFIX}"; then
-		echo "creating SPI secret engine ..."
-		vaultExec "vault secrets enable -path=${SPI_DATA_PATH_PREFIX} kv-v2"
-	fi
-}
-
-function initVault() {
-	until [ "$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get pod ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} -o jsonpath='{.status.phase}')" == "Running" ]; do
-		sleep 5
-		echo "Waiting for Vault pod to be running."
-	done
-
-	sleep 5
-
-	init
-	secret
-	unseal
-	ensureRootToken
-	login
-	audit
-	spiSecretEngine
-	applyPolicy
-}
-
-if ! timeout 100s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-vault-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application spi-vault-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io spi-vault-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing vault"
-		initVault
-		echo "Vault initialization was completed"
-	else
-		echo "Vault initialization was skipped"
-	fi
-fi
diff --git a/hack/util-patch-spi-config.sh b/hack/util-patch-spi-config.sh
deleted file mode 100755
index 52bfd424..00000000
--- a/hack/util-patch-spi-config.sh
+++ /dev/null
@@ -1,51 +0,0 @@
-#!/bin/bash
-
-# Expects up to 3 parameters.
-# 1. is the vault host (defaults to https://vault-spi-vault.apps.<cluster URL>)
-# 2. is the base URL of SPI (defaults to https://spi-oauth-spi-system.apps.<cluster URL>)
-JQ_SCRIPT=$(cat << "EOF"
-map(
-    if (.op == "replace" and .path == "/data/VAULTHOST") then
-        {"op": .op, "path": .path, "value": $VAULTHOST }
-    elif (.op == "replace" and .path == "/data/BASEURL") then
-        {"op": .op, "path": .path, "value": $BASEURL }
-    else
-        .
-    end
-)
-EOF
-)
-
-patchConfig() {
-  PATCH_FILE=$1
-  echo 'Patching VAULTHOST and BASEURL for '"$PATCH_FILE"
-  if [ -z ${2} ]; then
-      APPS_BASE_URL=$(oc get ingress.config cluster -o jsonpath='{.spec.domain}')
-      VAULT_HOST="https://vault-spi-vault.${APPS_BASE_URL}"
-  else
-      VAULT_HOST=${2}
-  fi
-
-  if [ -z ${3} ]; then
-      if [ -z $APPS_BASE_URL ]; then
-         APPS_BASE_URL=$(oc get ingress.config cluster -o jsonpath='{.spec.domain}')
-      fi
-      SPI_BASE_URL="https://spi-oauth-spi-system.${APPS_BASE_URL}"
-  else
-      SPI_BASE_URL=${3}
-  fi
-
-
-  TMP_FILE=$(mktemp)
-
-  cat "$PATCH_FILE" | jq --arg VAULTHOST "${VAULT_HOST}" --arg BASEURL "${SPI_BASE_URL}" "${JQ_SCRIPT}" > "$TMP_FILE"
-  cp "$TMP_FILE" "$PATCH_FILE"
-
-  rm "$TMP_FILE"
-
-}
-
-ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/..
-
-patchConfig "$ROOT/components/spi/overlays/development/config-patch.json" "${1}" "${2}"
-patchConfig "$ROOT/components/remote-secret-controller/overlays/development/config-patch.json" "${1}" "${2}" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (105 lines)</summary>  

``` 
./commit-09f7ab89/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
114a115
>   - snapshotenvironmentbindings
115a117,120
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   - remotesecrets
422a428
>   - snapshotenvironmentbindings
423a430,433
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   - remotesecrets
577a588,590
>   name: konflux-spi
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
632a646,648
>   name: konflux-spi
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
685a702,704
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-spi
./commit-09f7ab89/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
114a115
>   - snapshotenvironmentbindings
115a117,120
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   - remotesecrets
422a428
>   - snapshotenvironmentbindings
423a430,433
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   - remotesecrets
577a588,590
>   name: konflux-spi
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
632a646,648
>   name: konflux-spi
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
685a702,704
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-spi
./commit-09f7ab89/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/production/components/backup/production/stone-prod-p02/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/production/components/cluster-secret-store/production/kustomize.out.yaml
12a13
>     - spi-system
65a67,68
>     - spi-system
>     - remotesecret
./commit-09f7ab89/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
291a292,305
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - remotesecrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - remotesecrets/status
>   verbs:
>   - get
./commit-09f7ab89/production/components: spi-vault 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 09f7ab89 to 9a0e8a69 on Wed Aug 28 13:12:13 2024 </h3>  
 
<details> 
<summary>Git Diff (2717 lines)</summary>  

``` 
diff --git a/.gitignore b/.gitignore
index 0d0404fc..88418819 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,7 +1,6 @@
 hack/preview.env
 hack/monitoring.env
 cosign.pub
-components/spi/base/config.yaml
 .tmp/
 tmp
 .idea/*
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 84491478..26e96a32 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -6,8 +6,6 @@ resources:
   - has
   - release
   - integration
-  - spi
-  - remote-secret-controller
   - enterprise-contract
   - build-service
   - jvm-build-service
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml
deleted file mode 100644
index 093cfc7f..00000000
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- remote-secret-controller.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
deleted file mode 100644
index 77ec4789..00000000
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: remote-secret-controller
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/remote-secret-controller/overlays
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: remote-secret-controller-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: remotesecret
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml
deleted file mode 100644
index d2f6a992..00000000
--- a/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- spi.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
deleted file mode 100644
index c9856bd9..00000000
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: spi
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/spi/overlays
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: spi-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: spi-system
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml b/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml
deleted file mode 100644
index 3bf78b5f..00000000
--- a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- spi-vault.yaml
-components:
-  - ../../../../../k-components/deploy-to-member-cluster
diff --git a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml b/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml
deleted file mode 100644
index 541b3c81..00000000
--- a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml
+++ /dev/null
@@ -1,29 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: spi-vault 
-spec:
-  generators:
-    - clusters: {}
-  template:
-    metadata:
-      name: spi-vault-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: components/spi-vault
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: spi-vault
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5cd46bcf..3a01cbf9 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ../../base/host
   - ../../base/host/optional/infra-deployments/dev-sso
   - ../../base/member
-  - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
@@ -43,16 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 164a000e..27ca6580 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -42,17 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
-  - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
       version: v1alpha1
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 6b21e2d2..c0b3c9cf 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -42,17 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
-  - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
       version: v1alpha1
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index a12caa7e..57efbf4e 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -44,9 +44,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-spi'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-mintmaker-team'
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index 33863d61..c5fd397d 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -21,12 +21,7 @@ rules:
   - releases
   - releaseserviceconfigs
   - releasestrategies
-  - snapshotenvironmentbindings
   - snapshots
-  - spiaccesschecks
-  - spiaccesstokenbindings
-  - spifilecontentrequests
-  - remotesecrets
   verbs:
   - get
   - list
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index ca99f55a..3dfd14a2 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -21,12 +21,7 @@ rules:
       - releases
       - releaseserviceconfigs
       - releasestrategies
-      - snapshotenvironmentbindings
       - snapshots
-      - spiaccesschecks
-      - spiaccesstokenbindings
-      - spifilecontentrequests
-      - remotesecrets
     verbs:
       - '*'
   - apiGroups:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index e43c4b71..93633a1b 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -37,9 +37,7 @@ spec:
       - plnsvc-tests
       - quality-dashboard
       - release-service
-      - remotesecret
       - sandbox-sre-member
-      - spi-system
       - tekton-results
       - toolchain-member-operator
     includedResources:
@@ -49,7 +47,6 @@ spec:
       - integrationtestscenarios.appstudio.redhat.com
       - secrets
       - snapshots.appstudio.redhat.com
-      - snapshotenvironmentbindings.appstudio.redhat.com
       - serviceaccounts
       - namespaces
     storageLocation: velero-aws-1
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 94162119..57d884e7 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -30,7 +30,6 @@ spec:
         - dora-metrics
         - application-service
         - appstudio-workload-monitoring
-        - spi-system
         - group-sync-operator
         - build-templates
         - build-templates-e2e
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 26ea9398..36efa1c4 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -29,6 +29,4 @@ spec:
     - namespaces:
         - tekton-results
         - gitops
-        - spi-system
-        - remotesecret
         - openshift-adp
diff --git a/components/image-controller/base/rbac/image-controller-maintainer.yaml b/components/image-controller/base/rbac/image-controller-maintainer.yaml
index cc6000e7..ad0fc190 100644
--- a/components/image-controller/base/rbac/image-controller-maintainer.yaml
+++ b/components/image-controller/base/rbac/image-controller-maintainer.yaml
@@ -19,22 +19,6 @@ rules:
     verbs:
       - get
 
-  - apiGroups:
-      - 'appstudio.redhat.com'
-    resources:
-      - remotesecrets
-    verbs:
-      - get
-      - list
-      - watch
-
-  - apiGroups:
-      - 'appstudio.redhat.com'
-    resources:
-      - remotesecrets/status
-    verbs:
-      - get
-
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 91f4da6a..9ae3bac1 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - kubesaw/
-- spi/
 - build-service/
 - image-controller/
 - managed-gitops/
diff --git a/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml b/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml
deleted file mode 100644
index 72505d13..00000000
--- a/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-health
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-health
-    key: spi-health.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-outbound-traffic
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-outbound-traffic
-    key: spi-outbound-traffic.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-slo
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-slo
-    key: spi-slo.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: remotesecret-metrics-dashboard
-  labels:
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-remotesecret-metrics
-    key: remotesecret-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
deleted file mode 100644
index e097122d..00000000
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
-- dashboard.yaml
diff --git a/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml b/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
index 630fd857..cbb42aa3 100644
--- a/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
+++ b/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
@@ -7,4 +7,3 @@ resources:
 - release-service.yaml
 - sandbox-host-operator.yaml
 - sandbox-member-operator.yaml
-- spi-operator.yaml
diff --git a/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml b/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml
deleted file mode 100644
index 9b677e7b..00000000
--- a/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml
+++ /dev/null
@@ -1,37 +0,0 @@
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  namespace: appstudio-workload-monitoring
-  name: spi-operator
-  labels:
-    prometheus: appstudio-workload
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      name: "prometheus-k8s-token-xhrjb"
-      key: token
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-  namespaceSelector:
-    matchNames:
-    - spi-system
-  selector:
-    matchLabels:
-      control-plane: "controller-manager"
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-spi-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: spi-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: prometheus-k8s
-  namespace: appstudio-workload-monitoring
diff --git a/components/remote-secret-controller/OWNERS b/components/remote-secret-controller/OWNERS
deleted file mode 100644
index 8aeb4a61..00000000
--- a/components/remote-secret-controller/OWNERS
+++ /dev/null
@@ -1,9 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- skabashnyuk
-- mshaposhnik
-
-reviewers:
-- skabashnyuk
-- mshaposhnik
diff --git a/components/remote-secret-controller/base/argocd-permissions.yaml b/components/remote-secret-controller/base/argocd-permissions.yaml
deleted file mode 100644
index e346483a..00000000
--- a/components/remote-secret-controller/base/argocd-permissions.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: crd-manager-for-remote-secret
-rules:
-  - verbs:
-      - patch
-      - get
-      - list
-      - create
-      - get
-    apiGroups:
-      - apiextensions.k8s.io
-    resources:
-      - customresourcedefinitions
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: crd-manager-for-remote-secret
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: crd-manager-remote-secret
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
diff --git a/components/remote-secret-controller/base/kustomization.yaml b/components/remote-secret-controller/base/kustomization.yaml
deleted file mode 100644
index 21e26b62..00000000
--- a/components/remote-secret-controller/base/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - argocd-permissions.yaml
-  - ./rbac
-
-namespace: remotesecret
diff --git a/components/remote-secret-controller/base/rbac/kustomization.yaml b/components/remote-secret-controller/base/rbac/kustomization.yaml
deleted file mode 100644
index dfe83e69..00000000
--- a/components/remote-secret-controller/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - remote-secret.yaml
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
deleted file mode 100644
index 8c55752f..00000000
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: remotesecret-service-maintainers
-  namespace: remotesecret
-subjects:
-  - kind: Group
-    name: konflux-spi-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: component-maintainer
diff --git a/components/remote-secret-controller/overlays/development/config-patch.json b/components/remote-secret-controller/overlays/development/config-patch.json
deleted file mode 100644
index a919ec9f..00000000
--- a/components/remote-secret-controller/overlays/development/config-patch.json
+++ /dev/null
@@ -1,27 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps-crc.testing"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "remotesecret-dev"
-  },
-  {
-    "op": "add",
-    "path": "/data/ENABLEREMOTESECRETS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/VAULTINSECURETLS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/ZAPLOGLEVEL",
-    "value": "debug"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
deleted file mode 100644
index 29c09d95..00000000
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: remote-secret-controller-manager-environment-config
-    path: config-patch.json
diff --git a/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml b/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml
deleted file mode 100644
index e02b5bf1..00000000
--- a/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
deleted file mode 100644
index 556dcc70..00000000
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - aws-credentials-external-secret.yaml
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: Deployment
-      name: remote-secret-controller-manager
-    path: operator-limits-patch.json
diff --git a/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json b/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json
deleted file mode 100644
index 7c871ba0..00000000
--- a/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "1024Mi"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json
deleted file mode 100644
index e1ff2fb0..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rs-m01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json
deleted file mode 100644
index 37414488..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rs-rh01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
deleted file mode 100644
index a6c20191..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
deleted file mode 100644
index b21ad970..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
deleted file mode 100644
index 90f08b79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
deleted file mode 100644
index 20e812ed..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod-p02/rs-p02"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml b/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml
deleted file mode 100644
index e02b5bf1..00000000
--- a/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
deleted file mode 100644
index 556dcc70..00000000
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - aws-credentials-external-secret.yaml
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: Deployment
-      name: remote-secret-controller-manager
-    path: operator-limits-patch.json
diff --git a/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json b/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 2511dca8..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
deleted file mode 100644
index f532928c..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-stage/rs-p01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json
deleted file mode 100644
index cdd47923..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-m01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json
deleted file mode 100644
index 46bfe180..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-rh01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
deleted file mode 100644
index d63f5cb3..00000000
--- a/components/spi-vault/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: spi-vault
-
-resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
diff --git a/components/spi/OWNERS b/components/spi/OWNERS
deleted file mode 100644
index 8aeb4a61..00000000
--- a/components/spi/OWNERS
+++ /dev/null
@@ -1,9 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- skabashnyuk
-- mshaposhnik
-
-reviewers:
-- skabashnyuk
-- mshaposhnik
diff --git a/components/spi/base/argocd-permissions.yaml b/components/spi/base/argocd-permissions.yaml
deleted file mode 100644
index 005114c3..00000000
--- a/components/spi/base/argocd-permissions.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: crd-manager-for-spi
-rules:
-  - verbs:
-      - patch
-      - get
-      - list
-      - create
-      - get
-    apiGroups:
-      - apiextensions.k8s.io
-    resources:
-      - customresourcedefinitions
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: grant-argocd-crd-permissions-for-spi
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: crd-manager-for-spi
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
diff --git a/components/spi/base/config.yaml b/components/spi/base/config.yaml
deleted file mode 100644
index 88e205cb..00000000
--- a/components/spi/base/config.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-serviceProviders:
-  - type: GitHub
-    clientId: <github-client-id>
-    clientSecret: <github-client-secret>
diff --git a/components/spi/base/external-secrets/kustomization.yaml b/components/spi/base/external-secrets/kustomization.yaml
deleted file mode 100644
index 6b26a57b..00000000
--- a/components/spi/base/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - spi-shared-configuration-file.yaml
-namespace: spi-system
diff --git a/components/spi/base/external-secrets/spi-shared-configuration-file.yaml b/components/spi/base/external-secrets/spi-shared-configuration-file.yaml
deleted file mode 100644
index 245a24f8..00000000
--- a/components/spi/base/external-secrets/spi-shared-configuration-file.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-shared-configuration-file
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: shared-configuration-file
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
deleted file mode 100644
index db02eac7..00000000
--- a/components/spi/base/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ./rbac
-  - argocd-permissions.yaml
-
-namespace: spi-system
diff --git a/components/spi/base/rbac/kustomization.yaml b/components/spi/base/rbac/kustomization.yaml
deleted file mode 100644
index b2a156c1..00000000
--- a/components/spi/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - spi.yaml
\ No newline at end of file
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
deleted file mode 100644
index 869c9afc..00000000
--- a/components/spi/base/rbac/spi.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: spi-service-maintainers
-  namespace: spi-system
-subjects:
-  - kind: Group
-    name: konflux-spi-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: component-maintainer
diff --git a/components/spi/overlays/development/config-patch.json b/components/spi/overlays/development/config-patch.json
deleted file mode 100644
index a9b78908..00000000
--- a/components/spi/overlays/development/config-patch.json
+++ /dev/null
@@ -1,27 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.appstudio-stage.x99m.p1.openshiftapps.com"
-  },
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-dev"
-  },
-  {
-    "op": "add",
-    "path": "/data/VAULTINSECURETLS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "vault"
-  }
-]
diff --git a/components/spi/overlays/development/delete-shared-configuration-file.yaml b/components/spi/overlays/development/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/development/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
deleted file mode 100644
index 2d807b23..00000000
--- a/components/spi/overlays/development/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/development/operator-limits-patch.json b/components/spi/overlays/development/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/development/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/production/base/config-patch.json b/components/spi/overlays/production/base/config-patch.json
deleted file mode 100644
index 96bbfe07..00000000
--- a/components/spi/overlays/production/base/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "aws"
-  }
-]
diff --git a/components/spi/overlays/production/base/delete-shared-configuration-file.yaml b/components/spi/overlays/production/base/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/production/base/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
deleted file mode 100644
index e517631d..00000000
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - spi-aws-credentials-external-secret.yaml
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/production/base/operator-limits-patch.json b/components/spi/overlays/production/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/production/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml b/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml
deleted file mode 100644
index cc4545b4..00000000
--- a/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/spi/overlays/production/stone-prd-m01/config-patch.json b/components/spi/overlays/production/stone-prd-m01/config-patch.json
deleted file mode 100644
index ca75e7f7..00000000
--- a/components/spi/overlays/production/stone-prd-m01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/m01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 0a755f63..00000000
--- a/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/m01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prd-rh01/config-patch.json b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
deleted file mode 100644
index 135d826c..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rh01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 025361c4..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/rh01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prod-p01/config-patch.json b/components/spi/overlays/production/stone-prod-p01/config-patch.json
deleted file mode 100644
index 0d3de7c9..00000000
--- a/components/spi/overlays/production/stone-prod-p01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index a6c20191..00000000
--- a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 3490a5ea..00000000
--- a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/p01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
deleted file mode 100644
index 3530485a..00000000
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod-p02/spi-p02"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 90f08b79..00000000
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index a7db9b3a..00000000
--- a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/p02/shared-configuration-file
diff --git a/components/spi/overlays/staging/base/config-patch.json b/components/spi/overlays/staging/base/config-patch.json
deleted file mode 100644
index 96bbfe07..00000000
--- a/components/spi/overlays/staging/base/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "aws"
-  }
-]
diff --git a/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml b/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
deleted file mode 100644
index e517631d..00000000
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - spi-aws-credentials-external-secret.yaml
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/staging/base/operator-limits-patch.json b/components/spi/overlays/staging/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/staging/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml b/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml
deleted file mode 100644
index cc4545b4..00000000
--- a/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
deleted file mode 100644
index e4872e4e..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-stage/spi-p01"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index ed36b2cf..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 2511dca8..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index f65b16f8..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/p01/shared-configuration-file
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
deleted file mode 100644
index 77c2ccca..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ /dev/null
@@ -1,13 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/m01"
-  }
-
-]
diff --git a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 58b57b9a..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/m01/shared-configuration-file
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
deleted file mode 100644
index 2dca0c30..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rh01"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 74701088..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/rh01/shared-configuration-file
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 10fa4c35..19d8f764 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -17,8 +17,6 @@ docs-en:
         url: /docs/development/pre.html
       - title: Basic Development Environment
         url: /docs/development/deployment.html
-      - title: SPI Deployment
-        url: /docs/development/spi.html
       - title: Sandbox Operators Deployment
         url: /docs/development/sandbox.html
   - title: Testing
diff --git a/docs/deployment/extending-the-service.md b/docs/deployment/extending-the-service.md
index 798188d1..5ecdd7ea 100644
--- a/docs/deployment/extending-the-service.md
+++ b/docs/deployment/extending-the-service.md
@@ -58,8 +58,6 @@ These are the steps to add your own component:
                                 📄 kustomization.yaml
             ```
 
-            See `components/spi` for an example of this
-
     - See `components/gitops/staging` for more complex structure, where overlays are further structured for cluster specific configurations.
 
 3. Create an Argo CD `ApplicationSet` resource in `argo-cd-apps/base/directory/team-name/(team-name).yaml` or `argo-cd-apps/base/team-name/(team-name).yaml` depending on your application.
@@ -138,7 +136,7 @@ Access to namespaces is managed by [components/authentication](components/authen
 ## For Members and Maintainers
 
 ### How to add yourself as a reviewer/approver
-There is an OWNERS file present in each component folder [like this](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/OWNERS), people mentioned in the file have the respective access to approve/review PR's.
+There is an OWNERS file present in each component folder [like this](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/integration/OWNERS), people mentioned in the file have the respective access to approve/review PR's.
 
 To add yourself change the OWNERS file present in your component folder and Raise a pull request, if you want to be a Approver for the entire repo please change the OWNERS file present in the root level of this repository
 
diff --git a/docs/development/spi.md b/docs/development/spi.md
deleted file mode 100644
index d6fc564d..00000000
--- a/docs/development/spi.md
+++ /dev/null
@@ -1,59 +0,0 @@
----
-title: Service Provider Integration Deployment
----
-
-## SPI Deployment environment promotion
-
-SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/konflux-ci/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
-
-## Post-bootstrap Service Provider Integration(SPI) Configuration
-
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
-
-> **NOTE:**  Following process is automated in `preview` mode
-
-SPI components will fail to start right after the bootstrap as additional manual configuration is required before they are healthy.
-
-1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
-
-2. Create a `shared-configuration-file` Secret 
-
-```bash
-kubectl create secret generic shared-configuration-file --from-file=components/spi/base/config.yaml -n spi-system
-```
-
-3. In few moments, SPI pods should start
-
-SPI Vault instance has to be manually initialized. There is a script to help with that:
-
-1. Make sure that your cluster user has at least [permissions](../../components/authentication/spi-vault-admin.yaml).
-
-2. Clone SPI operator repo 
-
-```bash
-git clone https://github.com/konflux-ci/service-provider-integration-operator && cd service-provider-integration-operator
-```
-
-3. run `vault-init.sh` script from repo root directory 
-
-```bash
-`./hack/vault-init.sh`
-```
-
-### OAuth URLs for known environments
-
-#### stg-rh01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth/callback`
-
-#### stg-m01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com/oauth/callback`
-
-#### prd-rh01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com/oauth/callback`
-
-#### prd-m01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com/oauth/callback`
diff --git a/hack/preview.sh b/hack/preview.sh
index 95d7c903..8db3077f 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -156,23 +156,6 @@ if [ -n "$DEPLOY_ONLY" ]; then
   done
 fi
 
-# patch the SPI configuration with the Vault host configuration to provided VAULT_HOST variable or to current cluster
-# and the base URL set to the SPI_BASE_URL variable or the URL of the  route to the SPI OAuth service in the current cluster
-# This script also sets up the Vault client to accept insecure TLS connections so that the custom vault host doesn't have
-# to serve requests using a trusted TLS certificate.
-$ROOT/hack/util-patch-spi-config.sh
-# configure the secrets and providers in SPI
-TMP_FILE=$(mktemp)
-yq e ".serviceProviders[0].type=\"GitHub\"" $ROOT/components/spi/base/config.yaml | \
-    yq e ".serviceProviders[0].clientId=\"${SPI_GITHUB_CLIENT_ID:-app-client-id}\"" - | \
-    yq e ".serviceProviders[0].clientSecret=\"${SPI_GITHUB_CLIENT_SECRET:-app-secret}\"" - | \
-    yq e ".serviceProviders[1].type=\"Quay\"" - | \
-    yq e ".serviceProviders[1].clientId=\"${SPI_QUAY_CLIENT_ID:-app-client-id}\"" - | \
-    yq e ".serviceProviders[1].clientSecret=\"${SPI_QUAY_CLIENT_SECRET:-app-secret}\"" - > $TMP_FILE
-oc create namespace spi-system --dry-run=client -o yaml | oc apply -f -
-oc create -n spi-system secret generic shared-configuration-file --from-file=config.yaml=$TMP_FILE --dry-run=client -o yaml | oc apply -f -
-echo "SPI configured"
-rm $TMP_FILE
 
 $ROOT/hack/util-set-github-org $MY_GITHUB_ORG
 
@@ -206,17 +189,6 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${MINTMAKER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newTag=\"${MINTMAKER_IMAGE_TAG}\"" $ROOT/components/mintmaker/development/kustomization.yaml
 [[ -n "${MINTMAKER_PR_OWNER}" && "${MINTMAKER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/mintmaker*\")) |= \"https://github.com/${MINTMAKER_PR_OWNER}/mintmaker/config/default?ref=${MINTMAKER_PR_SHA}\"" $ROOT/components/mintmaker/development/kustomization.yaml
 
-[ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-
-[ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-
-[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
@@ -241,15 +213,6 @@ while [ "$(oc get applications.argoproj.io all-application-sets -n openshift-git
   sleep 5
 done
 
-# Init Vault
-$ROOT/hack/spi/vault-init.sh
-
-# Init SPI
-$ROOT/hack/spi/spi-init.sh
-
-# Init Remote Secret
-$ROOT/hack/spi/remote-secret-init.sh
-
 APPS=$(oc get apps -n openshift-gitops -o name)
 # trigger refresh of apps
 for APP in $APPS; do
diff --git a/hack/spi/remote-secret-init.sh b/hack/spi/remote-secret-init.sh
deleted file mode 100755
index 7ec0c022..00000000
--- a/hack/spi/remote-secret-init.sh
+++ /dev/null
@@ -1,43 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-REMOTE_SECRET_APP_ROLE_FILE="$(realpath .tmp)/approle_remote_secret.yaml"
-
-function auth() {
-	if ! vaultExec "vault auth list | grep -q approle"; then
-		echo "setup approle authentication ..."
-		vaultExec "vault auth enable approle"
-	fi
-
-	mkdir -p .tmp
-
-	echo '' > ${REMOTE_SECRET_APP_ROLE_FILE}
-	approleSet remote-secret-operator ${REMOTE_SECRET_APP_ROLE_FILE}
-
-	echo "secret yaml with Vault credentials prepared"
-}
-
-function approleAuthRemoteSecret() {
-	login
-	audit
-	auth
-}
-
-if ! timeout 300s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q remote-secret-controller-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application remote-secret-controller-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io remote-secret-controller-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing remote secret controller"
-		approleAuthRemoteSecret
-		restart
-		oc apply -f $REMOTE_SECRET_APP_ROLE_FILE -n remotesecret
-		echo "Remote secret controller initialization was completed"
-	else
-		echo "Remote secret controller initialization was skipped"
-	fi
-fi
diff --git a/hack/spi/spi-init.sh b/hack/spi/spi-init.sh
deleted file mode 100755
index 877811da..00000000
--- a/hack/spi/spi-init.sh
+++ /dev/null
@@ -1,68 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-SPI_APP_ROLE_FILE="$(realpath .tmp)/approle_secret.yaml"
-
-function k8sAuth() {
-	if ! vaultExec "vault auth list | grep -q kubernetes"; then
-		echo "setup kubernetes authentication ..."
-		vaultExec "vault auth enable kubernetes"
-	fi
-	vaultExec "vault write auth/kubernetes/role/spi-controller-manager \
-        bound_service_account_names=spi-controller-manager \
-        bound_service_account_namespaces=spi-system \
-        policies=${SPI_POLICY_NAME}"
-	vaultExec "vault write auth/kubernetes/role/spi-oauth \
-          bound_service_account_names=spi-oauth-sa \
-          bound_service_account_namespaces=spi-system \
-          policies=${SPI_POLICY_NAME}"
-	# shellcheck disable=SC2016
-	vaultExec 'vault write auth/kubernetes/config \
-        kubernetes_host=https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT'
-}
-
-function approleAuth() {
-	if ! vaultExec "vault auth list | grep -q approle"; then
-		echo "setup approle authentication ..."
-		vaultExec "vault auth enable approle"
-	fi
-
-	mkdir -p .tmp
-
-	echo '' > ${SPI_APP_ROLE_FILE}
-	approleSet spi-operator ${SPI_APP_ROLE_FILE}
-	approleSet spi-oauth ${SPI_APP_ROLE_FILE}
-
-	echo "secret yaml with Vault credentials prepared"
-}
-
-function auth() {
-	k8sAuth
-	approleAuth
-}
-
-function approleAuthSPI() {
-	login
-	audit
-	auth
-}
-
-if ! timeout 100s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application spi-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io spi-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing SPI"
-		approleAuthSPI
-		oc apply -f $SPI_APP_ROLE_FILE -n spi-system
-		echo "SPI initialization was completed"
-	else
-		echo "SPI initialization was skipped"
-	fi
-fi
diff --git a/hack/spi/utils.sh b/hack/spi/utils.sh
deleted file mode 100755
index ff51c1c0..00000000
--- a/hack/spi/utils.sh
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/bash
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-VAULT_KUBE_CONFIG=${VAULT_KUBE_CONFIG:-${KUBECONFIG:-$HOME/.kube/config}}
-VAULT_NAMESPACE=${VAULT_NAMESPACE:-spi-vault}
-VAULT_PODNAME=${VAULT_PODNAME:-vault-0}
-ROOT_TOKEN_NAME=vault-root-token
-
-function login() {
-	ROOT_TOKEN=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${ROOT_TOKEN_NAME} -n ${VAULT_NAMESPACE} -o jsonpath="{.data.root_token}" | base64 --decode)
-	vaultExec "vault login ${ROOT_TOKEN} > /dev/null"
-}
-
-function audit() {
-	if ! vaultExec "vault audit list | grep -q file"; then
-		echo "enabling audit log ..."
-		vaultExec "vault audit enable file file_path=stdout"
-	fi
-}
-
-function vaultExec() {
-	COMMAND=${1}
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} exec ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} -- sh -c "${COMMAND}" 2>/dev/null
-}
-
-function approleSet() {
-	vaultExec "vault write auth/approle/role/${1} token_policies=${SPI_POLICY_NAME}"
-	ROLE_ID=$(vaultExec "vault read auth/approle/role/${1}/role-id --format=json" | jq -r '.data.role_id')
-	SECRET_ID=$(vaultExec "vault write -force auth/approle/role/${1}/secret-id --format=json" | jq -r '.data.secret_id')
-	APP_ROLE_FILE=${2}
-	echo "---" >>${APP_ROLE_FILE}
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic vault-approle-${1} \
-		--from-literal=role_id=${ROLE_ID} --from-literal=secret_id=${SECRET_ID} \
-		--dry-run=client -o yaml >>${APP_ROLE_FILE}
-}
-
-function restart() {
-	echo "restarting vault pod '${VAULT_PODNAME}' ..."
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} delete pod ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} >/dev/null
-}
diff --git a/hack/spi/vault-init.sh b/hack/spi/vault-init.sh
deleted file mode 100755
index e79a969a..00000000
--- a/hack/spi/vault-init.sh
+++ /dev/null
@@ -1,173 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-set -e
-
-mkdir -p $HOME/.tmp
-touch $HOME/.tmp/keys-file
-
-VAULT_KUBE_CONFIG=${VAULT_KUBE_CONFIG:-${KUBECONFIG:-$HOME/.kube/config}}
-VAULT_NAMESPACE=${VAULT_NAMESPACE:-spi-vault}
-SECRET_NAME=spi-vault-keys
-VAULT_PODNAME=${VAULT_PODNAME:-vault-0}
-KEYS_FILE=${KEYS_FILE:-"$(echo $HOME/.tmp)/keys-file"}
-ROOT_TOKEN=""
-ROOT_TOKEN_NAME=vault-root-token
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-
-function init() {
-	INIT_STATE=$(isInitialized)
-	if [ "$INIT_STATE" == "false" ]; then
-		echo '' >${KEYS_FILE}
-		vaultExec "vault operator init" >"${KEYS_FILE}"
-		echo "Keys written at ${KEYS_FILE}"
-	elif [ "$INIT_STATE" == "true" ]; then
-		echo "Vault already initialized"
-	else
-		echo "$INIT_STATE"
-		exit 1
-	fi
-}
-
-function isInitialized() {
-	STATUS=$(vaultExec "vault status -format=yaml 2>&1")
-	INITIALIZED=$(echo "$STATUS" | grep "initialized")
-	if [ -z "${INITIALIZED}" ]; then
-		echo "failed to obtain initialization status; vault may be in an irrecoverable error state"
-		echo "vault status output: ${STATUS}"
-	fi
-	echo "${INITIALIZED}" | awk '{split($0,a,": "); print a[2]}'
-}
-
-function isSealed() {
-	SEALED=$(vaultExec "vault status -format=yaml | grep sealed")
-	echo "${SEALED}" | awk '{split($0,a,": "); print a[2]}'
-}
-
-function secret() {
-	if [ ! -s "${KEYS_FILE}" ]; then
-		return
-	fi
-
-	if oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} 2>/dev/null; then
-		echo "Secret ${SECRET_NAME} already exists. Deleting ..."
-		oc --kubeconfig=${VAULT_KUBE_CONFIG} delete secret ${SECRET_NAME} -n ${VAULT_NAMESPACE}
-	fi
-
-	COMMAND="oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic ${SECRET_NAME} -n ${VAULT_NAMESPACE}"
-	KEYI=1
-	# shellcheck disable=SC2013
-	for KEY in $(grep "Unseal Key" "${KEYS_FILE}" | awk '{split($0,a,": "); print a[2]}'); do
-		COMMAND="${COMMAND} --from-literal=key${KEYI}=${KEY}"
-		((KEYI++))
-	done
-
-	${COMMAND}
-}
-
-function unseal() {
-	KEYI=1
-	until [ "$(isSealed)" == "false" ]; do
-		echo "unsealing ..."
-		KEY=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} --template="{{.data.key${KEYI}}}" | base64 --decode)
-		if [ -z "${KEY}" ]; then
-			echo "failed to unseal"
-			exit 1
-		fi
-		vaultExec "vault operator unseal ${KEY}"
-		((KEYI++))
-	done
-	echo "unsealed"
-}
-
-function ensureRootToken() {
-	if [ -s "${KEYS_FILE}" ]; then
-		ROOT_TOKEN=$(grep "Root Token" "${KEYS_FILE}" | awk '{split($0,a,": "); print a[2]}')
-	else
-		generateRootToken
-	fi
-
-	# save ROOT_TOKEN to be used in the `spi-init` and `remote-secret-init` scripts
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic ${ROOT_TOKEN_NAME} \
-		--from-literal=root_token=${ROOT_TOKEN} -n ${VAULT_NAMESPACE}
-}
-
-function generateRootToken() {
-	echo "generating root token ..."
-
-	vaultExec "vault operator generate-root -cancel" >/dev/null
-	INIT=$(vaultExec "vault operator generate-root -init -format=yaml")
-	NONCE=$(echo "${INIT}" | grep "nonce:" | awk '{split($0,a,": "); print a[2]}')
-	OTP=$(echo "${INIT}" | grep "otp:" | awk '{split($0,a,": "); print a[2]}')
-
-	KEYI=1
-	COMPLETE="false"
-	until [ "${COMPLETE}" == "true" ]; do
-		KEY=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} --template="{{.data.key${KEYI}}}" | base64 --decode)
-		if [ -z "${KEY}" ]; then
-			echo "failed to generate token"
-			exit 1
-		fi
-		GENERATE_OUTPUT=$(vaultExec "echo ${KEY} | vault operator generate-root -nonce=${NONCE} -format=yaml -")
-		COMPLETE=$(echo "${GENERATE_OUTPUT}" | grep "complete:" | awk '{split($0,a,": "); print a[2]}')
-		if [ "${COMPLETE}" == "true" ]; then
-			ENCODED_TOKEN=$(echo "${GENERATE_OUTPUT}" | grep "encoded_token" | awk '{split($0,a,": "); print a[2]}')
-			ROOT_TOKEN=$(vaultExec "vault operator generate-root \
-        -decode=${ENCODED_TOKEN} \
-        -otp=${OTP} -format=yaml" |
-				awk '{split($0,a,": "); print a[2]}')
-		fi
-		((KEYI++))
-	done
-}
-
-function applyPolicy() {
-	POLICY_FILE=/tmp/spi_policy.hcl
-	vaultExec "echo 'path \"${SPI_DATA_PATH_PREFIX}/*\" { capabilities = [\"read\", \"create\", \"list\", \"delete\", \"update\"] }' > ${POLICY_FILE}"
-	vaultExec "vault policy write ${SPI_POLICY_NAME} ${POLICY_FILE}"
-	vaultExec "rm ${POLICY_FILE}"
-}
-
-function spiSecretEngine() {
-	if ! vaultExec "vault secrets list | grep -q ${SPI_DATA_PATH_PREFIX}"; then
-		echo "creating SPI secret engine ..."
-		vaultExec "vault secrets enable -path=${SPI_DATA_PATH_PREFIX} kv-v2"
-	fi
-}
-
-function initVault() {
-	until [ "$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get pod ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} -o jsonpath='{.status.phase}')" == "Running" ]; do
-		sleep 5
-		echo "Waiting for Vault pod to be running."
-	done
-
-	sleep 5
-
-	init
-	secret
-	unseal
-	ensureRootToken
-	login
-	audit
-	spiSecretEngine
-	applyPolicy
-}
-
-if ! timeout 100s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-vault-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application spi-vault-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io spi-vault-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing vault"
-		initVault
-		echo "Vault initialization was completed"
-	else
-		echo "Vault initialization was skipped"
-	fi
-fi
diff --git a/hack/util-patch-spi-config.sh b/hack/util-patch-spi-config.sh
deleted file mode 100755
index 52bfd424..00000000
--- a/hack/util-patch-spi-config.sh
+++ /dev/null
@@ -1,51 +0,0 @@
-#!/bin/bash
-
-# Expects up to 3 parameters.
-# 1. is the vault host (defaults to https://vault-spi-vault.apps.<cluster URL>)
-# 2. is the base URL of SPI (defaults to https://spi-oauth-spi-system.apps.<cluster URL>)
-JQ_SCRIPT=$(cat << "EOF"
-map(
-    if (.op == "replace" and .path == "/data/VAULTHOST") then
-        {"op": .op, "path": .path, "value": $VAULTHOST }
-    elif (.op == "replace" and .path == "/data/BASEURL") then
-        {"op": .op, "path": .path, "value": $BASEURL }
-    else
-        .
-    end
-)
-EOF
-)
-
-patchConfig() {
-  PATCH_FILE=$1
-  echo 'Patching VAULTHOST and BASEURL for '"$PATCH_FILE"
-  if [ -z ${2} ]; then
-      APPS_BASE_URL=$(oc get ingress.config cluster -o jsonpath='{.spec.domain}')
-      VAULT_HOST="https://vault-spi-vault.${APPS_BASE_URL}"
-  else
-      VAULT_HOST=${2}
-  fi
-
-  if [ -z ${3} ]; then
-      if [ -z $APPS_BASE_URL ]; then
-         APPS_BASE_URL=$(oc get ingress.config cluster -o jsonpath='{.spec.domain}')
-      fi
-      SPI_BASE_URL="https://spi-oauth-spi-system.${APPS_BASE_URL}"
-  else
-      SPI_BASE_URL=${3}
-  fi
-
-
-  TMP_FILE=$(mktemp)
-
-  cat "$PATCH_FILE" | jq --arg VAULTHOST "${VAULT_HOST}" --arg BASEURL "${SPI_BASE_URL}" "${JQ_SCRIPT}" > "$TMP_FILE"
-  cp "$TMP_FILE" "$PATCH_FILE"
-
-  rm "$TMP_FILE"
-
-}
-
-ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/..
-
-patchConfig "$ROOT/components/spi/overlays/development/config-patch.json" "${1}" "${2}"
-patchConfig "$ROOT/components/remote-secret-controller/overlays/development/config-patch.json" "${1}" "${2}" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-09f7ab89/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
114a115
>   - snapshotenvironmentbindings
115a117,120
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   - remotesecrets
422a428
>   - snapshotenvironmentbindings
423a430,433
>   - spiaccesschecks
>   - spiaccesstokenbindings
>   - spifilecontentrequests
>   - remotesecrets
577a588,590
>   name: konflux-spi
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
632a646,648
>   name: konflux-spi
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
685a702,704
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-spi
./commit-09f7ab89/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
146a147
>     - remotesecret
147a149
>     - spi-system
156a159
>     - snapshotenvironmentbindings.appstudio.redhat.com
./commit-09f7ab89/staging/components/cluster-secret-store/staging/kustomize.out.yaml
12a13
>     - spi-system
66a68,69
>     - spi-system
>     - remotesecret
./commit-09f7ab89/staging/components: spi-vault 
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
<h3>4: Development changes from 09f7ab89 to 9a0e8a69 on Wed Aug 28 13:12:13 2024 </h3>  
 
<details> 
<summary>Git Diff (2717 lines)</summary>  

``` 
diff --git a/.gitignore b/.gitignore
index 0d0404fc..88418819 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,7 +1,6 @@
 hack/preview.env
 hack/monitoring.env
 cosign.pub
-components/spi/base/config.yaml
 .tmp/
 tmp
 .idea/*
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 84491478..26e96a32 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -6,8 +6,6 @@ resources:
   - has
   - release
   - integration
-  - spi
-  - remote-secret-controller
   - enterprise-contract
   - build-service
   - jvm-build-service
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml
deleted file mode 100644
index 093cfc7f..00000000
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- remote-secret-controller.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
deleted file mode 100644
index 77ec4789..00000000
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: remote-secret-controller
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/remote-secret-controller/overlays
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: remote-secret-controller-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: remotesecret
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml
deleted file mode 100644
index d2f6a992..00000000
--- a/argo-cd-apps/base/member/infra-deployments/spi/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- spi.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
deleted file mode 100644
index c9856bd9..00000000
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: spi
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/spi/overlays
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: spi-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: spi-system
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml b/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml
deleted file mode 100644
index 3bf78b5f..00000000
--- a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- spi-vault.yaml
-components:
-  - ../../../../../k-components/deploy-to-member-cluster
diff --git a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml b/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml
deleted file mode 100644
index 541b3c81..00000000
--- a/argo-cd-apps/base/member/optional/infra-deployments/spi-vault/spi-vault.yaml
+++ /dev/null
@@ -1,29 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: spi-vault 
-spec:
-  generators:
-    - clusters: {}
-  template:
-    metadata:
-      name: spi-vault-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: components/spi-vault
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: spi-vault
-        server: '{{server}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: 50
-          backoff:
-            duration: 15s
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5cd46bcf..3a01cbf9 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ../../base/host
   - ../../base/host/optional/infra-deployments/dev-sso
   - ../../base/member
-  - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
@@ -43,16 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 164a000e..27ca6580 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -42,17 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
-  - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
       version: v1alpha1
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 6b21e2d2..c0b3c9cf 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -42,17 +42,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: has
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: spi
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: remote-secret-controller
-  - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
       version: v1alpha1
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index a12caa7e..57efbf4e 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -44,9 +44,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-spi'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-mintmaker-team'
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index 33863d61..c5fd397d 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -21,12 +21,7 @@ rules:
   - releases
   - releaseserviceconfigs
   - releasestrategies
-  - snapshotenvironmentbindings
   - snapshots
-  - spiaccesschecks
-  - spiaccesstokenbindings
-  - spifilecontentrequests
-  - remotesecrets
   verbs:
   - get
   - list
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index ca99f55a..3dfd14a2 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -21,12 +21,7 @@ rules:
       - releases
       - releaseserviceconfigs
       - releasestrategies
-      - snapshotenvironmentbindings
       - snapshots
-      - spiaccesschecks
-      - spiaccesstokenbindings
-      - spifilecontentrequests
-      - remotesecrets
     verbs:
       - '*'
   - apiGroups:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index e43c4b71..93633a1b 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -37,9 +37,7 @@ spec:
       - plnsvc-tests
       - quality-dashboard
       - release-service
-      - remotesecret
       - sandbox-sre-member
-      - spi-system
       - tekton-results
       - toolchain-member-operator
     includedResources:
@@ -49,7 +47,6 @@ spec:
       - integrationtestscenarios.appstudio.redhat.com
       - secrets
       - snapshots.appstudio.redhat.com
-      - snapshotenvironmentbindings.appstudio.redhat.com
       - serviceaccounts
       - namespaces
     storageLocation: velero-aws-1
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 94162119..57d884e7 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -30,7 +30,6 @@ spec:
         - dora-metrics
         - application-service
         - appstudio-workload-monitoring
-        - spi-system
         - group-sync-operator
         - build-templates
         - build-templates-e2e
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 26ea9398..36efa1c4 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -29,6 +29,4 @@ spec:
     - namespaces:
         - tekton-results
         - gitops
-        - spi-system
-        - remotesecret
         - openshift-adp
diff --git a/components/image-controller/base/rbac/image-controller-maintainer.yaml b/components/image-controller/base/rbac/image-controller-maintainer.yaml
index cc6000e7..ad0fc190 100644
--- a/components/image-controller/base/rbac/image-controller-maintainer.yaml
+++ b/components/image-controller/base/rbac/image-controller-maintainer.yaml
@@ -19,22 +19,6 @@ rules:
     verbs:
       - get
 
-  - apiGroups:
-      - 'appstudio.redhat.com'
-    resources:
-      - remotesecrets
-    verbs:
-      - get
-      - list
-      - watch
-
-  - apiGroups:
-      - 'appstudio.redhat.com'
-    resources:
-      - remotesecrets/status
-    verbs:
-      - get
-
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 91f4da6a..9ae3bac1 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - kubesaw/
-- spi/
 - build-service/
 - image-controller/
 - managed-gitops/
diff --git a/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml b/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml
deleted file mode 100644
index 72505d13..00000000
--- a/components/monitoring/grafana/base/dashboards/spi/dashboard.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-health
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-health
-    key: spi-health.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-outbound-traffic
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-outbound-traffic
-    key: spi-outbound-traffic.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-spi-slo
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-spi-slo
-    key: spi-slo.json
----
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: remotesecret-metrics-dashboard
-  labels:
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-remotesecret-metrics
-    key: remotesecret-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
deleted file mode 100644
index e097122d..00000000
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/grafana/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
-- dashboard.yaml
diff --git a/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml b/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
index 630fd857..cbb42aa3 100644
--- a/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
+++ b/components/monitoring/prometheus/base/servicemonitors/kustomization.yaml
@@ -7,4 +7,3 @@ resources:
 - release-service.yaml
 - sandbox-host-operator.yaml
 - sandbox-member-operator.yaml
-- spi-operator.yaml
diff --git a/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml b/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml
deleted file mode 100644
index 9b677e7b..00000000
--- a/components/monitoring/prometheus/base/servicemonitors/spi-operator.yaml
+++ /dev/null
@@ -1,37 +0,0 @@
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  namespace: appstudio-workload-monitoring
-  name: spi-operator
-  labels:
-    prometheus: appstudio-workload
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      name: "prometheus-k8s-token-xhrjb"
-      key: token
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-  namespaceSelector:
-    matchNames:
-    - spi-system
-  selector:
-    matchLabels:
-      control-plane: "controller-manager"
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-spi-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: spi-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: prometheus-k8s
-  namespace: appstudio-workload-monitoring
diff --git a/components/remote-secret-controller/OWNERS b/components/remote-secret-controller/OWNERS
deleted file mode 100644
index 8aeb4a61..00000000
--- a/components/remote-secret-controller/OWNERS
+++ /dev/null
@@ -1,9 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- skabashnyuk
-- mshaposhnik
-
-reviewers:
-- skabashnyuk
-- mshaposhnik
diff --git a/components/remote-secret-controller/base/argocd-permissions.yaml b/components/remote-secret-controller/base/argocd-permissions.yaml
deleted file mode 100644
index e346483a..00000000
--- a/components/remote-secret-controller/base/argocd-permissions.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: crd-manager-for-remote-secret
-rules:
-  - verbs:
-      - patch
-      - get
-      - list
-      - create
-      - get
-    apiGroups:
-      - apiextensions.k8s.io
-    resources:
-      - customresourcedefinitions
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: crd-manager-for-remote-secret
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: crd-manager-remote-secret
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
diff --git a/components/remote-secret-controller/base/kustomization.yaml b/components/remote-secret-controller/base/kustomization.yaml
deleted file mode 100644
index 21e26b62..00000000
--- a/components/remote-secret-controller/base/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - argocd-permissions.yaml
-  - ./rbac
-
-namespace: remotesecret
diff --git a/components/remote-secret-controller/base/rbac/kustomization.yaml b/components/remote-secret-controller/base/rbac/kustomization.yaml
deleted file mode 100644
index dfe83e69..00000000
--- a/components/remote-secret-controller/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - remote-secret.yaml
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
deleted file mode 100644
index 8c55752f..00000000
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: remotesecret-service-maintainers
-  namespace: remotesecret
-subjects:
-  - kind: Group
-    name: konflux-spi-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: component-maintainer
diff --git a/components/remote-secret-controller/overlays/development/config-patch.json b/components/remote-secret-controller/overlays/development/config-patch.json
deleted file mode 100644
index a919ec9f..00000000
--- a/components/remote-secret-controller/overlays/development/config-patch.json
+++ /dev/null
@@ -1,27 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps-crc.testing"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "remotesecret-dev"
-  },
-  {
-    "op": "add",
-    "path": "/data/ENABLEREMOTESECRETS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/VAULTINSECURETLS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/ZAPLOGLEVEL",
-    "value": "debug"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
deleted file mode 100644
index 29c09d95..00000000
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: remote-secret-controller-manager-environment-config
-    path: config-patch.json
diff --git a/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml b/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml
deleted file mode 100644
index e02b5bf1..00000000
--- a/components/remote-secret-controller/overlays/production/base/aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
deleted file mode 100644
index 556dcc70..00000000
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - aws-credentials-external-secret.yaml
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: Deployment
-      name: remote-secret-controller-manager
-    path: operator-limits-patch.json
diff --git a/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json b/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json
deleted file mode 100644
index 7c871ba0..00000000
--- a/components/remote-secret-controller/overlays/production/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "1024Mi"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json
deleted file mode 100644
index e1ff2fb0..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rs-m01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json
deleted file mode 100644
index 37414488..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rs-rh01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
deleted file mode 100644
index a6c20191..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
deleted file mode 100644
index b21ad970..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
deleted file mode 100644
index 90f08b79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
deleted file mode 100644
index 20e812ed..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod-p02/rs-p02"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml b/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml
deleted file mode 100644
index e02b5bf1..00000000
--- a/components/remote-secret-controller/overlays/staging/base/aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
deleted file mode 100644
index 556dcc70..00000000
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=8340aad1717bf7530a3d9b7fe241858a3155df87
-  - aws-credentials-external-secret.yaml
-
-namespace: remotesecret
-
-images:
-  - name:  quay.io/redhat-appstudio/remote-secret-controller
-    newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 8340aad1717bf7530a3d9b7fe241858a3155df87
-
-patches:
-  - target:
-      kind: Deployment
-      name: remote-secret-controller-manager
-    path: operator-limits-patch.json
diff --git a/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json b/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/remote-secret-controller/overlays/staging/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 2511dca8..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
deleted file mode 100644
index f532928c..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-stage/rs-p01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json
deleted file mode 100644
index cdd47923..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-m01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json
deleted file mode 100644
index 46bfe180..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-rh01"
-  }
-]
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index d4eb9f79..00000000
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: controller-manager-environment-config
-    path: config-patch.json
-  - path: aws-credentials-path-patch.yaml
-    target:
-      name: aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
deleted file mode 100644
index d63f5cb3..00000000
--- a/components/spi-vault/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: spi-vault
-
-resources:
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/vault/openshift?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
diff --git a/components/spi/OWNERS b/components/spi/OWNERS
deleted file mode 100644
index 8aeb4a61..00000000
--- a/components/spi/OWNERS
+++ /dev/null
@@ -1,9 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- skabashnyuk
-- mshaposhnik
-
-reviewers:
-- skabashnyuk
-- mshaposhnik
diff --git a/components/spi/base/argocd-permissions.yaml b/components/spi/base/argocd-permissions.yaml
deleted file mode 100644
index 005114c3..00000000
--- a/components/spi/base/argocd-permissions.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: crd-manager-for-spi
-rules:
-  - verbs:
-      - patch
-      - get
-      - list
-      - create
-      - get
-    apiGroups:
-      - apiextensions.k8s.io
-    resources:
-      - customresourcedefinitions
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: grant-argocd-crd-permissions-for-spi
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: crd-manager-for-spi
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
diff --git a/components/spi/base/config.yaml b/components/spi/base/config.yaml
deleted file mode 100644
index 88e205cb..00000000
--- a/components/spi/base/config.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-serviceProviders:
-  - type: GitHub
-    clientId: <github-client-id>
-    clientSecret: <github-client-secret>
diff --git a/components/spi/base/external-secrets/kustomization.yaml b/components/spi/base/external-secrets/kustomization.yaml
deleted file mode 100644
index 6b26a57b..00000000
--- a/components/spi/base/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - spi-shared-configuration-file.yaml
-namespace: spi-system
diff --git a/components/spi/base/external-secrets/spi-shared-configuration-file.yaml b/components/spi/base/external-secrets/spi-shared-configuration-file.yaml
deleted file mode 100644
index 245a24f8..00000000
--- a/components/spi/base/external-secrets/spi-shared-configuration-file.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-shared-configuration-file
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: shared-configuration-file
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
deleted file mode 100644
index db02eac7..00000000
--- a/components/spi/base/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ./rbac
-  - argocd-permissions.yaml
-
-namespace: spi-system
diff --git a/components/spi/base/rbac/kustomization.yaml b/components/spi/base/rbac/kustomization.yaml
deleted file mode 100644
index b2a156c1..00000000
--- a/components/spi/base/rbac/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - spi.yaml
\ No newline at end of file
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
deleted file mode 100644
index 869c9afc..00000000
--- a/components/spi/base/rbac/spi.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: spi-service-maintainers
-  namespace: spi-system
-subjects:
-  - kind: Group
-    name: konflux-spi-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: component-maintainer
diff --git a/components/spi/overlays/development/config-patch.json b/components/spi/overlays/development/config-patch.json
deleted file mode 100644
index a9b78908..00000000
--- a/components/spi/overlays/development/config-patch.json
+++ /dev/null
@@ -1,27 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/VAULTHOST",
-    "value": "https://vault-spi-vault.apps.appstudio-stage.x99m.p1.openshiftapps.com"
-  },
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-dev"
-  },
-  {
-    "op": "add",
-    "path": "/data/VAULTINSECURETLS",
-    "value": "true"
-  },
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "vault"
-  }
-]
diff --git a/components/spi/overlays/development/delete-shared-configuration-file.yaml b/components/spi/overlays/development/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/development/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
deleted file mode 100644
index 2d807b23..00000000
--- a/components/spi/overlays/development/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_vault?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/development/operator-limits-patch.json b/components/spi/overlays/development/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/development/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/production/base/config-patch.json b/components/spi/overlays/production/base/config-patch.json
deleted file mode 100644
index 96bbfe07..00000000
--- a/components/spi/overlays/production/base/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "aws"
-  }
-]
diff --git a/components/spi/overlays/production/base/delete-shared-configuration-file.yaml b/components/spi/overlays/production/base/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/production/base/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
deleted file mode 100644
index e517631d..00000000
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - spi-aws-credentials-external-secret.yaml
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/production/base/operator-limits-patch.json b/components/spi/overlays/production/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/production/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml b/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml
deleted file mode 100644
index cc4545b4..00000000
--- a/components/spi/overlays/production/base/spi-aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/spi/overlays/production/stone-prd-m01/config-patch.json b/components/spi/overlays/production/stone-prd-m01/config-patch.json
deleted file mode 100644
index ca75e7f7..00000000
--- a/components/spi/overlays/production/stone-prd-m01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/m01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 0a755f63..00000000
--- a/components/spi/overlays/production/stone-prd-m01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/m01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prd-rh01/config-patch.json b/components/spi/overlays/production/stone-prd-rh01/config-patch.json
deleted file mode 100644
index 135d826c..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-prod/rh01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index bf41a339..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 025361c4..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/rh01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prod-p01/config-patch.json b/components/spi/overlays/production/stone-prod-p01/config-patch.json
deleted file mode 100644
index 0d3de7c9..00000000
--- a/components/spi/overlays/production/stone-prod-p01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p01"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index a6c20191..00000000
--- a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 3490a5ea..00000000
--- a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/p01/shared-configuration-file
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
deleted file mode 100644
index 3530485a..00000000
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-prod-p02/spi-p02"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 90f08b79..00000000
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index a7db9b3a..00000000
--- a/components/spi/overlays/production/stone-prod-p02/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/spi/p02/shared-configuration-file
diff --git a/components/spi/overlays/staging/base/config-patch.json b/components/spi/overlays/staging/base/config-patch.json
deleted file mode 100644
index 96bbfe07..00000000
--- a/components/spi/overlays/staging/base/config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/TOKENSTORAGE",
-    "value": "aws"
-  }
-]
diff --git a/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml b/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml
deleted file mode 100644
index d22df751..00000000
--- a/components/spi/overlays/staging/base/delete-shared-configuration-file.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: shared-configuration-file
-$patch: delete
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
deleted file mode 100644
index e517631d..00000000
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../../base
-  - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-  - spi-aws-credentials-external-secret.yaml
-
-namespace: spi-system
-
-images:
-  - name:  quay.io/redhat-appstudio/service-provider-integration-operator
-    newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
-
-patches:
-  - target:
-      kind: Deployment
-      name: spi-controller-manager
-    path: operator-limits-patch.json
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: delete-shared-configuration-file.yaml
diff --git a/components/spi/overlays/staging/base/operator-limits-patch.json b/components/spi/overlays/staging/base/operator-limits-patch.json
deleted file mode 100644
index d0ae0920..00000000
--- a/components/spi/overlays/staging/base/operator-limits-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/spec/template/spec/containers/0/resources/limits/memory",
-    "value": "4096Mi"
-  }
-]
diff --git a/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml b/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml
deleted file mode 100644
index cc4545b4..00000000
--- a/components/spi/overlays/staging/base/spi-aws-credentials-external-secret.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: spi-aws-secretsmanager-credentials
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  data:
-  - secretKey: aws_access_key_id
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_access_key_id
-  - secretKey: aws_secret_access_key
-    remoteRef:
-      key: "" # TBD in overlays
-      property: aws_secret_access_key
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-secretsmanager-credentials
-    template:
-      engineVersion: v2
-      data:
-        credentials: |
-          [default]
-          aws_access_key_id = {{ .aws_access_key_id }}
-          aws_secret_access_key = {{ .aws_secret_access_key }}
-        config: |
-          [default]
-          region = us-east-1
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
deleted file mode 100644
index e4872e4e..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "stone-stage/spi-p01"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml b/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index ed36b2cf..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 2511dca8..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index f65b16f8..00000000
--- a/components/spi/overlays/staging/stone-stage-p01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/p01/shared-configuration-file
diff --git a/components/spi/overlays/staging/stone-stg-m01/config-patch.json b/components/spi/overlays/staging/stone-stg-m01/config-patch.json
deleted file mode 100644
index 77c2ccca..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/config-patch.json
+++ /dev/null
@@ -1,13 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/m01"
-  }
-
-]
diff --git a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 58b57b9a..00000000
--- a/components/spi/overlays/staging/stone-stg-m01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/m01/shared-configuration-file
diff --git a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json b/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
deleted file mode 100644
index 2dca0c30..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/config-patch.json
+++ /dev/null
@@ -1,12 +0,0 @@
-[
-  {
-    "op": "replace",
-    "path": "/data/BASEURL",
-    "value": "https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com"
-  },
-  {
-    "op": "add",
-    "path": "/data/INSTANCEID",
-    "value": "spi-stage/rh01"
-  }
-]
diff --git a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml b/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index 751adae1..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../base
-
-patches:
-  - target:
-      kind: ConfigMap
-      name: shared-environment-config
-    path: config-patch.json
-  - path: spi-shared-configuration-file-config-path.yaml
-    target:
-      name: spi-shared-configuration-file
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: spi-aws-credentials-path-patch.yaml
-    target:
-      name: spi-aws-secretsmanager-credentials
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
deleted file mode 100644
index 1c32a3b0..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: replace
-  path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
-- op: replace
-  path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml
deleted file mode 100644
index 74701088..00000000
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-shared-configuration-file-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/spi/rh01/shared-configuration-file
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 10fa4c35..19d8f764 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -17,8 +17,6 @@ docs-en:
         url: /docs/development/pre.html
       - title: Basic Development Environment
         url: /docs/development/deployment.html
-      - title: SPI Deployment
-        url: /docs/development/spi.html
       - title: Sandbox Operators Deployment
         url: /docs/development/sandbox.html
   - title: Testing
diff --git a/docs/deployment/extending-the-service.md b/docs/deployment/extending-the-service.md
index 798188d1..5ecdd7ea 100644
--- a/docs/deployment/extending-the-service.md
+++ b/docs/deployment/extending-the-service.md
@@ -58,8 +58,6 @@ These are the steps to add your own component:
                                 📄 kustomization.yaml
             ```
 
-            See `components/spi` for an example of this
-
     - See `components/gitops/staging` for more complex structure, where overlays are further structured for cluster specific configurations.
 
 3. Create an Argo CD `ApplicationSet` resource in `argo-cd-apps/base/directory/team-name/(team-name).yaml` or `argo-cd-apps/base/team-name/(team-name).yaml` depending on your application.
@@ -138,7 +136,7 @@ Access to namespaces is managed by [components/authentication](components/authen
 ## For Members and Maintainers
 
 ### How to add yourself as a reviewer/approver
-There is an OWNERS file present in each component folder [like this](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/OWNERS), people mentioned in the file have the respective access to approve/review PR's.
+There is an OWNERS file present in each component folder [like this](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/integration/OWNERS), people mentioned in the file have the respective access to approve/review PR's.
 
 To add yourself change the OWNERS file present in your component folder and Raise a pull request, if you want to be a Approver for the entire repo please change the OWNERS file present in the root level of this repository
 
diff --git a/docs/development/spi.md b/docs/development/spi.md
deleted file mode 100644
index d6fc564d..00000000
--- a/docs/development/spi.md
+++ /dev/null
@@ -1,59 +0,0 @@
----
-title: Service Provider Integration Deployment
----
-
-## SPI Deployment environment promotion
-
-SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/konflux-ci/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
-
-## Post-bootstrap Service Provider Integration(SPI) Configuration
-
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
-
-> **NOTE:**  Following process is automated in `preview` mode
-
-SPI components will fail to start right after the bootstrap as additional manual configuration is required before they are healthy.
-
-1. Edit `./components/spi/base/config.yaml` [see SPI Configuration Documentation](https://github.com/konflux-ci/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuration).
-
-2. Create a `shared-configuration-file` Secret 
-
-```bash
-kubectl create secret generic shared-configuration-file --from-file=components/spi/base/config.yaml -n spi-system
-```
-
-3. In few moments, SPI pods should start
-
-SPI Vault instance has to be manually initialized. There is a script to help with that:
-
-1. Make sure that your cluster user has at least [permissions](../../components/authentication/spi-vault-admin.yaml).
-
-2. Clone SPI operator repo 
-
-```bash
-git clone https://github.com/konflux-ci/service-provider-integration-operator && cd service-provider-integration-operator
-```
-
-3. run `vault-init.sh` script from repo root directory 
-
-```bash
-`./hack/vault-init.sh`
-```
-
-### OAuth URLs for known environments
-
-#### stg-rh01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth/callback`
-
-#### stg-m01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com/oauth/callback`
-
-#### prd-rh01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com/oauth/callback`
-
-#### prd-m01
-> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com`  
-Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com/oauth/callback`
diff --git a/hack/preview.sh b/hack/preview.sh
index 95d7c903..8db3077f 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -156,23 +156,6 @@ if [ -n "$DEPLOY_ONLY" ]; then
   done
 fi
 
-# patch the SPI configuration with the Vault host configuration to provided VAULT_HOST variable or to current cluster
-# and the base URL set to the SPI_BASE_URL variable or the URL of the  route to the SPI OAuth service in the current cluster
-# This script also sets up the Vault client to accept insecure TLS connections so that the custom vault host doesn't have
-# to serve requests using a trusted TLS certificate.
-$ROOT/hack/util-patch-spi-config.sh
-# configure the secrets and providers in SPI
-TMP_FILE=$(mktemp)
-yq e ".serviceProviders[0].type=\"GitHub\"" $ROOT/components/spi/base/config.yaml | \
-    yq e ".serviceProviders[0].clientId=\"${SPI_GITHUB_CLIENT_ID:-app-client-id}\"" - | \
-    yq e ".serviceProviders[0].clientSecret=\"${SPI_GITHUB_CLIENT_SECRET:-app-secret}\"" - | \
-    yq e ".serviceProviders[1].type=\"Quay\"" - | \
-    yq e ".serviceProviders[1].clientId=\"${SPI_QUAY_CLIENT_ID:-app-client-id}\"" - | \
-    yq e ".serviceProviders[1].clientSecret=\"${SPI_QUAY_CLIENT_SECRET:-app-secret}\"" - > $TMP_FILE
-oc create namespace spi-system --dry-run=client -o yaml | oc apply -f -
-oc create -n spi-system secret generic shared-configuration-file --from-file=config.yaml=$TMP_FILE --dry-run=client -o yaml | oc apply -f -
-echo "SPI configured"
-rm $TMP_FILE
 
 $ROOT/hack/util-set-github-org $MY_GITHUB_ORG
 
@@ -206,17 +189,6 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${MINTMAKER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newTag=\"${MINTMAKER_IMAGE_TAG}\"" $ROOT/components/mintmaker/development/kustomization.yaml
 [[ -n "${MINTMAKER_PR_OWNER}" && "${MINTMAKER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/mintmaker*\")) |= \"https://github.com/${MINTMAKER_PR_OWNER}/mintmaker/config/default?ref=${MINTMAKER_PR_SHA}\"" $ROOT/components/mintmaker/development/kustomization.yaml
 
-[ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[[ -n "${SPI_OPERATOR_PR_OWNER}" && "${SPI_OPERATOR_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/service-provider-integration-operator*\")) |= \"https://github.com/${SPI_OPERATOR_PR_OWNER}/service-provider-integration-operator/config/overlays/openshift_vault?ref=${SPI_OPERATOR_PR_SHA}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-
-[ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-[ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
-
-[ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
@@ -241,15 +213,6 @@ while [ "$(oc get applications.argoproj.io all-application-sets -n openshift-git
   sleep 5
 done
 
-# Init Vault
-$ROOT/hack/spi/vault-init.sh
-
-# Init SPI
-$ROOT/hack/spi/spi-init.sh
-
-# Init Remote Secret
-$ROOT/hack/spi/remote-secret-init.sh
-
 APPS=$(oc get apps -n openshift-gitops -o name)
 # trigger refresh of apps
 for APP in $APPS; do
diff --git a/hack/spi/remote-secret-init.sh b/hack/spi/remote-secret-init.sh
deleted file mode 100755
index 7ec0c022..00000000
--- a/hack/spi/remote-secret-init.sh
+++ /dev/null
@@ -1,43 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-REMOTE_SECRET_APP_ROLE_FILE="$(realpath .tmp)/approle_remote_secret.yaml"
-
-function auth() {
-	if ! vaultExec "vault auth list | grep -q approle"; then
-		echo "setup approle authentication ..."
-		vaultExec "vault auth enable approle"
-	fi
-
-	mkdir -p .tmp
-
-	echo '' > ${REMOTE_SECRET_APP_ROLE_FILE}
-	approleSet remote-secret-operator ${REMOTE_SECRET_APP_ROLE_FILE}
-
-	echo "secret yaml with Vault credentials prepared"
-}
-
-function approleAuthRemoteSecret() {
-	login
-	audit
-	auth
-}
-
-if ! timeout 300s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q remote-secret-controller-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application remote-secret-controller-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io remote-secret-controller-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing remote secret controller"
-		approleAuthRemoteSecret
-		restart
-		oc apply -f $REMOTE_SECRET_APP_ROLE_FILE -n remotesecret
-		echo "Remote secret controller initialization was completed"
-	else
-		echo "Remote secret controller initialization was skipped"
-	fi
-fi
diff --git a/hack/spi/spi-init.sh b/hack/spi/spi-init.sh
deleted file mode 100755
index 877811da..00000000
--- a/hack/spi/spi-init.sh
+++ /dev/null
@@ -1,68 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-SPI_APP_ROLE_FILE="$(realpath .tmp)/approle_secret.yaml"
-
-function k8sAuth() {
-	if ! vaultExec "vault auth list | grep -q kubernetes"; then
-		echo "setup kubernetes authentication ..."
-		vaultExec "vault auth enable kubernetes"
-	fi
-	vaultExec "vault write auth/kubernetes/role/spi-controller-manager \
-        bound_service_account_names=spi-controller-manager \
-        bound_service_account_namespaces=spi-system \
-        policies=${SPI_POLICY_NAME}"
-	vaultExec "vault write auth/kubernetes/role/spi-oauth \
-          bound_service_account_names=spi-oauth-sa \
-          bound_service_account_namespaces=spi-system \
-          policies=${SPI_POLICY_NAME}"
-	# shellcheck disable=SC2016
-	vaultExec 'vault write auth/kubernetes/config \
-        kubernetes_host=https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT'
-}
-
-function approleAuth() {
-	if ! vaultExec "vault auth list | grep -q approle"; then
-		echo "setup approle authentication ..."
-		vaultExec "vault auth enable approle"
-	fi
-
-	mkdir -p .tmp
-
-	echo '' > ${SPI_APP_ROLE_FILE}
-	approleSet spi-operator ${SPI_APP_ROLE_FILE}
-	approleSet spi-oauth ${SPI_APP_ROLE_FILE}
-
-	echo "secret yaml with Vault credentials prepared"
-}
-
-function auth() {
-	k8sAuth
-	approleAuth
-}
-
-function approleAuthSPI() {
-	login
-	audit
-	auth
-}
-
-if ! timeout 100s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application spi-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io spi-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing SPI"
-		approleAuthSPI
-		oc apply -f $SPI_APP_ROLE_FILE -n spi-system
-		echo "SPI initialization was completed"
-	else
-		echo "SPI initialization was skipped"
-	fi
-fi
diff --git a/hack/spi/utils.sh b/hack/spi/utils.sh
deleted file mode 100755
index ff51c1c0..00000000
--- a/hack/spi/utils.sh
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/bash
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-VAULT_KUBE_CONFIG=${VAULT_KUBE_CONFIG:-${KUBECONFIG:-$HOME/.kube/config}}
-VAULT_NAMESPACE=${VAULT_NAMESPACE:-spi-vault}
-VAULT_PODNAME=${VAULT_PODNAME:-vault-0}
-ROOT_TOKEN_NAME=vault-root-token
-
-function login() {
-	ROOT_TOKEN=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${ROOT_TOKEN_NAME} -n ${VAULT_NAMESPACE} -o jsonpath="{.data.root_token}" | base64 --decode)
-	vaultExec "vault login ${ROOT_TOKEN} > /dev/null"
-}
-
-function audit() {
-	if ! vaultExec "vault audit list | grep -q file"; then
-		echo "enabling audit log ..."
-		vaultExec "vault audit enable file file_path=stdout"
-	fi
-}
-
-function vaultExec() {
-	COMMAND=${1}
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} exec ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} -- sh -c "${COMMAND}" 2>/dev/null
-}
-
-function approleSet() {
-	vaultExec "vault write auth/approle/role/${1} token_policies=${SPI_POLICY_NAME}"
-	ROLE_ID=$(vaultExec "vault read auth/approle/role/${1}/role-id --format=json" | jq -r '.data.role_id')
-	SECRET_ID=$(vaultExec "vault write -force auth/approle/role/${1}/secret-id --format=json" | jq -r '.data.secret_id')
-	APP_ROLE_FILE=${2}
-	echo "---" >>${APP_ROLE_FILE}
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic vault-approle-${1} \
-		--from-literal=role_id=${ROLE_ID} --from-literal=secret_id=${SECRET_ID} \
-		--dry-run=client -o yaml >>${APP_ROLE_FILE}
-}
-
-function restart() {
-	echo "restarting vault pod '${VAULT_PODNAME}' ..."
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} delete pod ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} >/dev/null
-}
diff --git a/hack/spi/vault-init.sh b/hack/spi/vault-init.sh
deleted file mode 100755
index e79a969a..00000000
--- a/hack/spi/vault-init.sh
+++ /dev/null
@@ -1,173 +0,0 @@
-#!/bin/bash
-
-# !!! Note that this script should not be used for production purposes !!!
-
-source $(dirname "$0")/utils.sh
-
-set -e
-
-mkdir -p $HOME/.tmp
-touch $HOME/.tmp/keys-file
-
-VAULT_KUBE_CONFIG=${VAULT_KUBE_CONFIG:-${KUBECONFIG:-$HOME/.kube/config}}
-VAULT_NAMESPACE=${VAULT_NAMESPACE:-spi-vault}
-SECRET_NAME=spi-vault-keys
-VAULT_PODNAME=${VAULT_PODNAME:-vault-0}
-KEYS_FILE=${KEYS_FILE:-"$(echo $HOME/.tmp)/keys-file"}
-ROOT_TOKEN=""
-ROOT_TOKEN_NAME=vault-root-token
-
-SPI_DATA_PATH_PREFIX=${SPI_DATA_PATH_PREFIX:-spi}
-SPI_POLICY_NAME=${SPI_DATA_PATH_PREFIX//\//-}
-
-function init() {
-	INIT_STATE=$(isInitialized)
-	if [ "$INIT_STATE" == "false" ]; then
-		echo '' >${KEYS_FILE}
-		vaultExec "vault operator init" >"${KEYS_FILE}"
-		echo "Keys written at ${KEYS_FILE}"
-	elif [ "$INIT_STATE" == "true" ]; then
-		echo "Vault already initialized"
-	else
-		echo "$INIT_STATE"
-		exit 1
-	fi
-}
-
-function isInitialized() {
-	STATUS=$(vaultExec "vault status -format=yaml 2>&1")
-	INITIALIZED=$(echo "$STATUS" | grep "initialized")
-	if [ -z "${INITIALIZED}" ]; then
-		echo "failed to obtain initialization status; vault may be in an irrecoverable error state"
-		echo "vault status output: ${STATUS}"
-	fi
-	echo "${INITIALIZED}" | awk '{split($0,a,": "); print a[2]}'
-}
-
-function isSealed() {
-	SEALED=$(vaultExec "vault status -format=yaml | grep sealed")
-	echo "${SEALED}" | awk '{split($0,a,": "); print a[2]}'
-}
-
-function secret() {
-	if [ ! -s "${KEYS_FILE}" ]; then
-		return
-	fi
-
-	if oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} 2>/dev/null; then
-		echo "Secret ${SECRET_NAME} already exists. Deleting ..."
-		oc --kubeconfig=${VAULT_KUBE_CONFIG} delete secret ${SECRET_NAME} -n ${VAULT_NAMESPACE}
-	fi
-
-	COMMAND="oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic ${SECRET_NAME} -n ${VAULT_NAMESPACE}"
-	KEYI=1
-	# shellcheck disable=SC2013
-	for KEY in $(grep "Unseal Key" "${KEYS_FILE}" | awk '{split($0,a,": "); print a[2]}'); do
-		COMMAND="${COMMAND} --from-literal=key${KEYI}=${KEY}"
-		((KEYI++))
-	done
-
-	${COMMAND}
-}
-
-function unseal() {
-	KEYI=1
-	until [ "$(isSealed)" == "false" ]; do
-		echo "unsealing ..."
-		KEY=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} --template="{{.data.key${KEYI}}}" | base64 --decode)
-		if [ -z "${KEY}" ]; then
-			echo "failed to unseal"
-			exit 1
-		fi
-		vaultExec "vault operator unseal ${KEY}"
-		((KEYI++))
-	done
-	echo "unsealed"
-}
-
-function ensureRootToken() {
-	if [ -s "${KEYS_FILE}" ]; then
-		ROOT_TOKEN=$(grep "Root Token" "${KEYS_FILE}" | awk '{split($0,a,": "); print a[2]}')
-	else
-		generateRootToken
-	fi
-
-	# save ROOT_TOKEN to be used in the `spi-init` and `remote-secret-init` scripts
-	oc --kubeconfig=${VAULT_KUBE_CONFIG} create secret generic ${ROOT_TOKEN_NAME} \
-		--from-literal=root_token=${ROOT_TOKEN} -n ${VAULT_NAMESPACE}
-}
-
-function generateRootToken() {
-	echo "generating root token ..."
-
-	vaultExec "vault operator generate-root -cancel" >/dev/null
-	INIT=$(vaultExec "vault operator generate-root -init -format=yaml")
-	NONCE=$(echo "${INIT}" | grep "nonce:" | awk '{split($0,a,": "); print a[2]}')
-	OTP=$(echo "${INIT}" | grep "otp:" | awk '{split($0,a,": "); print a[2]}')
-
-	KEYI=1
-	COMPLETE="false"
-	until [ "${COMPLETE}" == "true" ]; do
-		KEY=$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get secret ${SECRET_NAME} -n ${VAULT_NAMESPACE} --template="{{.data.key${KEYI}}}" | base64 --decode)
-		if [ -z "${KEY}" ]; then
-			echo "failed to generate token"
-			exit 1
-		fi
-		GENERATE_OUTPUT=$(vaultExec "echo ${KEY} | vault operator generate-root -nonce=${NONCE} -format=yaml -")
-		COMPLETE=$(echo "${GENERATE_OUTPUT}" | grep "complete:" | awk '{split($0,a,": "); print a[2]}')
-		if [ "${COMPLETE}" == "true" ]; then
-			ENCODED_TOKEN=$(echo "${GENERATE_OUTPUT}" | grep "encoded_token" | awk '{split($0,a,": "); print a[2]}')
-			ROOT_TOKEN=$(vaultExec "vault operator generate-root \
-        -decode=${ENCODED_TOKEN} \
-        -otp=${OTP} -format=yaml" |
-				awk '{split($0,a,": "); print a[2]}')
-		fi
-		((KEYI++))
-	done
-}
-
-function applyPolicy() {
-	POLICY_FILE=/tmp/spi_policy.hcl
-	vaultExec "echo 'path \"${SPI_DATA_PATH_PREFIX}/*\" { capabilities = [\"read\", \"create\", \"list\", \"delete\", \"update\"] }' > ${POLICY_FILE}"
-	vaultExec "vault policy write ${SPI_POLICY_NAME} ${POLICY_FILE}"
-	vaultExec "rm ${POLICY_FILE}"
-}
-
-function spiSecretEngine() {
-	if ! vaultExec "vault secrets list | grep -q ${SPI_DATA_PATH_PREFIX}"; then
-		echo "creating SPI secret engine ..."
-		vaultExec "vault secrets enable -path=${SPI_DATA_PATH_PREFIX} kv-v2"
-	fi
-}
-
-function initVault() {
-	until [ "$(oc --kubeconfig=${VAULT_KUBE_CONFIG} get pod ${VAULT_PODNAME} -n ${VAULT_NAMESPACE} -o jsonpath='{.status.phase}')" == "Running" ]; do
-		sleep 5
-		echo "Waiting for Vault pod to be running."
-	done
-
-	sleep 5
-
-	init
-	secret
-	unseal
-	ensureRootToken
-	login
-	audit
-	spiSecretEngine
-	applyPolicy
-}
-
-if ! timeout 100s bash -c "while ! oc get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-vault-in-cluster-local; do printf '.'; sleep 5; done"; then
-	printf "Application spi-vault-in-cluster-local not found (timeout)\n"
-	oc get apps -n openshift-gitops -o name
-	exit 1
-else
-	if [ "$(oc get applications.argoproj.io spi-vault-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
-		echo "Initializing vault"
-		initVault
-		echo "Vault initialization was completed"
-	else
-		echo "Vault initialization was skipped"
-	fi
-fi
diff --git a/hack/util-patch-spi-config.sh b/hack/util-patch-spi-config.sh
deleted file mode 100755
index 52bfd424..00000000
--- a/hack/util-patch-spi-config.sh
+++ /dev/null
@@ -1,51 +0,0 @@
-#!/bin/bash
-
-# Expects up to 3 parameters.
-# 1. is the vault host (defaults to https://vault-spi-vault.apps.<cluster URL>)
-# 2. is the base URL of SPI (defaults to https://spi-oauth-spi-system.apps.<cluster URL>)
-JQ_SCRIPT=$(cat << "EOF"
-map(
-    if (.op == "replace" and .path == "/data/VAULTHOST") then
-        {"op": .op, "path": .path, "value": $VAULTHOST }
-    elif (.op == "replace" and .path == "/data/BASEURL") then
-        {"op": .op, "path": .path, "value": $BASEURL }
-    else
-        .
-    end
-)
-EOF
-)
-
-patchConfig() {
-  PATCH_FILE=$1
-  echo 'Patching VAULTHOST and BASEURL for '"$PATCH_FILE"
-  if [ -z ${2} ]; then
-      APPS_BASE_URL=$(oc get ingress.config cluster -o jsonpath='{.spec.domain}')
-      VAULT_HOST="https://vault-spi-vault.${APPS_BASE_URL}"
-  else
-      VAULT_HOST=${2}
-  fi
-
-  if [ -z ${3} ]; then
-      if [ -z $APPS_BASE_URL ]; then
-         APPS_BASE_URL=$(oc get ingress.config cluster -o jsonpath='{.spec.domain}')
-      fi
-      SPI_BASE_URL="https://spi-oauth-spi-system.${APPS_BASE_URL}"
-  else
-      SPI_BASE_URL=${3}
-  fi
-
-
-  TMP_FILE=$(mktemp)
-
-  cat "$PATCH_FILE" | jq --arg VAULTHOST "${VAULT_HOST}" --arg BASEURL "${SPI_BASE_URL}" "${JQ_SCRIPT}" > "$TMP_FILE"
-  cp "$TMP_FILE" "$PATCH_FILE"
-
-  rm "$TMP_FILE"
-
-}
-
-ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/..
-
-patchConfig "$ROOT/components/spi/overlays/development/config-patch.json" "${1}" "${2}"
-patchConfig "$ROOT/components/remote-secret-controller/overlays/development/config-patch.json" "${1}" "${2}" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (170 lines)</summary>  

``` 
./commit-09f7ab89/development/app-of-apps-development.yaml
1114a1115,1172
>   name: remote-secret-controller
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
>             sourceRoot: components/remote-secret-controller/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>           - nameNormalized: stone-prod-p02
>             values.clusterDir: stone-prod-p02
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: remote-secret-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: remotesecret
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
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
1188a1247,1338
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
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
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: spi
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
>             sourceRoot: components/spi/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>           - nameNormalized: stone-prod-p02
>             values.clusterDir: stone-prod-p02
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: spi-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: spi-system
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
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: spi-vault
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: spi-vault-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: spi-vault
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/spi-vault
./commit-09f7ab89/development/components/image-controller/development/kustomize.out.yaml
291a292,305
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - remotesecrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - remotesecrets/status
>   verbs:
>   - get
./commit-09f7ab89/development/components: spi-vault 
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
