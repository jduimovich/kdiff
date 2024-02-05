# kustomize changes tracked by commits 
### This file generated at Mon Feb  5 04:03:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a6a36a2a to d912fa9a on Mon Feb 5 03:16:30 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ee90f32b..54e40816 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a6a36a2a to d912fa9a on Mon Feb 5 03:16:30 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ee90f32b..54e40816 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing 
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
<h3>1: Development changes from a6a36a2a to d912fa9a on Mon Feb 5 03:16:30 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ee90f32b..54e40816 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing 
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
<h3>2: Production changes from ab6b2c06 to a6a36a2a on Sun Feb 4 05:43:44 2024 </h3>  
 
<details> 
<summary>Git Diff (182 lines)</summary>  

``` 
diff --git a/components/smee/staging/deployment.yaml b/components/smee/base/deployment.yaml
similarity index 100%
rename from components/smee/staging/deployment.yaml
rename to components/smee/base/deployment.yaml
diff --git a/components/smee/base/kustomization.yaml b/components/smee/base/kustomization.yaml
index fe0f332a..17293f36 100644
--- a/components/smee/base/kustomization.yaml
+++ b/components/smee/base/kustomization.yaml
@@ -1,4 +1,7 @@
 ---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-resources: []
+resources:
+- deployment.yaml
+- route.yaml
+- service.yaml
diff --git a/components/smee/base/route.yaml b/components/smee/base/route.yaml
new file mode 100644
index 00000000..368256d9
--- /dev/null
+++ b/components/smee/base/route.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: smee
+  annotations:
+    haproxy.router.openshift.io/timeout: 86410s
+    router.openshift.io/haproxy.health.check.interval: 86400s
+    haproxy.router.openshift.io/ip_whitelist: ""
+spec:
+  port:
+    targetPort: "http"
+  to:
+    kind: Service
+    name: smee
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
diff --git a/components/smee/staging/service.yaml b/components/smee/base/service.yaml
similarity index 100%
rename from components/smee/staging/service.yaml
rename to components/smee/base/service.yaml
diff --git a/components/smee/production/ip-allow-list.yaml b/components/smee/production/ip-allow-list.yaml
new file mode 100644
index 00000000..7957c976
--- /dev/null
+++ b/components/smee/production/ip-allow-list.yaml
@@ -0,0 +1,24 @@
+---
+  # The IP whitelist below allows getting webhook traffic from GitHub [1],
+  # GitLab.com [2] and our internal cluster.
+  #
+  # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+  # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+  #
+  # Note that the configuration string below is very sensitive. It has to be
+  # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+  # added to it makes OpenShift ignore it.
+- op: add
+  path: /metadata/annotations/haproxy.router.openshift.io~1ip_whitelist
+  value: >-
+    192.30.252.0/22
+    185.199.108.0/22
+    140.82.112.0/20
+    143.55.64.0/20
+    2a0a:a440::/29
+    2606:50c0::/32
+    34.74.90.64/28
+    34.74.226.0/24
+    44.217.103.151
+    44.221.194.189
+    54.156.92.180
diff --git a/components/smee/production/kustomization.yaml b/components/smee/production/kustomization.yaml
index fe0f332a..b67cd105 100644
--- a/components/smee/production/kustomization.yaml
+++ b/components/smee/production/kustomization.yaml
@@ -1,4 +1,10 @@
 ---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-resources: []
+resources:
+- ../base
+patches:
+  - path: ip-allow-list.yaml
+    target:
+      name: smee
+      kind: Route
diff --git a/components/smee/staging/ip-allow-list.yaml b/components/smee/staging/ip-allow-list.yaml
new file mode 100644
index 00000000..728d18a2
--- /dev/null
+++ b/components/smee/staging/ip-allow-list.yaml
@@ -0,0 +1,24 @@
+---
+# The IP whitelist below allows getting webhook traffic from GitHub [1],
+# GitLab.com [2] and our internal cluster.
+#
+# [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+# [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+#
+# Note that the configuration string below is very sensitive. It has to be
+# a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+# added to it makes OpenShift ignore it.
+- op: add
+  path: /metadata/annotations/haproxy.router.openshift.io~1ip_whitelist
+  value: >-
+    192.30.252.0/22
+    185.199.108.0/22
+    140.82.112.0/20
+    143.55.64.0/20
+    2a0a:a440::/29
+    2606:50c0::/32
+    34.74.90.64/28
+    34.74.226.0/24
+    34.200.130.154
+    44.221.157.128
+    54.162.238.133
diff --git a/components/smee/staging/kustomization.yaml b/components/smee/staging/kustomization.yaml
index 17293f36..b67cd105 100644
--- a/components/smee/staging/kustomization.yaml
+++ b/components/smee/staging/kustomization.yaml
@@ -2,6 +2,9 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- deployment.yaml
-- route.yaml
-- service.yaml
+- ../base
+patches:
+  - path: ip-allow-list.yaml
+    target:
+      name: smee
+      kind: Route
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
deleted file mode 100644
index 86519156..00000000
--- a/components/smee/staging/route.yaml
+++ /dev/null
@@ -1,38 +0,0 @@
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  name: smee
-  annotations:
-    haproxy.router.openshift.io/timeout: 86410s
-    router.openshift.io/haproxy.health.check.interval: 86400s
-    # The IP whitelist below allows getting webhook traffic from GitHub [1],
-    # GitLab.com [2] and our internal cluster.
-    #
-    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
-    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
-    #
-    # Note that the configuration string below is very sensitive. It has to be
-    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
-    # added to it makes OpenShift ignore it.
-    haproxy.router.openshift.io/ip_whitelist: >-
-      192.30.252.0/22
-      185.199.108.0/22
-      140.82.112.0/20
-      143.55.64.0/20
-      2a0a:a440::/29
-      2606:50c0::/32
-      34.74.90.64/28
-      34.74.226.0/24
-      34.200.130.154
-      44.221.157.128
-      54.162.238.133
-spec:
-  port:
-    targetPort: "http"
-  to:
-    kind: Service
-    name: smee
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: edge 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (75 lines)</summary>  

``` 
./commit-ab6b2c06/production/components/smee/production/kustomize.out.yaml
1,73d0
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: gosmee
<   name: smee
< spec:
<   ports:
<   - name: http
<     port: 3333
<     protocol: TCP
<     targetPort: gosmee-http
<   selector:
<     app: gosmee
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: gosmee
<   name: gosmee
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: gosmee
<   template:
<     metadata:
<       labels:
<         app: gosmee
<     spec:
<       containers:
<       - args:
<         - server
<         - --address
<         - 0.0.0.0
<         image: ghcr.io/chmouel/gosmee:v0.20.2
<         imagePullPolicy: Always
<         name: gosmee
<         ports:
<         - containerPort: 3333
<           name: gosmee-http
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 1
<             memory: 32Mi
<           requests:
<             cpu: 1
<             memory: 32Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   annotations:
<     haproxy.router.openshift.io/ip_whitelist: 192.30.252.0/22 185.199.108.0/22 140.82.112.0/20
<       143.55.64.0/20 2a0a:a440::/29 2606:50c0::/32 34.74.90.64/28 34.74.226.0/24 44.217.103.151
<       44.221.194.189 54.156.92.180
<     haproxy.router.openshift.io/timeout: 86410s
<     router.openshift.io/haproxy.health.check.interval: 86400s
<   name: smee
< spec:
<   port:
<     targetPort: http
<   tls:
<     insecureEdgeTerminationPolicy: Redirect
<     termination: edge
<   to:
<     kind: Service
<     name: smee 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ab6b2c06 to a6a36a2a on Sun Feb 4 05:43:44 2024 </h3>  
 
