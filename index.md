# kustomize changes tracked by commits 
### This file generated at Tue Jan 16 12:05:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 43bc84cc to dd330aec on Tue Jan 16 11:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
index b8f18fb6..86519156 100644
--- a/components/smee/staging/route.yaml
+++ b/components/smee/staging/route.yaml
@@ -6,7 +6,16 @@ metadata:
   annotations:
     haproxy.router.openshift.io/timeout: 86410s
     router.openshift.io/haproxy.health.check.interval: 86400s
-    haproxy.router.openshift.io/ip_whitelist: >
+    # The IP whitelist below allows getting webhook traffic from GitHub [1],
+    # GitLab.com [2] and our internal cluster.
+    #
+    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+    #
+    # Note that the configuration string below is very sensitive. It has to be
+    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+    # added to it makes OpenShift ignore it.
+    haproxy.router.openshift.io/ip_whitelist: >-
       192.30.252.0/22
       185.199.108.0/22
       140.82.112.0/20 
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
<h3>1: Staging changes from 43bc84cc to dd330aec on Tue Jan 16 11:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
index b8f18fb6..86519156 100644
--- a/components/smee/staging/route.yaml
+++ b/components/smee/staging/route.yaml
@@ -6,7 +6,16 @@ metadata:
   annotations:
     haproxy.router.openshift.io/timeout: 86410s
     router.openshift.io/haproxy.health.check.interval: 86400s
-    haproxy.router.openshift.io/ip_whitelist: >
+    # The IP whitelist below allows getting webhook traffic from GitHub [1],
+    # GitLab.com [2] and our internal cluster.
+    #
+    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+    #
+    # Note that the configuration string below is very sensitive. It has to be
+    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+    # added to it makes OpenShift ignore it.
+    haproxy.router.openshift.io/ip_whitelist: >-
       192.30.252.0/22
       185.199.108.0/22
       140.82.112.0/20 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-43bc84cc/staging/components/smee/staging/kustomize.out.yaml
59,61c59,60
<     haproxy.router.openshift.io/ip_whitelist: 192.30.252.0/22 185.199.108.0/22 140.82.112.0/20
<       143.55.64.0/20 2a0a:a440::/29 2606:50c0::/32 34.74.90.64/28 34.74.226.0/24 34.200.130.154
<       44.221.157.128 54.162.238.133
---
>     haproxy.router.openshift.io/ip_whitelist: |
>       192.30.252.0/22 185.199.108.0/22 140.82.112.0/20 143.55.64.0/20 2a0a:a440::/29 2606:50c0::/32 34.74.90.64/28 34.74.226.0/24 34.200.130.154 44.221.157.128 54.162.238.133 
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
<h3>1: Development changes from 43bc84cc to dd330aec on Tue Jan 16 11:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
index b8f18fb6..86519156 100644
--- a/components/smee/staging/route.yaml
+++ b/components/smee/staging/route.yaml
@@ -6,7 +6,16 @@ metadata:
   annotations:
     haproxy.router.openshift.io/timeout: 86410s
     router.openshift.io/haproxy.health.check.interval: 86400s
