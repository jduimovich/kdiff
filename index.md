# kustomize changes tracked by commits 
### This file generated at Thu May 16 12:08:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ef29256f to e25ae992 on Thu May 16 11:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 2647a616..01ed6e71 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -29,19 +29,19 @@ spec:
         auth:
           authClientConfigRaw: '{
                     "realm": "redhat-external",
-                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth",
                     "ssl-required": "ALL",
                     "resource": "cloud-services",
                     "clientId": "cloud-services",
                     "public-client": true
                   }'
-          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
-          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        registrationServiceURL: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from ef29256f to e25ae992 on Thu May 16 11:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 2647a616..01ed6e71 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -29,19 +29,19 @@ spec:
         auth:
           authClientConfigRaw: '{
                     "realm": "redhat-external",
-                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth",
                     "ssl-required": "ALL",
                     "resource": "cloud-services",
                     "clientId": "cloud-services",
                     "public-client": true
                   }'
-          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
-          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        registrationServiceURL: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
<h3>1: Development changes from ef29256f to e25ae992 on Thu May 16 11:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 2647a616..01ed6e71 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -29,19 +29,19 @@ spec:
         auth:
           authClientConfigRaw: '{
                     "realm": "redhat-external",
-                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth",
                     "ssl-required": "ALL",
                     "resource": "cloud-services",
                     "clientId": "cloud-services",
                     "public-client": true
                   }'
-          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
-          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
-          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.stone-stage-p01.hpmt.p1.openshiftapps.com
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        registrationServiceURL: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5013b309 to ef29256f on Thu May 16 11:08:25 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..52570c7f 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-platform-controller/aws-ssh-key
+        key: staging/build/multi-platform-controller/public-stage-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -57,7 +57,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-platform-controller/aws-account
+        key: staging/build/multi-platform-controller/public-stage-aws-account
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..1e40facc 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -12,23 +12,27 @@ data:
 
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
-  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.ami: ami-078a9bdcc8d8f2c9c
   dynamic.linux-arm64.instance-type: t4g.small
-  dynamic.linux-arm64.key-name: multi-platform-aws-stage
+  dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "launch-wizard-1"
+  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.spot-price: "0.010"
+  dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.ami: ami-06461039ebf1a764d
   dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: multi-platform-aws-stage
+  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "launch-wizard-1"
+  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.spot-price: "0.050"
+  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5013b309 to ef29256f on Thu May 16 11:08:25 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..52570c7f 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-platform-controller/aws-ssh-key
+        key: staging/build/multi-platform-controller/public-stage-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -57,7 +57,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-platform-controller/aws-account
+        key: staging/build/multi-platform-controller/public-stage-aws-account
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..1e40facc 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -12,23 +12,27 @@ data:
 
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
-  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.ami: ami-078a9bdcc8d8f2c9c
   dynamic.linux-arm64.instance-type: t4g.small
-  dynamic.linux-arm64.key-name: multi-platform-aws-stage
+  dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "launch-wizard-1"
+  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.spot-price: "0.010"
+  dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.ami: ami-06461039ebf1a764d
   dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: multi-platform-aws-stage
+  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "launch-wizard-1"
+  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.spot-price: "0.050"
+  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (39 lines)</summary>  