<details> 
<summary>Git Diff (182 lines)</summary>  

``` 
diff --git a/components/smee/staging/deployment.yaml b/components/smee/base/deployment.yaml
similarity index 100%
rename from components/smee/staging/deployment.yaml
rename to components/smee/base/deployment.yaml
diff --git a/components/smee/base/kustomization.yaml b/components/smee/base/kustomization.yaml
index fe0f332a..17293f36 100644
--- a/components/smee/base/kustomization.yaml
+++ b/components/smee/base/kustomization.yaml
@@ -1,4 +1,7 @@
 ---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-resources: []
+resources:
+- deployment.yaml
+- route.yaml
+- service.yaml
diff --git a/components/smee/base/route.yaml b/components/smee/base/route.yaml
new file mode 100644
index 00000000..368256d9
--- /dev/null
+++ b/components/smee/base/route.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: smee
+  annotations:
+    haproxy.router.openshift.io/timeout: 86410s
+    router.openshift.io/haproxy.health.check.interval: 86400s
+    haproxy.router.openshift.io/ip_whitelist: ""
+spec:
+  port:
+    targetPort: "http"
+  to:
+    kind: Service
+    name: smee
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
diff --git a/components/smee/staging/service.yaml b/components/smee/base/service.yaml
similarity index 100%
rename from components/smee/staging/service.yaml
rename to components/smee/base/service.yaml
diff --git a/components/smee/production/ip-allow-list.yaml b/components/smee/production/ip-allow-list.yaml
new file mode 100644
index 00000000..7957c976
--- /dev/null
+++ b/components/smee/production/ip-allow-list.yaml
@@ -0,0 +1,24 @@
+---
+  # The IP whitelist below allows getting webhook traffic from GitHub [1],
+  # GitLab.com [2] and our internal cluster.
+  #
+  # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+  # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+  #
+  # Note that the configuration string below is very sensitive. It has to be
+  # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+  # added to it makes OpenShift ignore it.
+- op: add
+  path: /metadata/annotations/haproxy.router.openshift.io~1ip_whitelist
+  value: >-
+    192.30.252.0/22
+    185.199.108.0/22
+    140.82.112.0/20
+    143.55.64.0/20
+    2a0a:a440::/29
+    2606:50c0::/32
+    34.74.90.64/28
+    34.74.226.0/24
+    44.217.103.151
+    44.221.194.189
+    54.156.92.180
diff --git a/components/smee/production/kustomization.yaml b/components/smee/production/kustomization.yaml
index fe0f332a..b67cd105 100644
--- a/components/smee/production/kustomization.yaml
+++ b/components/smee/production/kustomization.yaml
@@ -1,4 +1,10 @@
 ---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-resources: []
+resources:
+- ../base
+patches:
+  - path: ip-allow-list.yaml
+    target:
+      name: smee
+      kind: Route
diff --git a/components/smee/staging/ip-allow-list.yaml b/components/smee/staging/ip-allow-list.yaml
new file mode 100644
index 00000000..728d18a2
--- /dev/null
+++ b/components/smee/staging/ip-allow-list.yaml
@@ -0,0 +1,24 @@
+---
+# The IP whitelist below allows getting webhook traffic from GitHub [1],
+# GitLab.com [2] and our internal cluster.
+#
+# [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+# [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+#
+# Note that the configuration string below is very sensitive. It has to be
+# a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+# added to it makes OpenShift ignore it.
+- op: add
+  path: /metadata/annotations/haproxy.router.openshift.io~1ip_whitelist
+  value: >-
+    192.30.252.0/22
+    185.199.108.0/22
+    140.82.112.0/20
+    143.55.64.0/20
+    2a0a:a440::/29
+    2606:50c0::/32
+    34.74.90.64/28
+    34.74.226.0/24
+    34.200.130.154
+    44.221.157.128
+    54.162.238.133
diff --git a/components/smee/staging/kustomization.yaml b/components/smee/staging/kustomization.yaml
index 17293f36..b67cd105 100644
--- a/components/smee/staging/kustomization.yaml
+++ b/components/smee/staging/kustomization.yaml
@@ -2,6 +2,9 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- deployment.yaml
-- route.yaml
-- service.yaml
+- ../base
+patches:
+  - path: ip-allow-list.yaml
+    target:
+      name: smee
+      kind: Route
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
deleted file mode 100644
index 86519156..00000000
--- a/components/smee/staging/route.yaml
+++ /dev/null
@@ -1,38 +0,0 @@
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  name: smee
-  annotations:
-    haproxy.router.openshift.io/timeout: 86410s
-    router.openshift.io/haproxy.health.check.interval: 86400s
-    # The IP whitelist below allows getting webhook traffic from GitHub [1],
-    # GitLab.com [2] and our internal cluster.
-    #
-    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
-    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
-    #
-    # Note that the configuration string below is very sensitive. It has to be
-    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
-    # added to it makes OpenShift ignore it.
-    haproxy.router.openshift.io/ip_whitelist: >-
-      192.30.252.0/22
-      185.199.108.0/22
-      140.82.112.0/20
-      143.55.64.0/20
-      2a0a:a440::/29
-      2606:50c0::/32
-      34.74.90.64/28
-      34.74.226.0/24
-      34.200.130.154
-      44.221.157.128
-      54.162.238.133
-spec:
-  port:
-    targetPort: "http"
-  to:
-    kind: Service
-    name: smee
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: edge 
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
<h3>2: Development changes from ab6b2c06 to a6a36a2a on Sun Feb 4 05:43:44 2024 </h3>  
 
<details> 
<summary>Git Diff (182 lines)</summary>  

``` 
diff --git a/components/smee/staging/deployment.yaml b/components/smee/base/deployment.yaml
similarity index 100%
rename from components/smee/staging/deployment.yaml
rename to components/smee/base/deployment.yaml
diff --git a/components/smee/base/kustomization.yaml b/components/smee/base/kustomization.yaml
index fe0f332a..17293f36 100644
--- a/components/smee/base/kustomization.yaml
+++ b/components/smee/base/kustomization.yaml
@@ -1,4 +1,7 @@
 ---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-resources: []
