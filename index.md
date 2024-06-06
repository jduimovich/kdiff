# kustomize changes tracked by commits 
### This file generated at Thu Jun  6 20:04:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f6bf6a69 to 306a41d1 on Thu Jun 6 19:43:11 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
deleted file mode 100644
index d93979e2..00000000
--- a/components/gitops/development/core_service_resources_patch.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: gitops-core-service-controller-manager
-  namespace: gitops
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        resources:
-          requests:
-            cpu: 100m
-            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
deleted file mode 100644
index c8709fea..00000000
--- a/components/gitops/development/gitops-service-argocd.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ArgoCD
-metadata:
-  name: gitops-service-argocd
-  namespace: gitops-service-argocd
-spec:
-  repo:
-    resources:
-      requests:
-        cpu: 100m
-        memory: 100Mi
-  server:
-    env:
-      - name: ARGOCD_EXEC_TIMEOUT
-        value: 5m
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index ddfcf202..322bdd57 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,8 +9,3 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-patches:
-  - path: core_service_resources_patch.yaml
-  - path: service_agent_resources_patch.yaml
-  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
deleted file mode 100644
index c9ed7fdd..00000000
--- a/components/gitops/development/service_agent_resources_patch.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: gitops-service-agent-controller-manager
-  namespace: gitops
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        resources:
-          requests:
-            cpu: 50m
-            memory: 100Mi
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index 2e19e223..138efe56 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -6,6 +6,7 @@ main() {
     verify_permissions || exit $?
     create_subscription
     wait_for_route
+    update_repo_server_requests_and_timeout
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
@@ -41,6 +42,20 @@ wait_for_route() {
     echo "OK"
 }
 
+update_repo_server_requests_and_timeout() {
+    kubectl patch argocd/openshift-gitops -n openshift-gitops -p '
+spec:
+  repo:
+    env:
+      - name: ARGOCD_EXEC_TIMEOUT
+        value: 5m
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
+' --type=merge
+}
+
 switch_route_to_reencrypt() {
     echo Switch the Route to use re-encryption
     kubectl patch argocd/openshift-gitops -n openshift-gitops -p '{"spec": {"server": {"route": {"enabled": true, "tls": {"termination": "reencrypt"}}}}}' --type=merge 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f6bf6a69 to 306a41d1 on Thu Jun 6 19:43:11 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
deleted file mode 100644
index d93979e2..00000000
--- a/components/gitops/development/core_service_resources_patch.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: gitops-core-service-controller-manager
-  namespace: gitops
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        resources:
-          requests:
-            cpu: 100m
-            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
deleted file mode 100644
index c8709fea..00000000
--- a/components/gitops/development/gitops-service-argocd.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ArgoCD
-metadata:
-  name: gitops-service-argocd
-  namespace: gitops-service-argocd
-spec:
-  repo:
-    resources:
-      requests:
-        cpu: 100m
-        memory: 100Mi
-  server:
-    env:
-      - name: ARGOCD_EXEC_TIMEOUT
-        value: 5m
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index ddfcf202..322bdd57 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,8 +9,3 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-patches:
-  - path: core_service_resources_patch.yaml
-  - path: service_agent_resources_patch.yaml
-  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
deleted file mode 100644
index c9ed7fdd..00000000
--- a/components/gitops/development/service_agent_resources_patch.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: gitops-service-agent-controller-manager
-  namespace: gitops
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        resources:
-          requests:
-            cpu: 50m
-            memory: 100Mi
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index 2e19e223..138efe56 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -6,6 +6,7 @@ main() {
     verify_permissions || exit $?
     create_subscription
     wait_for_route
+    update_repo_server_requests_and_timeout
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
@@ -41,6 +42,20 @@ wait_for_route() {
     echo "OK"
 }
 
+update_repo_server_requests_and_timeout() {
+    kubectl patch argocd/openshift-gitops -n openshift-gitops -p '
+spec:
+  repo:
+    env:
+      - name: ARGOCD_EXEC_TIMEOUT
+        value: 5m
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
+' --type=merge
+}
+
 switch_route_to_reencrypt() {
     echo Switch the Route to use re-encryption
     kubectl patch argocd/openshift-gitops -n openshift-gitops -p '{"spec": {"server": {"route": {"enabled": true, "tls": {"termination": "reencrypt"}}}}}' --type=merge 
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
<h3>1: Development changes from f6bf6a69 to 306a41d1 on Thu Jun 6 19:43:11 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
deleted file mode 100644
index d93979e2..00000000
--- a/components/gitops/development/core_service_resources_patch.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: gitops-core-service-controller-manager
-  namespace: gitops
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        resources:
-          requests:
-            cpu: 100m
-            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
deleted file mode 100644
index c8709fea..00000000
--- a/components/gitops/development/gitops-service-argocd.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ArgoCD
-metadata:
-  name: gitops-service-argocd
-  namespace: gitops-service-argocd
-spec:
-  repo:
-    resources:
-      requests:
-        cpu: 100m
-        memory: 100Mi
-  server:
-    env:
-      - name: ARGOCD_EXEC_TIMEOUT
-        value: 5m
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index ddfcf202..322bdd57 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,8 +9,3 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-patches:
-  - path: core_service_resources_patch.yaml
-  - path: service_agent_resources_patch.yaml
-  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
deleted file mode 100644
index c9ed7fdd..00000000
--- a/components/gitops/development/service_agent_resources_patch.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: gitops-service-agent-controller-manager
-  namespace: gitops
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        resources:
-          requests:
-            cpu: 50m
-            memory: 100Mi
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index 2e19e223..138efe56 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -6,6 +6,7 @@ main() {
     verify_permissions || exit $?
     create_subscription
     wait_for_route
+    update_repo_server_requests_and_timeout
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
@@ -41,6 +42,20 @@ wait_for_route() {
     echo "OK"
 }
 
+update_repo_server_requests_and_timeout() {
+    kubectl patch argocd/openshift-gitops -n openshift-gitops -p '
+spec:
+  repo:
+    env:
+      - name: ARGOCD_EXEC_TIMEOUT
+        value: 5m
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
+' --type=merge
+}
+
 switch_route_to_reencrypt() {
     echo Switch the Route to use re-encryption
     kubectl patch argocd/openshift-gitops -n openshift-gitops -p '{"spec": {"server": {"route": {"enabled": true, "tls": {"termination": "reencrypt"}}}}}' --type=merge 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-f6bf6a69/development/components/gitops/development/kustomize.out.yaml
2484,2485c2484,2485
<             cpu: 1000m
<             memory: 2400Mi
---
>             cpu: 100m
>             memory: 100Mi
2589,2590c2589,2590
<             cpu: 200m
<             memory: 300Mi
---
>             cpu: 50m
>             memory: 100Mi
2835,2836c2835,2836
<         cpu: 500m
<         memory: 512Mi
---
>         cpu: 100m
>         memory: 100Mi
2901a2902,2904
>     env:
>     - name: ARGOCD_EXEC_TIMEOUT
>       value: 5m 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 662f5aec to f6bf6a69 on Wed Jun 5 20:33:41 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
index d1c4429b..a6ec9803 100644
--- a/components/build-service/production/stone-prod-p02/webhook-config.json
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -1,4 +1,4 @@
 {
-    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
-    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
 } 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-662f5aec/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
677,678c677,678
<         "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
<         "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
---
>         "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
>         "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
682c682
<   name: webhook-config-t2f4hgm7t6
---
>   name: webhook-config-gc7c8mfbcf
816c816
<           name: webhook-config-t2f4hgm7t6
---
>           name: webhook-config-gc7c8mfbcf 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 662f5aec to f6bf6a69 on Wed Jun 5 20:33:41 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
index d1c4429b..a6ec9803 100644
--- a/components/build-service/production/stone-prod-p02/webhook-config.json
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -1,4 +1,4 @@
 {
-    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
-    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
 } 
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
<h3>2: Development changes from 662f5aec to f6bf6a69 on Wed Jun 5 20:33:41 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p02/webhook-config.json b/components/build-service/production/stone-prod-p02/webhook-config.json
index d1c4429b..a6ec9803 100644
--- a/components/build-service/production/stone-prod-p02/webhook-config.json
+++ b/components/build-service/production/stone-prod-p02/webhook-config.json
@@ -1,4 +1,4 @@
 {
-    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
-    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13"
 } 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 81dbfbcf to 662f5aec on Wed Jun 5 15:58:28 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3f684729..4f222296 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: efb1d778b69d5111c6dee7b5dde6d69b4cb21d17
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 81dbfbcf to 662f5aec on Wed Jun 5 15:58:28 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3f684729..4f222296 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: efb1d778b69d5111c6dee7b5dde6d69b4cb21d17
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 81dbfbcf to 662f5aec on Wed Jun 5 15:58:28 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3f684729..4f222296 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -7,6 +7,6 @@ resources:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: efb1d778b69d5111c6dee7b5dde6d69b4cb21d17
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81dbfbcf/development/components/release/development/kustomize.out.yaml
1772c1772
<         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
---
>         image: quay.io/redhat-appstudio/release-service:efb1d778b69d5111c6dee7b5dde6d69b4cb21d17 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 9872ba8a to 81dbfbcf on Wed Jun 5 14:55:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 87df0c4d..bcb17f20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 53827125..04e3fe5b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 9872ba8a to 81dbfbcf on Wed Jun 5 14:55:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 87df0c4d..bcb17f20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 53827125..04e3fe5b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9872ba8a/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109 
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
<h3>4: Development changes from 9872ba8a to 81dbfbcf on Wed Jun 5 14:55:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 87df0c4d..bcb17f20 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 53827125..04e3fe5b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/default?ref=e57f18badba3840743d942eac3577115e87bda97
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e57f18badba3840743d942eac3577115e87bda97
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
+  newTag: e57f18badba3840743d942eac3577115e87bda97
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9872ba8a/development/components/integration/development/kustomize.out.yaml
1454c1454
<         image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:e57f18badba3840743d942eac3577115e87bda97
---
>             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109 
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
```
 
</details> 
<br> 


</div>
