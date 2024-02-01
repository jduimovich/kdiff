# kustomize changes tracked by commits 
### This file generated at Thu Feb  1 08:03:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0c371727 to 87b87699 on Thu Feb 1 07:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index 1f0f1e86..f4f09109 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -13,6 +13,7 @@ spec:
           name: mtls-ca-validators
           namespace: group-sync-operator
         insecure: false
+        prune: true
         rfc2307:
           usersQuery:
             baseDN: 'dc=redhat,dc=com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 0c371727 to 87b87699 on Thu Feb 1 07:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index 1f0f1e86..f4f09109 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -13,6 +13,7 @@ spec:
           name: mtls-ca-validators
           namespace: group-sync-operator
         insecure: false
+        prune: true
         rfc2307:
           usersQuery:
             baseDN: 'dc=redhat,dc=com' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-0c371727/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
827d826
<       prune: true 
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
<h3>1: Development changes from 0c371727 to 87b87699 on Thu Feb 1 07:12:07 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index 1f0f1e86..f4f09109 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -13,6 +13,7 @@ spec:
           name: mtls-ca-validators
           namespace: group-sync-operator
         insecure: false
+        prune: true
         rfc2307:
           usersQuery:
             baseDN: 'dc=redhat,dc=com' 
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
<h3>2: Production changes from 81e83314 to 0c371727 on Thu Feb 1 03:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..f303651d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,7 @@ data:
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "52.117.38.122"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81e83314/production/components/multi-platform-controller/production/kustomize.out.yaml
160c160
<   host.power-rhtap-prod-2.address: 52.117.38.122
---
>   host.power-rhtap-prod-2.address: 52.117.38.109 
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
<h3>2: Staging changes from 81e83314 to 0c371727 on Thu Feb 1 03:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..f303651d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,7 @@ data:
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "52.117.38.122"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key" 
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
<h3>2: Development changes from 81e83314 to 0c371727 on Thu Feb 1 03:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..f303651d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,7 @@ data:
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "52.117.38.122"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key" 
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
<h3>3: Production changes from 88e5a0b0 to 81e83314 on Thu Feb 1 00:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index eb08b3d1..dae8dd44 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
+  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 1673f98e..5001d2cc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 780d285f12a705da4740c8018e4831c9f6cd79af
+    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f69e9e5e..02e3d6a6 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-88e5a0b0/production/components/jvm-build-service/production/kustomize.out.yaml
219,221d218
<                         startTime:
<                           format: int64
<                           type: integer
485,486d481
<               potentialBuildRecipesIndex:
<                 type: integer
1396c1391
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
1447,1448c1442,1443
<     ubi7:
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk7:
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
1451,1452c1446,1447
<     ubi8:
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk17:
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a 
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
<h3>3: Staging changes from 88e5a0b0 to 81e83314 on Thu Feb 1 00:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index eb08b3d1..dae8dd44 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
+  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 1673f98e..5001d2cc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 780d285f12a705da4740c8018e4831c9f6cd79af
+    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f69e9e5e..02e3d6a6 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-88e5a0b0/staging/components/jvm-build-service/staging/kustomize.out.yaml
219,221d218
<                         startTime:
<                           format: int64
<                           type: integer
485,486d481
<               potentialBuildRecipesIndex:
<                 type: integer
1396c1391
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
1447,1448c1442,1443
<     ubi7:
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk7:
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
1451,1452c1446,1447
<     ubi8:
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk17:
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a 
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
<h3>3: Development changes from 88e5a0b0 to 81e83314 on Thu Feb 1 00:00:11 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index eb08b3d1..dae8dd44 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
+  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 1673f98e..5001d2cc 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 780d285f12a705da4740c8018e4831c9f6cd79af
+    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f69e9e5e..02e3d6a6 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-88e5a0b0/development/components/jvm-build-service/development/kustomize.out.yaml
219,221d218
<                         startTime:
<                           format: int64
<                           type: integer
485,486d481
<               potentialBuildRecipesIndex:
<                 type: integer
1396c1391
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
1426,1427c1421,1422
<     ubi7:
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk7:
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
1430,1431c1425,1426
<     ubi8:
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
---
>     jdk17:
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a 
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
<h3>4: Production changes from f079ce1a to 88e5a0b0 on Wed Jan 31 19:46:28 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c1adda0b..f66a78a8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5bb55c88e868015d2b62412eef174bd6c842441c
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3386d656..29db6bc1 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
+    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from f079ce1a to 88e5a0b0 on Wed Jan 31 19:46:28 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c1adda0b..f66a78a8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5bb55c88e868015d2b62412eef174bd6c842441c
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3386d656..29db6bc1 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
+    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from f079ce1a to 88e5a0b0 on Wed Jan 31 19:46:28 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c1adda0b..f66a78a8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5bb55c88e868015d2b62412eef174bd6c842441c
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 3386d656..29db6bc1 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
+    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-f079ce1a/development/components/release/development/kustomize.out.yaml
114,116c114,115
<                     description: "Timeout is a value to use to override the tekton
<                       default Pipelinerun timeout \n This field is DEPRECATED and
<                       will be replaced by Timeouts in a future change."
---
>                     description: Timeout is value to use to override the tekton default
>                       Pipelinerun timeout
118,135d116
<                   timeouts:
<                     description: Timeouts defines the different Timeouts to use in
<                       the PipelineRun execution
<                     properties:
<                       finally:
<                         description: Finally sets the maximum allowed duration of
<                           this pipeline's finally
<                         type: string
<                       pipeline:
<                         description: Pipeline sets the maximum allowed duration for
<                           execution of the entire pipeline. The sum of individual
<                           timeouts for tasks and finally must not exceed this value.
<                         type: string
<                       tasks:
<                         description: Tasks sets the maximum allowed duration of this
<                           pipeline's tasks
<                         type: string
<                     type: object
1697c1678
<         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c
---
>         image: quay.io/redhat-appstudio/release-service:0eb0a4595339e72684c50bcb049c5b0001b7fea5 
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