+resources:
+- deployment.yaml
+- route.yaml
+- service.yaml
diff --git a/components/smee/base/route.yaml b/components/smee/base/route.yaml
new file mode 100644
index 00000000..368256d9
--- /dev/null
+++ b/components/smee/base/route.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: smee
+  annotations:
+    haproxy.router.openshift.io/timeout: 86410s
+    router.openshift.io/haproxy.health.check.interval: 86400s
+    haproxy.router.openshift.io/ip_whitelist: ""
+spec:
+  port:
+    targetPort: "http"
+  to:
+    kind: Service
+    name: smee
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
diff --git a/components/smee/staging/service.yaml b/components/smee/base/service.yaml
similarity index 100%
rename from components/smee/staging/service.yaml
rename to components/smee/base/service.yaml
diff --git a/components/smee/production/ip-allow-list.yaml b/components/smee/production/ip-allow-list.yaml
new file mode 100644
index 00000000..7957c976
--- /dev/null
+++ b/components/smee/production/ip-allow-list.yaml
@@ -0,0 +1,24 @@
+---
+  # The IP whitelist below allows getting webhook traffic from GitHub [1],
+  # GitLab.com [2] and our internal cluster.
+  #
+  # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+  # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+  #
+  # Note that the configuration string below is very sensitive. It has to be
+  # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+  # added to it makes OpenShift ignore it.
+- op: add
+  path: /metadata/annotations/haproxy.router.openshift.io~1ip_whitelist
+  value: >-
+    192.30.252.0/22
+    185.199.108.0/22
+    140.82.112.0/20
+    143.55.64.0/20
+    2a0a:a440::/29
+    2606:50c0::/32
+    34.74.90.64/28
+    34.74.226.0/24
+    44.217.103.151
+    44.221.194.189
+    54.156.92.180
diff --git a/components/smee/production/kustomization.yaml b/components/smee/production/kustomization.yaml
index fe0f332a..b67cd105 100644
--- a/components/smee/production/kustomization.yaml
+++ b/components/smee/production/kustomization.yaml
@@ -1,4 +1,10 @@
 ---
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-resources: []
+resources:
+- ../base
+patches:
+  - path: ip-allow-list.yaml
+    target:
+      name: smee
+      kind: Route
diff --git a/components/smee/staging/ip-allow-list.yaml b/components/smee/staging/ip-allow-list.yaml
new file mode 100644
index 00000000..728d18a2
--- /dev/null
+++ b/components/smee/staging/ip-allow-list.yaml
@@ -0,0 +1,24 @@
+---
+# The IP whitelist below allows getting webhook traffic from GitHub [1],
+# GitLab.com [2] and our internal cluster.
+#
+# [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+# [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+#
+# Note that the configuration string below is very sensitive. It has to be
+# a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+# added to it makes OpenShift ignore it.
+- op: add
+  path: /metadata/annotations/haproxy.router.openshift.io~1ip_whitelist
+  value: >-
+    192.30.252.0/22
+    185.199.108.0/22
+    140.82.112.0/20
+    143.55.64.0/20
+    2a0a:a440::/29
+    2606:50c0::/32
+    34.74.90.64/28
+    34.74.226.0/24
+    34.200.130.154
+    44.221.157.128
+    54.162.238.133
diff --git a/components/smee/staging/kustomization.yaml b/components/smee/staging/kustomization.yaml
index 17293f36..b67cd105 100644
--- a/components/smee/staging/kustomization.yaml
+++ b/components/smee/staging/kustomization.yaml
@@ -2,6 +2,9 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- deployment.yaml
-- route.yaml
-- service.yaml
+- ../base
+patches:
+  - path: ip-allow-list.yaml
+    target:
+      name: smee
+      kind: Route
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
deleted file mode 100644
index 86519156..00000000
--- a/components/smee/staging/route.yaml
+++ /dev/null
@@ -1,38 +0,0 @@
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  name: smee
-  annotations:
-    haproxy.router.openshift.io/timeout: 86410s
-    router.openshift.io/haproxy.health.check.interval: 86400s
-    # The IP whitelist below allows getting webhook traffic from GitHub [1],
-    # GitLab.com [2] and our internal cluster.
-    #
-    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
-    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
-    #
-    # Note that the configuration string below is very sensitive. It has to be
-    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
-    # added to it makes OpenShift ignore it.
-    haproxy.router.openshift.io/ip_whitelist: >-
-      192.30.252.0/22
-      185.199.108.0/22
-      140.82.112.0/20
-      143.55.64.0/20
-      2a0a:a440::/29
-      2606:50c0::/32
-      34.74.90.64/28
-      34.74.226.0/24
-      34.200.130.154
-      44.221.157.128
-      54.162.238.133
-spec:
-  port:
-    targetPort: "http"
-  to:
-    kind: Service
-    name: smee
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: edge 
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
<h3>3: Production changes from 38e866ba to ab6b2c06 on Fri Feb 2 17:20:33 2024 </h3>  
 
