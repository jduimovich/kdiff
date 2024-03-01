# kustomize changes tracked by commits 
### This file generated at Fri Mar  1 16:04:18 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 885d53b7 to 6095c189 on Fri Mar 1 14:09:13 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 71aac860..89584eb5 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -32,15 +32,15 @@ spec:
       auth:
         authClientConfigRaw: '{
                   "realm": "redhat-external",
-                  "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
                   "ssl-required": "ALL",
                   "resource": "cloud-services",
                   "clientId": "cloud-services",
                   "public-client": true
                 }'
-        authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
-        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-        ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
         ssoRealm: redhat-external
       environment: prod
       replicas: 10 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 885d53b7 to 6095c189 on Fri Mar 1 14:09:13 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 71aac860..89584eb5 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -32,15 +32,15 @@ spec:
       auth:
         authClientConfigRaw: '{
                   "realm": "redhat-external",
-                  "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
                   "ssl-required": "ALL",
                   "resource": "cloud-services",
                   "clientId": "cloud-services",
                   "public-client": true
                 }'
-        authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
-        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-        ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
         ssoRealm: redhat-external
       environment: prod
       replicas: 10 
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
<h3>1: Development changes from 885d53b7 to 6095c189 on Fri Mar 1 14:09:13 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index 71aac860..89584eb5 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -32,15 +32,15 @@ spec:
       auth:
         authClientConfigRaw: '{
                   "realm": "redhat-external",
-                  "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
                   "ssl-required": "ALL",
                   "resource": "cloud-services",
                   "clientId": "cloud-services",
                   "public-client": true
                 }'
-        authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
-        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-        ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
         ssoRealm: redhat-external
       environment: prod
       replicas: 10 
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
<h3>2: Production changes from 064f26ba to 885d53b7 on Thu Feb 29 17:08:32 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 80b437d6..82f63386 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4c8a173..960b8a40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 064f26ba to 885d53b7 on Thu Feb 29 17:08:32 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 80b437d6..82f63386 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4c8a173..960b8a40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
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
<h3>2: Development changes from 064f26ba to 885d53b7 on Thu Feb 29 17:08:32 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 80b437d6..82f63386 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4c8a173..960b8a40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-064f26ba/development/components/release/development/kustomize.out.yaml
1790c1790
<         image: quay.io/redhat-appstudio/release-service:3c4a8f0a1d6cad71aeaf03ea5bd1131677b5d4d0
---
>         image: quay.io/redhat-appstudio/release-service:94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f 
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
<h3>3: Production changes from 03152bfd to 064f26ba on Thu Feb 29 14:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index bf817c3e..d9be3fcc 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-03152bfd/production/components/release/production/kustomize.out.yaml
1790c1790
<         image: quay.io/redhat-appstudio/release-service:94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
---
>         image: quay.io/redhat-appstudio/release-service:4a125b85f681fbecde7113e3a5765be8388ba459 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 03152bfd to 064f26ba on Thu Feb 29 14:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index bf817c3e..d9be3fcc 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
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
<h3>3: Development changes from 03152bfd to 064f26ba on Thu Feb 29 14:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index bf817c3e..d9be3fcc 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 64366834 to 03152bfd on Thu Feb 29 13:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index 4bde7f10..3313e531 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - release-pipeline-resources-clusterrole.yaml
+- release-service-config-rbac.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
 - cronjobs/
diff --git a/components/release/base/release-service-config-rbac.yaml b/components/release/base/release-service-config-rbac.yaml
new file mode 100644
index 00000000..3837427b
--- /dev/null
+++ b/components/release/base/release-service-config-rbac.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: releaseserviceconfig-role
+rules:
+- apiGroups:
+  - appstudio.redhat.com
+  resources:
+  - releaseserviceconfigs
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: releaseserviceconfigs-rolebinding
+  namespace: release-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: releaseserviceconfig-role
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:serviceaccounts 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-64366834/production/components/release/production/kustomize.out.yaml
1420,1433d1419
< kind: ClusterRole
< metadata:
<   name: releaseserviceconfig-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseserviceconfigs
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1488,1501d1473
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: releaseserviceconfigs-rolebinding
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: releaseserviceconfig-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 64366834 to 03152bfd on Thu Feb 29 13:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index 4bde7f10..3313e531 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - release-pipeline-resources-clusterrole.yaml
+- release-service-config-rbac.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
 - cronjobs/
diff --git a/components/release/base/release-service-config-rbac.yaml b/components/release/base/release-service-config-rbac.yaml
new file mode 100644
index 00000000..3837427b
--- /dev/null
+++ b/components/release/base/release-service-config-rbac.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: releaseserviceconfig-role
+rules:
+- apiGroups:
+  - appstudio.redhat.com
+  resources:
+  - releaseserviceconfigs
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: releaseserviceconfigs-rolebinding
+  namespace: release-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: releaseserviceconfig-role
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:serviceaccounts 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-64366834/staging/components/release/staging/kustomize.out.yaml
1420,1433d1419
< kind: ClusterRole
< metadata:
<   name: releaseserviceconfig-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseserviceconfigs
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1488,1501d1473
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: releaseserviceconfigs-rolebinding
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: releaseserviceconfig-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts 
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
<h3>4: Development changes from 64366834 to 03152bfd on Thu Feb 29 13:37:56 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/release/base/kustomization.yaml b/components/release/base/kustomization.yaml
index 4bde7f10..3313e531 100644
--- a/components/release/base/kustomization.yaml
+++ b/components/release/base/kustomization.yaml
@@ -2,6 +2,7 @@ resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
 - release-pipeline-resources-clusterrole.yaml
+- release-service-config-rbac.yaml
 - release-service-configurator-role.yaml
 - release-team.yaml
 - cronjobs/
diff --git a/components/release/base/release-service-config-rbac.yaml b/components/release/base/release-service-config-rbac.yaml
new file mode 100644
index 00000000..3837427b
--- /dev/null
+++ b/components/release/base/release-service-config-rbac.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: releaseserviceconfig-role
+rules:
+- apiGroups:
+  - appstudio.redhat.com
+  resources:
+  - releaseserviceconfigs
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: releaseserviceconfigs-rolebinding
+  namespace: release-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: releaseserviceconfig-role
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:serviceaccounts 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-64366834/development/components/release/development/kustomize.out.yaml
1420,1433d1419
< kind: ClusterRole
< metadata:
<   name: releaseserviceconfig-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releaseserviceconfigs
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1488,1501d1473
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: releaseserviceconfigs-rolebinding
<   namespace: release-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: releaseserviceconfig-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts 
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
