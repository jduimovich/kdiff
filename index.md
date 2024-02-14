# kustomize changes tracked by commits 
### This file generated at Wed Feb 14 08:02:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 15573ccc to ef872bc9 on Tue Feb 13 15:08:18 2024 </h3>  
 
<details> 
<summary>Git Diff (240 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 4e4f1976..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
new file mode 100644
index 00000000..325c6e77
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -0,0 +1,26 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prd-m01.84db.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
+  enabled: false
+  capacityThresholds:
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
new file mode 100644
index 00000000..26cb9801
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -0,0 +1,78 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: false
+    capacityThresholds:
+      maxNumberOfSpacesPerMemberCluster:
+        member-stone-prd-m01.84db.p1.openshiftapps.com: 1000
+        member-stone-prd-rh01.pg1f.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
+      resourceCapacityThreshold:
+        defaultThreshold: 90
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: rhtap-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://sso.redhat.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "appstudio-stage-public",
+                  "clientId": "appstudio-stage-public",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://sso.redhat.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://sso.redhat.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
index 4e4f1976..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..852abb1d
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..71aac860
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -0,0 +1,75 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: false
+    capacityThresholds:
+      resourceCapacityThreshold:
+        defaultThreshold: 90
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: rhtap-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://rhtap.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 15573ccc to ef872bc9 on Tue Feb 13 15:08:18 2024 </h3>  
 
<details> 
<summary>Git Diff (240 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 4e4f1976..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
new file mode 100644
index 00000000..325c6e77
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -0,0 +1,26 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prd-m01.84db.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
+  enabled: false
+  capacityThresholds:
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
new file mode 100644
index 00000000..26cb9801
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -0,0 +1,78 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: false
+    capacityThresholds:
+      maxNumberOfSpacesPerMemberCluster:
+        member-stone-prd-m01.84db.p1.openshiftapps.com: 1000
+        member-stone-prd-rh01.pg1f.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
+      resourceCapacityThreshold:
+        defaultThreshold: 90
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: rhtap-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://sso.redhat.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "appstudio-stage-public",
+                  "clientId": "appstudio-stage-public",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://sso.redhat.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://sso.redhat.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
index 4e4f1976..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..852abb1d
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..71aac860
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -0,0 +1,75 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: false
+    capacityThresholds:
+      resourceCapacityThreshold:
+        defaultThreshold: 90
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: rhtap-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://rhtap.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
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
<h3>1: Development changes from 15573ccc to ef872bc9 on Tue Feb 13 15:08:18 2024 </h3>  
 
<details> 
<summary>Git Diff (240 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 4e4f1976..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
new file mode 100644
index 00000000..325c6e77
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -0,0 +1,26 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prd-m01.84db.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
+  enabled: false
+  capacityThresholds:
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
new file mode 100644
index 00000000..26cb9801
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -0,0 +1,78 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: false
+    capacityThresholds:
+      maxNumberOfSpacesPerMemberCluster:
+        member-stone-prd-m01.84db.p1.openshiftapps.com: 1000
+        member-stone-prd-rh01.pg1f.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
+      resourceCapacityThreshold:
+        defaultThreshold: 90
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: rhtap-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://sso.redhat.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "appstudio-stage-public",
+                  "clientId": "appstudio-stage-public",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://sso.redhat.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://sso.redhat.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
index 4e4f1976..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..852abb1d
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -0,0 +1,13 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+spec:
+  toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..71aac860
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -0,0 +1,75 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: false
+    capacityThresholds:
+      resourceCapacityThreshold:
+        defaultThreshold: 90
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: rhtap-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://rhtap.apps.rosa.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
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
<h3>2: Production changes from 312df1b0 to 15573ccc on Tue Feb 13 13:13:11 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index ba2d9569..a44151ff 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index b17f419a..0f8b7e5d 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 18ba289b..a710340b 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index e16b183f..ea9ec4bf 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 312df1b0 to 15573ccc on Tue Feb 13 13:13:11 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index ba2d9569..a44151ff 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index b17f419a..0f8b7e5d 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 18ba289b..a710340b 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index e16b183f..ea9ec4bf 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
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
<h3>2: Development changes from 312df1b0 to 15573ccc on Tue Feb 13 13:13:11 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index ba2d9569..a44151ff 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index b17f419a..0f8b7e5d 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 18ba289b..a710340b 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index e16b183f..ea9ec4bf 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 746d3cd4eabe29ff09d3f33b2f18d8b2496c760e
+    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
 
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
<h3>3: Production changes from bb50d531 to 312df1b0 on Tue Feb 13 12:10:18 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index a11835bb..f317c523 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (232 lines)</summary>  

``` 
./commit-bb50d531/production/components/integration/production/kustomize.out.yaml
12a13
>     service.beta.openshift.io/inject-cabundle: "true"
15a17,27
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: integration-service-webhook-service
>           namespace: integration-service
>           path: /convert
>       conversionReviewVersions:
>       - v1alpha1
>       - v1beta1
29a42,253
>     deprecated: true
>     deprecationWarning: The v1alpha1 version is deprecated and will be automatically
>       migrated to v1beta1
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: IntegrationTestScenarioSpec defines the desired state of
>               IntegrationScenario
>             properties:
>               application:
>                 description: Application that's associated with the IntegrationTestScenario
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               bundle:
>                 description: Tekton Bundle where to find the pipeline
>                 type: string
>               contexts:
>                 description: Contexts where this IntegrationTestScenario can be applied
>                 items:
>                   description: TestContext contains the name and values of a Test
>                     context
>                   properties:
>                     description:
>                       type: string
>                     name:
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment that will be utilized by the test pipeline
>                 properties:
>                   configuration:
>                     description: EnvironmentConfiguration contains Environment-specific
>                       configurations details, to be used when generating Component/Application
>                       GitOps repository resources.
>                     properties:
>                       env:
>                         description: Env is an array of standard environment vairables
>                         items:
>                           description: EnvVarPair describes environment variables
>                             to use for the component
>                           properties:
>                             name:
>                               description: Name is the environment variable name
>                               type: string
>                             value:
>                               description: Value is the environment variable value
>                               type: string
>                           required:
>                           - name
>                           - value
>                           type: object
>                         type: array
>                       target:
>                         description: Target is used to reference a DeploymentTargetClaim
>                           for a target Environment. The Environment controller uses
>                           the referenced DeploymentTargetClaim to access its bounded
>                           DeploymentTarget with cluster credential secret.
>                         properties:
>                           deploymentTargetClaim:
>                             description: DeploymentTargetClaimConfig specifies the
>                               DeploymentTargetClaim details for a given Environment.
>                             properties:
>                               claimName:
>                                 type: string
>                             required:
>                             - claimName
>                             type: object
>                         required:
>                         - deploymentTargetClaim
>                         type: object
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: 'DEPRECATED: EnvironmentType should no longer be
>                       used, and has no replacement. - It''s original purpose was to
>                       indicate whether an environment is POC/Non-POC, but these data
>                       were ultimately not required.'
>                     type: string
>                 required:
>                 - name
>                 - type
>                 type: object
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: PipelineParameter contains the name and values of a
>                     Tekton Pipeline parameter
>                   properties:
>                     name:
>                       type: string
>                     value:
>                       type: string
>                     values:
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               pipeline:
>                 description: Release Tekton Pipeline to execute
>                 type: string
>             required:
>             - application
>             - bundle
>             - pipeline
>             type: object
>           status:
>             description: IntegrationTestScenarioStatus defines the observed state
>               of IntegrationTestScenario
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             required:
>             - conditions
>             type: object
>         type: object
>     served: true
>     storage: false
>     subresources:
>       status: {}
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
904c1128
<         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49
---
>         image: quay.io/redhat-appstudio/integration-service:cad02429e3133890bcf92b2d7cc1f94233b8037e 
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
<h3>3: Staging changes from bb50d531 to 312df1b0 on Tue Feb 13 12:10:18 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index a11835bb..f317c523 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
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
<h3>3: Development changes from bb50d531 to 312df1b0 on Tue Feb 13 12:10:18 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index a11835bb..f317c523 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
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

<div>
<h3>4: Production changes from 92420793 to bb50d531 on Tue Feb 13 10:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index eaef189c..5fbf4ca5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 1ada6c9d..dacf1f3b 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 92420793 to bb50d531 on Tue Feb 13 10:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index eaef189c..5fbf4ca5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 1ada6c9d..dacf1f3b 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-92420793/staging/components/integration/staging/kustomize.out.yaml
904c904
<         image: quay.io/redhat-appstudio/integration-service:17d83481431c3747ba1ca80eed5b254afaf789e7
---
>         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49 
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
<h3>4: Development changes from 92420793 to bb50d531 on Tue Feb 13 10:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index eaef189c..5fbf4ca5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 1ada6c9d..dacf1f3b 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-92420793/development/components/integration/development/kustomize.out.yaml
904c904
<         image: quay.io/redhat-appstudio/integration-service:17d83481431c3747ba1ca80eed5b254afaf789e7
---
>         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49 
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