<details> 
<summary>Git Diff (86 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
new file mode 100644
index 00000000..1de7a037
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
@@ -0,0 +1,79 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+    host:
+      tiers:
+        defaultTier: 'appstudio'
+        defaultSpaceTier: 'appstudio'
+      automaticApproval:
+        enabled: true
+      capacityThresholds:
+        maxNumberOfSpacesPerMemberCluster:
+          member-stone-stg-m01.7ayg.p1.openshiftapps.com: 1500
+          member-stone-stg-rh01.l2vh.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
+        resourceCapacityThreshold:
+          defaultThreshold: 90
+      spaceConfig:
+        spaceRequestEnabled: true
+        spaceBindingRequestEnabled: true
+      deactivation:
+        deactivationDomainsExcluded: '@redhat.com'
+      notifications:
+        adminEmail: rhtap-infra@redhat.com
+        secret:
+          mailgunAPIKey: mailgun.api.key
+          mailgunDomain: mailgun.domain
+          mailgunReplyToEmail: mailgun.replyto.email
+          mailgunSenderEmail: mailgun.sender.email
+          ref: host-operator-secret
+        templateSetName: 'appstudio'
+      registrationService:
+        auth:
+          authClientConfigRaw: '{
+                    "realm": "redhat-external",
+                    "auth-server-url": "https://sso.redhat.com/auth",
+                    "ssl-required": "ALL",
+                    "resource": "appstudio-stage-public",
+                    "clientId": "appstudio-stage-public",
+                    "public-client": true
+                  }'
+          authClientLibraryURL: https://sso.redhat.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://sso.redhat.com
+          ssoRealm: redhat-external
+        environment: prod
+        replicas: 10
+        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        verification:
+          enabled: true
+          excludedEmailDomains: 'redhat.com'
+          secret:
+            ref: host-operator-secret
+            twilioAccountSID: twilio.account.sid # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioAuthToken: twilio.auth.token  # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioFromNumber: twilio.from_number # TODO remove twilio config as phone verification is not needed in Konflux
+      toolchainStatus:
+        gitHubSecret:
+          ref: host-operator-secret
+          accessTokenKey: github.access.token
+    members:
+      default:
+        skipUserCreation: true
+        auth:
+          idp: DevSandbox
+        autoscaler:
+          bufferMemory: 3Gi
+          bufferReplicas: 10
+          deploy: true
+        che:
+          required: false
+          userDeletionEnabled: false
+        memberStatus:
+          gitHubSecret:
+            ref: member-operator-secret
+            accessTokenKey: github.access.token
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 38e866ba to ab6b2c06 on Fri Feb 2 17:20:33 2024 </h3>  
 
