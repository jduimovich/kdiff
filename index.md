# kustomize changes tracked by commits 
### This file generated at Sat Feb  3 20:01:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 38e866ba to ab6b2c06 on Fri Feb 2 17:20:33 2024 </h3>  
 
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
<h3>1: Staging changes from 38e866ba to ab6b2c06 on Fri Feb 2 17:20:33 2024 </h3>  
 
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
<h3>1: Development changes from 38e866ba to ab6b2c06 on Fri Feb 2 17:20:33 2024 </h3>  
 
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
<h3>2: Production changes from 181208be to 38e866ba on Fri Feb 2 11:47:49 2024 </h3>  
 
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
<h3>2: Staging changes from 181208be to 38e866ba on Fri Feb 2 11:47:49 2024 </h3>  
 
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
<h3>2: Development changes from 181208be to 38e866ba on Fri Feb 2 11:47:49 2024 </h3>  
 
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

<div>
<h3>3: Production changes from 9dc297ad to 181208be on Thu Feb 1 18:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index f9feffb3..cd952d4a 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9dc297ad to 181208be on Thu Feb 1 18:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index f9feffb3..cd952d4a 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
./commit-9dc297ad/staging/components/release/staging/kustomize.out.yaml
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 9dc297ad to 181208be on Thu Feb 1 18:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index f9feffb3..cd952d4a 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 736326d8 to 9dc297ad on Thu Feb 1 17:52:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index bdba02b7..2ce93472 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-736326d8/production/components/integration/production/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:b2787862f48a938cbbeb1385543b51264d10ff57
---
>         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
1139,1141d1138
<           protocol: TCP
<         - containerPort: 8081
<           name: probes 
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
<h3>4: Staging changes from 736326d8 to 9dc297ad on Thu Feb 1 17:52:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index bdba02b7..2ce93472 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
 
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
<h3>4: Development changes from 736326d8 to 9dc297ad on Thu Feb 1 17:52:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index bdba02b7..2ce93472 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
 
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
```
 
</details> 
<br> 


</div>