``` 
./commit-5013b309/staging/components/multi-platform-controller/staging/kustomize.out.yaml
138c138
<   dynamic.linux-amd64.ami: ami-06461039ebf1a764d
---
>   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
141c141
<   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
---
>   dynamic.linux-amd64.key-name: multi-platform-aws-stage
144,145c144
<   dynamic.linux-amd64.security-group: multi-arch-build-sg
<   dynamic.linux-amd64.spot-price: "0.050"
---
>   dynamic.linux-amd64.security-group: launch-wizard-1
147d145
<   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
149c147
<   dynamic.linux-arm64.ami: ami-078a9bdcc8d8f2c9c
---
>   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
152c150
<   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
---
>   dynamic.linux-arm64.key-name: multi-platform-aws-stage
155,156c153
<   dynamic.linux-arm64.security-group: multi-arch-build-sg
<   dynamic.linux-arm64.spot-price: "0.010"
---
>   dynamic.linux-arm64.security-group: launch-wizard-1
158d154
<   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
331c327
<       key: staging/build/multi-platform-controller/public-stage-aws-account
---
>       key: staging/build/multi-platform-controller/aws-account
354c350
<       key: staging/build/multi-platform-controller/public-stage-ssh-key
---
>       key: staging/build/multi-platform-controller/aws-ssh-key 
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
<h3>2: Development changes from 5013b309 to ef29256f on Thu May 16 11:08:25 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..52570c7f 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-platform-controller/aws-ssh-key
+        key: staging/build/multi-platform-controller/public-stage-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -57,7 +57,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-platform-controller/aws-account
+        key: staging/build/multi-platform-controller/public-stage-aws-account
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..1e40facc 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -12,23 +12,27 @@ data:
 
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
-  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.ami: ami-078a9bdcc8d8f2c9c
   dynamic.linux-arm64.instance-type: t4g.small
-  dynamic.linux-arm64.key-name: multi-platform-aws-stage
+  dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "launch-wizard-1"
+  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.spot-price: "0.010"
+  dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.ami: ami-06461039ebf1a764d
   dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: multi-platform-aws-stage
+  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "launch-wizard-1"
+  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.spot-price: "0.050"
+  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 7690af3c to 5013b309 on Thu May 16 10:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 60b8b09a..b36d2c5e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
+- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: baf4328df8388e37980bfd52ebebd9c6c72b13aa
+  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 536f668a..59719c28 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
+- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: baf4328df8388e37980bfd52ebebd9c6c72b13aa
+  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 7690af3c to 5013b309 on Thu May 16 10:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 60b8b09a..b36d2c5e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
+- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: baf4328df8388e37980bfd52ebebd9c6c72b13aa
+  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 536f668a..59719c28 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
+- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: baf4328df8388e37980bfd52ebebd9c6c72b13aa
+  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7690af3c/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1449c1449
<         image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f
---
>         image: quay.io/redhat-appstudio/integration-service:baf4328df8388e37980bfd52ebebd9c6c72b13aa
1540c1540
<             image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f
---
>             image: quay.io/redhat-appstudio/integration-service:baf4328df8388e37980bfd52ebebd9c6c72b13aa 
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
<h3>3: Development changes from 7690af3c to 5013b309 on Thu May 16 10:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 60b8b09a..b36d2c5e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
+- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: baf4328df8388e37980bfd52ebebd9c6c72b13aa
+  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 536f668a..59719c28 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=baf4328df8388e37980bfd52ebebd9c6c72b13aa
+- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: baf4328df8388e37980bfd52ebebd9c6c72b13aa
+  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7690af3c/development/components/integration/development/kustomize.out.yaml
1447c1447
<         image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f
---
>         image: quay.io/redhat-appstudio/integration-service:baf4328df8388e37980bfd52ebebd9c6c72b13aa
1541c1541
<             image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f
---
>             image: quay.io/redhat-appstudio/integration-service:baf4328df8388e37980bfd52ebebd9c6c72b13aa 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2680414d to 7690af3c on Thu May 16 07:31:37 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 6fd735a8..7be9af21 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=e7b9755fc51b701b9245ade9f38a7513f737d112
+- https://github.com/konflux-ci/project-controller/config/default?ref=66cfd2598248944e821b1124406b812711f58f94
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: e7b9755fc51b701b9245ade9f38a7513f737d112
+  newTag: 66cfd2598248944e821b1124406b812711f58f94
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 61d8e55b..851932b8 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=e7b9755fc51b701b9245ade9f38a7513f737d112
+  - https://github.com/konflux-ci/project-controller/config/default?ref=66cfd2598248944e821b1124406b812711f58f94
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: e7b9755fc51b701b9245ade9f38a7513f737d112
+  newTag: 66cfd2598248944e821b1124406b812711f58f94
 
 namespace: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 2680414d to 7690af3c on Thu May 16 07:31:37 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 6fd735a8..7be9af21 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=e7b9755fc51b701b9245ade9f38a7513f737d112
+- https://github.com/konflux-ci/project-controller/config/default?ref=66cfd2598248944e821b1124406b812711f58f94
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: e7b9755fc51b701b9245ade9f38a7513f737d112
+  newTag: 66cfd2598248944e821b1124406b812711f58f94
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 61d8e55b..851932b8 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=e7b9755fc51b701b9245ade9f38a7513f737d112
+  - https://github.com/konflux-ci/project-controller/config/default?ref=66cfd2598248944e821b1124406b812711f58f94
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: e7b9755fc51b701b9245ade9f38a7513f737d112
+  newTag: 66cfd2598248944e821b1124406b812711f58f94
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2680414d/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:66cfd2598248944e821b1124406b812711f58f94
---
>         image: quay.io/redhat-appstudio/project-controller:e7b9755fc51b701b9245ade9f38a7513f737d112 
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
<h3>4: Development changes from 2680414d to 7690af3c on Thu May 16 07:31:37 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 6fd735a8..7be9af21 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=e7b9755fc51b701b9245ade9f38a7513f737d112
+- https://github.com/konflux-ci/project-controller/config/default?ref=66cfd2598248944e821b1124406b812711f58f94
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: e7b9755fc51b701b9245ade9f38a7513f737d112
+  newTag: 66cfd2598248944e821b1124406b812711f58f94
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 61d8e55b..851932b8 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=e7b9755fc51b701b9245ade9f38a7513f737d112
+  - https://github.com/konflux-ci/project-controller/config/default?ref=66cfd2598248944e821b1124406b812711f58f94
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: e7b9755fc51b701b9245ade9f38a7513f737d112
+  newTag: 66cfd2598248944e821b1124406b812711f58f94
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2680414d/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:66cfd2598248944e821b1124406b812711f58f94
---
>         image: quay.io/redhat-appstudio/project-controller:e7b9755fc51b701b9245ade9f38a7513f737d112 
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
```
 
</details> 
<br> 


</div>