<details> 
<summary>Git Diff (86 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
new file mode 100644
index 00000000..1de7a037
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
@@ -0,0 +1,79 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+    host:
+      tiers:
+        defaultTier: 'appstudio'
+        defaultSpaceTier: 'appstudio'
+      automaticApproval:
+        enabled: true
+      capacityThresholds:
+        maxNumberOfSpacesPerMemberCluster:
+          member-stone-stg-m01.7ayg.p1.openshiftapps.com: 1500
+          member-stone-stg-rh01.l2vh.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
+        resourceCapacityThreshold:
+          defaultThreshold: 90
+      spaceConfig:
+        spaceRequestEnabled: true
+        spaceBindingRequestEnabled: true
+      deactivation:
+        deactivationDomainsExcluded: '@redhat.com'
+      notifications:
+        adminEmail: rhtap-infra@redhat.com
+        secret:
+          mailgunAPIKey: mailgun.api.key
+          mailgunDomain: mailgun.domain
+          mailgunReplyToEmail: mailgun.replyto.email
+          mailgunSenderEmail: mailgun.sender.email
+          ref: host-operator-secret
+        templateSetName: 'appstudio'
+      registrationService:
+        auth:
+          authClientConfigRaw: '{
+                    "realm": "redhat-external",
+                    "auth-server-url": "https://sso.redhat.com/auth",
+                    "ssl-required": "ALL",
+                    "resource": "appstudio-stage-public",
+                    "clientId": "appstudio-stage-public",
+                    "public-client": true
+                  }'
+          authClientLibraryURL: https://sso.redhat.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://sso.redhat.com
+          ssoRealm: redhat-external
+        environment: prod
+        replicas: 10
+        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        verification:
+          enabled: true
+          excludedEmailDomains: 'redhat.com'
+          secret:
+            ref: host-operator-secret
+            twilioAccountSID: twilio.account.sid # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioAuthToken: twilio.auth.token  # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioFromNumber: twilio.from_number # TODO remove twilio config as phone verification is not needed in Konflux
+      toolchainStatus:
+        gitHubSecret:
+          ref: host-operator-secret
+          accessTokenKey: github.access.token
+    members:
+      default:
+        skipUserCreation: true
+        auth:
+          idp: DevSandbox
+        autoscaler:
+          bufferMemory: 3Gi
+          bufferReplicas: 10
+          deploy: true
+        che:
+          required: false
+          userDeletionEnabled: false
+        memberStatus:
+          gitHubSecret:
+            ref: member-operator-secret
+            accessTokenKey: github.access.token
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
<h3>3: Development changes from 38e866ba to ab6b2c06 on Fri Feb 2 17:20:33 2024 </h3>  
 