-    haproxy.router.openshift.io/ip_whitelist: >
+    # The IP whitelist below allows getting webhook traffic from GitHub [1],
+    # GitLab.com [2] and our internal cluster.
+    #
+    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+    #
+    # Note that the configuration string below is very sensitive. It has to be
+    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+    # added to it makes OpenShift ignore it.
+    haproxy.router.openshift.io/ip_whitelist: >-
       192.30.252.0/22
       185.199.108.0/22
       140.82.112.0/20 
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
<h3>2: Production changes from 89cca576 to 43bc84cc on Tue Jan 16 09:14:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 83b2ea1e..7119d92c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=c146261dd5441a74b87c302e8528aba1df50f201
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=c146261dd5441a74b87c302e8528aba1df50f201
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: c146261dd5441a74b87c302e8528aba1df50f201
+    newTag: 6675662ec9151517e39dde6932279770609d5fd6
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 583ada46..f5b9b117 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 89cca576 to 43bc84cc on Tue Jan 16 09:14:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 83b2ea1e..7119d92c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=c146261dd5441a74b87c302e8528aba1df50f201
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=c146261dd5441a74b87c302e8528aba1df50f201
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: c146261dd5441a74b87c302e8528aba1df50f201
+    newTag: 6675662ec9151517e39dde6932279770609d5fd6
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 583ada46..f5b9b117 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
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
<h3>2: Development changes from 89cca576 to 43bc84cc on Tue Jan 16 09:14:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 83b2ea1e..7119d92c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=c146261dd5441a74b87c302e8528aba1df50f201
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=c146261dd5441a74b87c302e8528aba1df50f201
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: c146261dd5441a74b87c302e8528aba1df50f201
+    newTag: 6675662ec9151517e39dde6932279770609d5fd6
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 583ada46..f5b9b117 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 887ff108 to 89cca576 on Tue Jan 16 07:21:10 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/development/kustomization.yaml b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
index 991a8834..e609fb24 100644
--- a/components/sandbox/toolchain-host-operator/development/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
+kind: Kustomization
+
+resources: []
diff --git a/components/sandbox/toolchain-member-operator/development/kustomization.yaml b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
index 991a8834..e609fb24 100644
--- a/components/sandbox/toolchain-member-operator/development/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
+kind: Kustomization
+
+resources: [] 
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
<h3>3: Staging changes from 887ff108 to 89cca576 on Tue Jan 16 07:21:10 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/development/kustomization.yaml b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
index 991a8834..e609fb24 100644
--- a/components/sandbox/toolchain-host-operator/development/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
+kind: Kustomization
+
+resources: []
diff --git a/components/sandbox/toolchain-member-operator/development/kustomization.yaml b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
index 991a8834..e609fb24 100644
--- a/components/sandbox/toolchain-member-operator/development/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
+kind: Kustomization
+
+resources: [] 
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
<h3>3: Development changes from 887ff108 to 89cca576 on Tue Jan 16 07:21:10 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/development/kustomization.yaml b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
index 991a8834..e609fb24 100644
--- a/components/sandbox/toolchain-host-operator/development/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
+kind: Kustomization
+
+resources: []
diff --git a/components/sandbox/toolchain-member-operator/development/kustomization.yaml b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
index 991a8834..e609fb24 100644
--- a/components/sandbox/toolchain-member-operator/development/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
+kind: Kustomization
+
+resources: [] 
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
<h3>4: Production changes from 013da654 to 887ff108 on Mon Jan 15 20:23:13 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1a5c272a..176de5dc 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 01e4a16a..27226da5 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1872,8 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1887,10 +1890,7 @@ spec:
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
   profile: all
   pruner:
-    keep: 10
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
+    disabled: true
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b4970893..e3ced1cc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1872,8 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1887,10 +1890,7 @@ spec:
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
   profile: all
   pruner:
-    keep: 10
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
+    disabled: true
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-013da654/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1202c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
1875,1876d1874
<       buckets: 1
<       disable-ha: false
1879d1876
<       replicas: 1
1893c1890,1893
<     disabled: true
---
>     keep: 10
>     resources:
>     - pipelinerun
>     schedule: 0/2 * * * *
./commit-013da654/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1202c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
1875,1876d1874
<       buckets: 1
<       disable-ha: false
1879d1876
<       replicas: 1
1893c1890,1893
<     disabled: true
---
>     keep: 10
>     resources:
>     - pipelinerun
>     schedule: 0/2 * * * * 
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
<h3>4: Staging changes from 013da654 to 887ff108 on Mon Jan 15 20:23:13 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1a5c272a..176de5dc 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 01e4a16a..27226da5 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1872,8 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1887,10 +1890,7 @@ spec:
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
   profile: all
   pruner:
-    keep: 10
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
+    disabled: true
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b4970893..e3ced1cc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1872,8 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1887,10 +1890,7 @@ spec:
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
   profile: all
   pruner:
-    keep: 10
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
+    disabled: true
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
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
<h3>4: Development changes from 013da654 to 887ff108 on Mon Jan 15 20:23:13 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 1a5c272a..176de5dc 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 01e4a16a..27226da5 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1872,8 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1887,10 +1890,7 @@ spec:
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
   profile: all
   pruner:
-    keep: 10
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
+    disabled: true
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b4970893..e3ced1cc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1872,8 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1887,10 +1890,7 @@ spec:
           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline
   profile: all
   pruner:
-    keep: 10
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
+    disabled: true
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
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