<details> 
<summary>Git Diff (86 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
new file mode 100644
index 00000000..1de7a037
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
@@ -0,0 +1,79 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+    host:
+      tiers:
+        defaultTier: 'appstudio'
+        defaultSpaceTier: 'appstudio'
+      automaticApproval:
+        enabled: true
+      capacityThresholds:
+        maxNumberOfSpacesPerMemberCluster:
+          member-stone-stg-m01.7ayg.p1.openshiftapps.com: 1500
+          member-stone-stg-rh01.l2vh.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
+        resourceCapacityThreshold:
+          defaultThreshold: 90
+      spaceConfig:
+        spaceRequestEnabled: true
+        spaceBindingRequestEnabled: true
+      deactivation:
+        deactivationDomainsExcluded: '@redhat.com'
+      notifications:
+        adminEmail: rhtap-infra@redhat.com
+        secret:
+          mailgunAPIKey: mailgun.api.key
+          mailgunDomain: mailgun.domain
+          mailgunReplyToEmail: mailgun.replyto.email
+          mailgunSenderEmail: mailgun.sender.email
+          ref: host-operator-secret
+        templateSetName: 'appstudio'
+      registrationService:
+        auth:
+          authClientConfigRaw: '{
+                    "realm": "redhat-external",
+                    "auth-server-url": "https://sso.redhat.com/auth",
+                    "ssl-required": "ALL",
+                    "resource": "appstudio-stage-public",
+                    "clientId": "appstudio-stage-public",
+                    "public-client": true
+                  }'
+          authClientLibraryURL: https://sso.redhat.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://sso.redhat.com
+          ssoRealm: redhat-external
+        environment: prod
+        replicas: 10
+        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        verification:
+          enabled: true
+          excludedEmailDomains: 'redhat.com'
+          secret:
+            ref: host-operator-secret
+            twilioAccountSID: twilio.account.sid # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioAuthToken: twilio.auth.token  # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioFromNumber: twilio.from_number # TODO remove twilio config as phone verification is not needed in Konflux
+      toolchainStatus:
+        gitHubSecret:
+          ref: host-operator-secret
+          accessTokenKey: github.access.token
+    members:
+      default:
+        skipUserCreation: true
+        auth:
+          idp: DevSandbox
+        autoscaler:
+          bufferMemory: 3Gi
+          bufferReplicas: 10
+          deploy: true
+        che:
+          required: false
+          userDeletionEnabled: false
+        memberStatus:
+          gitHubSecret:
+            ref: member-operator-secret
+            accessTokenKey: github.access.token
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 181208be to 38e866ba on Fri Feb 2 11:47:49 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index f0549d21..ec8f0227 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=f81a3355e7e08defe5d2e5d245313c4777294244
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
+  newTag: f81a3355e7e08defe5d2e5d245313c4777294244
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index c40cf532..9d54b754 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=f81a3355e7e08defe5d2e5d245313c4777294244
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
+  newTag: f81a3355e7e08defe5d2e5d245313c4777294244
 
 namespace: integration-service
  
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
<h3>4: Staging changes from 181208be to 38e866ba on Fri Feb 2 11:47:49 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index f0549d21..ec8f0227 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=f81a3355e7e08defe5d2e5d245313c4777294244
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
+  newTag: f81a3355e7e08defe5d2e5d245313c4777294244
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index c40cf532..9d54b754 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=f81a3355e7e08defe5d2e5d245313c4777294244
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
+  newTag: f81a3355e7e08defe5d2e5d245313c4777294244
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-181208be/staging/components/integration/staging/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:f81a3355e7e08defe5d2e5d245313c4777294244
---
>         image: quay.io/redhat-appstudio/integration-service:b2787862f48a938cbbeb1385543b51264d10ff57 
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
<h3>4: Development changes from 181208be to 38e866ba on Fri Feb 2 11:47:49 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index f0549d21..ec8f0227 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=f81a3355e7e08defe5d2e5d245313c4777294244
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
+  newTag: f81a3355e7e08defe5d2e5d245313c4777294244
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index c40cf532..9d54b754 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=f81a3355e7e08defe5d2e5d245313c4777294244
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
+  newTag: f81a3355e7e08defe5d2e5d245313c4777294244
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-181208be/development/components/integration/development/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:f81a3355e7e08defe5d2e5d245313c4777294244
---
>         image: quay.io/redhat-appstudio/integration-service:b2787862f48a938cbbeb1385543b51264d10ff57 
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
