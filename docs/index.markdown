# kustomize changes tracked by commits 
### This file generated at Wed Mar 15 10:05:57 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 20 commits


<div>
<h3>1: Staging changes from aa4d748 to 80485db on Wed Mar 15 09:56:49 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fa32a0f..7c9d124 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
+  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index 959a581..c38918a 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/build-service/staging/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
---
>         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 10:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:05:16 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 10:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:05:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from aa4d748 to 80485db on Wed Mar 15 09:56:49 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fa32a0f..7c9d124 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
+  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index 959a581..c38918a 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/build-service/development/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
---
>         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 10:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 10:04:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:05:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 10:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 575c8b1 to aa4d748 on Wed Mar 15 08:12:40 2023 </h3>  
 
<details> 
<summary>Git Diff (1605 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index c649254..8482994 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -7,126 +7,616 @@ spec:
     matchLabels:
       appstudio.redhat.com/keycloak: dev
   realm:
+    id: hac-sso
+    realm: redhat-external
+    displayName: Redhat External for HAC
     accessTokenLifespan: 7200
+    accessTokenLifespanForImplicitFlow: 900
+    enabled: true
+    sslRequired: external
+    registrationAllowed: false
+    registrationEmailAsUsername: false
+    rememberMe: false
+    verifyEmail: false
+    loginWithEmailAllowed: true
+    duplicateEmailsAllowed: false
+    resetPasswordAllowed: false
+    editUsernameAllowed: false
+    bruteForceProtected: false
+    permanentLockout: false
+    maxFailureWaitSeconds: 900
+    minimumQuickLoginWaitSeconds: 60
+    waitIncrementSeconds: 60
+    quickLoginCheckMilliSeconds: 1000
+    maxDeltaTimeSeconds: 43200
+    failureFactor: 30
+    roles:
+      realm:
+        - id: a8d38f0f-7d83-41b7-8236-55998c531760
+          name: default-roles-redhat-external
+          description: ${role_default-roles}
+          composite: true
+          composites:
+            realm:
+              - offline_access
+              - uma_authorization
+            client:
+              account:
+                - manage-account
+                - view-profile
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
+          name: uma_authorization
+          description: ${role_uma_authorization}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
+          name: offline_access
+          description: ${role_offline-access}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+      client:
+        cloud-services: []
+        realm-management:
+          - id: 47a7732c-f371-4cc1-935d-1c517614eb74
+            name: manage-identity-providers
+            description: ${role_manage-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 92dac8f6-33df-4375-8d47-302065b0c47c
+            name: view-events
+            description: ${role_view-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
+            name: view-users
+            description: ${role_view-users}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-groups
+                  - query-users
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
+            name: manage-authorization
+            description: ${role_manage-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
+            name: view-clients
+            description: ${role_view-clients}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-clients
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
+            name: impersonation
+            description: ${role_impersonation}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
+            name: create-client
+            description: ${role_create-client}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
+            name: query-clients
+            description: ${role_query-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
+            name: manage-realm
+            description: ${role_manage-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
+            name: query-users
+            description: ${role_query-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
+            name: manage-clients
+            description: ${role_manage-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
+            name: manage-users
+            description: ${role_manage-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: b1b19c8d-fd64-4960-a409-dafc455d504e
+            name: query-groups
+            description: ${role_query-groups}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
+            name: realm-admin
+            description: ${role_realm-admin}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - manage-identity-providers
+                  - view-events
+                  - view-users
+                  - view-clients
+                  - manage-authorization
+                  - impersonation
+                  - create-client
+                  - query-clients
+                  - manage-realm
+                  - query-users
+                  - manage-clients
+                  - manage-users
+                  - query-groups
+                  - view-realm
+                  - query-realms
+                  - view-identity-providers
+                  - view-authorization
+                  - manage-events
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
+            name: view-realm
+            description: ${role_view-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
+            name: query-realms
+            description: ${role_query-realms}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: e1403844-fc62-4522-8181-64a0395a9608
+            name: view-identity-providers
+            description: ${role_view-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
+            name: manage-events
+            description: ${role_manage-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 1bab32ce-418a-4779-875a-aa550bc5720e
+            name: view-authorization
+            description: ${role_view-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+        security-admin-console: []
+        admin-cli: []
+        account-console: []
+        broker:
+          - id: 9b3c893f-3860-46d7-82c6-4e6066380871
+            name: read-token
+            description: ${role_read-token}
+            composite: false
+            clientRole: true
+            containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+            attributes: {}
+        account:
+          - id: 62cc2451-60f3-4420-ab11-106280ea5127
+            name: manage-account
+            description: ${role_manage-account}
+            composite: true
+            composites:
+              client:
+                account:
+                  - manage-account-links
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 8a7a5a05-e697-445e-8dee-122227311297
+            name: delete-account
+            description: ${role_delete-account}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
+            name: view-consent
+            description: ${role_view-consent}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
+            name: view-applications
+            description: ${role_view-applications}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
+            name: manage-consent
+            description: ${role_manage-consent}
+            composite: true
+            composites:
+              client:
+                account:
+                  - view-consent
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
+            name: manage-account-links
+            description: ${role_manage-account-links}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
+            name: view-profile
+            description: ${role_view-profile}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+    defaultRole:
+      id: a8d38f0f-7d83-41b7-8236-55998c531760
+      name: default-roles-redhat-external
+      description: ${role_default-roles}
+      composite: true
+      clientRole: false
+      containerId: hac-sso
+    otpPolicyType: totp
+    otpPolicyAlgorithm: HmacSHA1
+    otpPolicyInitialCounter: 0
+    otpPolicyDigits: 6
+    otpPolicyLookAheadWindow: 1
+    otpPolicyPeriod: 30
+    otpSupportedApplications:
+      - FreeOTP
+      - Google Authenticator
+    scopeMappings:
+      - clientScope: offline_access
+        roles:
+          - offline_access
+    clientScopeMappings:
+      account:
+        - client: account-console
+          roles:
+            - manage-account
     clients:
-      - enabled: true
+      - id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+        clientId: account
+        name: ${client_account}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
         redirectUris:
-          - '*'
-        clientId: cloud-services
-        name: cloud-services
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
         implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
         publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 664b265b-5730-4e51-aee1-fa1aa9427323
+        clientId: account-console
+        name: ${client_account-console}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
         standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        protocolMappers:
+          - id: fab196f4-8200-41eb-8d63-173256763e71
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
+        clientId: admin-cli
+        name: ${client_admin-cli}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: false
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: true
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+        clientId: broker
+        name: ${client_broker}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
+        clientId: cloud-services
+        name: cloud-services
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - '*'
         webOrigins:
           - '*'
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
         directAccessGrantsEnabled: true
-        defaultClientScopes: 
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          saml.force.post.binding: "false"
+          saml.multivalued.roles: "false"
+          frontchannel.logout.session.required: "false"
+          oauth2.device.authorization.grant.enabled: "false"
+          backchannel.logout.revoke.offline.tokens: "false"
+          saml.server.signature.keyinfo.ext: "false"
+          use.refresh.tokens: "true"
+          oidc.ciba.grant.enabled: "false"
+          backchannel.logout.session.required: "true"
+          client_credentials.use_refresh_token: "false"
+          require.pushed.authorization.requests: "false"
+          saml.client.signature: "false"
+          saml.allow.ecp.flow: "false"
+          id.token.as.detached.signature: "false"
+          saml.assertion.signature: "false"
+          saml.encrypt: "false"
+          saml.server.signature: "false"
+          exclude.session.state.from.auth.response: "false"
+          saml.artifact.binding: "false"
+          saml_force_name_id_format: "false"
+          acr.loa.map: '{}'
+          tls.client.certificate.bound.access.tokens: "false"
+          saml.authnstatement: "false"
+          display.on.consent.screen: "false"
+          token.response.type.bearer.lower-case: "false"
+          saml.onetimeuse.condition: "false"
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: true
+        nodeReRegistrationTimeout: -1
+        defaultClientScopes:
+          - web-origins
+          - acr
           - nameandterms
-          - email
           - profile
           - roles
-          - web-origins
+          - email
         optionalClientScopes:
           - address
-          - microprofile-jwt
+          - phone
           - offline_access
+          - microprofile-jwt
+      - id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+        clientId: realm-management
+        name: ${client_realm-management}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
           - phone
-    clientScopes:
-      - name: role_list
-        description: SAML role list
-        protocol: saml
-        attributes:
-          consent.screen.text: ${samlRoleListScopeConsentText}
-          display.on.consent.screen: "true"
-        protocolMappers:
-          - name: role list
-            protocol: saml
-            protocolMapper: saml-role-list-mapper
-            consentRequired: false
-            config:
-              single: "false"
-              attribute.nameformat: Basic
-              attribute.name: Role
-      - name: phone
-        description: 'OpenID Connect built-in scope: phone'
+          - offline_access
+          - microprofile-jwt
+      - id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
+        clientId: security-admin-console
+        name: ${client_security-admin-console}
+        rootUrl: ${authAdminUrl}
+        baseUrl: /admin/redhat-external/console/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /admin/redhat-external/console/*
+        webOrigins:
+          - +
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
         attributes:
-          include.in.token.scope: "true"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${phoneScopeConsentText}
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
         protocolMappers:
-          - name: phone number verified
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
-            consentRequired: false
-            config:
-              userinfo.token.claim: "true"
-              user.attribute: phoneNumberVerified
-              id.token.claim: "true"
-              access.token.claim: "true"
-              claim.name: phone_number_verified
-              jsonType.label: boolean
-          - name: phone number
+          - id: f0d04249-2f8f-4069-8566-4f3aa35e7690
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: phoneNumber
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: phone_number
-              jsonType.label: String
-      - name: roles
-        description: OpenID Connect scope for add user roles to the access token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${rolesScopeConsentText}
-        protocolMappers:
-          - name: realm roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: realm_access.roles
-              jsonType.label: String
-              multivalued: "true"
-          - name: client roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-client-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: resource_access.${client_id}.roles
+              claim.name: locale
               jsonType.label: String
-              multivalued: "true"
-          - name: audience resolve
-            protocol: openid-connect
-            protocolMapper: oidc-audience-resolve-mapper
-            consentRequired: false
-            config: {}
-      - name: acr
-        description: OpenID Connect scope for add acr (authentication context class reference) to the token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "false"
-        protocolMappers:
-          - id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
-            name: acr loa level
-            protocol: openid-connect
-            protocolMapper: oidc-acr-mapper
-            consentRequired: false
-            config:
-              id.token.claim: "true"
-              access.token.claim: "true"
-      - name: web-origins
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+    clientScopes:
+      - id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
+        name: web-origins
         description: OpenID Connect scope for add allowed web origins to the access token
         protocol: openid-connect
         attributes:
@@ -134,71 +624,71 @@ spec:
           display.on.consent.screen: "false"
           consent.screen.text: ""
         protocolMappers:
-          - id: f57e7fed-4377-43e1-a2fa-0ef938735371
+          - id: d54340bc-16f0-45a4-9464-436ef7583a81
             name: allowed web origins
             protocol: openid-connect
             protocolMapper: oidc-allowed-origins-mapper
             consentRequired: false
             config: {}
-      - name: offline_access
-        description: 'OpenID Connect built-in scope: offline_access'
-        protocol: openid-connect
-        attributes:
-          consent.screen.text: ${offlineAccessScopeConsentText}
-          display.on.consent.screen: "true"
-      - name: microprofile-jwt
-        description: Microprofile - JWT built-in scope
+      - id: 172816fd-8450-4e82-b33a-89f9181373a4
+        name: phone
+        description: 'OpenID Connect built-in scope: phone'
         protocol: openid-connect
         attributes:
           include.in.token.scope: "true"
-          display.on.consent.screen: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${phoneScopeConsentText}
         protocolMappers:
-          - name: groups
+          - id: 02c09b15-1210-4a6c-b6e4-c2452031712a
+            name: phone number
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
-              multivalued: "true"
-              user.attribute: foo
+              userinfo.token.claim: "true"
+              user.attribute: phoneNumber
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: groups
+              claim.name: phone_number
               jsonType.label: String
-          - name: upn
+          - id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
+            name: phone number verified
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: phoneNumberVerified
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: upn
-              jsonType.label: String
-      - name: address
-        description: 'OpenID Connect built-in scope: address'
-        protocol: openid-connect
+              claim.name: phone_number_verified
+              jsonType.label: boolean
+      - id: c7d788d8-5836-4500-b4a9-083c2f6c2960
+        name: role_list
+        description: SAML role list
+        protocol: saml
         attributes:
-          include.in.token.scope: "true"
+          consent.screen.text: ${samlRoleListScopeConsentText}
           display.on.consent.screen: "true"
-          consent.screen.text: ${addressScopeConsentText}
         protocolMappers:
-          - id: 211470af-2420-4127-a5b7-e38d3f50920a
-            name: address
-            protocol: openid-connect
-            protocolMapper: oidc-address-mapper
+          - id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
+            name: role list
+            protocol: saml
+            protocolMapper: saml-role-list-mapper
             consentRequired: false
             config:
-              user.attribute.formatted: formatted
-              user.attribute.country: country
-              user.attribute.postal_code: postal_code
-              userinfo.token.claim: "true"
-              user.attribute.street: street
-              id.token.claim: "true"
-              user.attribute.region: region
-              access.token.claim: "true"
-              user.attribute.locality: locality
-      - name: profile
+              single: "false"
+              attribute.nameformat: Basic
+              attribute.name: Role
+      - id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
+        name: offline_access
+        description: 'OpenID Connect built-in scope: offline_access'
+        protocol: openid-connect
+        attributes:
+          consent.screen.text: ${offlineAccessScopeConsentText}
+          display.on.consent.screen: "true"
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
         description: 'OpenID Connect built-in scope: profile'
         protocol: openid-connect
         attributes:
@@ -206,158 +696,173 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${profileScopeConsentText}
         protocolMappers:
-          - name: picture
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: picture
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: picture
+              claim.name: locale
               jsonType.label: String
-          - name: zoneinfo
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-full-name-mapper
             consentRequired: false
             config:
-              userinfo.token.claim: "true"
-              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: zoneinfo
-              jsonType.label: String
-          - name: birthdate
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: birthdate
+              user.attribute: lastName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: birthdate
+              claim.name: family_name
               jsonType.label: String
-          - name: given name
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: firstName
+              user.attribute: updatedAt
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: given_name
-              jsonType.label: String
-          - name: website
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: website
+              user.attribute: picture
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: website
+              claim.name: picture
               jsonType.label: String
-          - name: username
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: nickname
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: preferred_username
+              claim.name: nickname
               jsonType.label: String
-          - name: full name
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
             protocol: openid-connect
-            protocolMapper: oidc-full-name-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
+              userinfo.token.claim: "true"
+              user.attribute: website
               id.token.claim: "true"
               access.token.claim: "true"
-              userinfo.token.claim: "true"
-          - name: middle name
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: middleName
+              user.attribute: profile
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: middle_name
+              claim.name: profile
               jsonType.label: String
-          - name: gender
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: gender
+              user.attribute: username
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: gender
+              claim.name: preferred_username
               jsonType.label: String
-          - name: family name
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: lastName
+              user.attribute: firstName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: family_name
+              claim.name: given_name
               jsonType.label: String
-          - name: updated at
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: updatedAt
+              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: updated_at
-              jsonType.label: long
-          - name: profile
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: profile
+              user.attribute: gender
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: profile
+              claim.name: gender
               jsonType.label: String
-          - name: locale
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: locale
+              user.attribute: birthdate
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: locale
+              claim.name: birthdate
               jsonType.label: String
-          - name: nickname
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: nickname
+              user.attribute: middleName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: nickname
+              claim.name: middle_name
               jsonType.label: String
-      - name: email
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
         description: 'OpenID Connect built-in scope: email'
         protocol: openid-connect
         attributes:
@@ -365,7 +870,8 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${emailScopeConsentText}
         protocolMappers:
-          - name: email
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -376,7 +882,8 @@ spec:
               access.token.claim: "true"
               claim.name: email
               jsonType.label: String
-          - name: email verified
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -387,13 +894,529 @@ spec:
               access.token.claim: "true"
               claim.name: email_verified
               jsonType.label: boolean
-      - name: nameandterms
+      - id: ed5b578d-d48f-4023-bc23-892a76d018df
+        name: roles
+        description: OpenID Connect scope for add user roles to the access token
         protocol: openid-connect
-    displayName: Redhat External for HAC
-    enabled: true
-    id: hac-sso
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${rolesScopeConsentText}
+        protocolMappers:
+          - id: 569264db-b779-49c9-a9b0-cfa0f8c249db
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+          - id: 6d2e188f-4022-474e-84ad-19a84e054fc5
+            name: realm roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: realm_access.roles
+              jsonType.label: String
+              multivalued: "true"
+          - id: f7b77092-577d-4492-b803-a3cdf2a436fe
+            name: client roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-client-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: resource_access.${client_id}.roles
+              jsonType.label: String
+              multivalued: "true"
+      - id: b2240814-1831-48d1-9682-7eb5231bbc76
+        name: acr
+        description: OpenID Connect scope for add acr (authentication context class reference) to the token
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: bc946f16-8378-4edc-9137-f5d5db96da88
+            name: acr loa level
+            protocol: openid-connect
+            protocolMapper: oidc-acr-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+      - id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
+        name: microprofile-jwt
+        description: Microprofile - JWT built-in scope
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: ca164b36-12dc-47fc-b0e6-e40949a5042e
+            name: upn
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: upn
+              jsonType.label: String
+          - id: 4314b495-934a-4948-b9ae-fc9c17354cf0
+            name: groups
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              multivalued: "true"
+              user.attribute: foo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: groups
+              jsonType.label: String
+      - id: 710757d5-c717-44de-ad25-2133cf75b0a6
+        name: nameandterms
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+      - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
+        name: address
+        description: 'OpenID Connect built-in scope: address'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${addressScopeConsentText}
+        protocolMappers:
+          - id: 8bf14f81-76b3-4970-9993-a270b52ae28a
+            name: address
+            protocol: openid-connect
+            protocolMapper: oidc-address-mapper
+            consentRequired: false
+            config:
+              user.attribute.formatted: formatted
+              user.attribute.country: country
+              user.attribute.postal_code: postal_code
+              userinfo.token.claim: "true"
+              user.attribute.street: street
+              id.token.claim: "true"
+              user.attribute.region: region
+              access.token.claim: "true"
+              user.attribute.locality: locality
+    defaultDefaultClientScopes:
+      - role_list
+      - profile
+      - email
+      - roles
+      - web-origins
+      - acr
+    smtpServer: {}
     loginTheme: rh-sso
-    realm: redhat-external
+    eventsEnabled: false
+    eventsListeners:
+      - jboss-logging
+    enabledEventTypes: []
+    adminEventsEnabled: false
+    adminEventsDetailsEnabled: false
+    identityProviders: []
+    identityProviderMappers: []
+    internationalizationEnabled: false
+    supportedLocales: []
+    authenticationFlows:
+      - id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
+        alias: Account verification options
+        description: Method with which to verity the existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-email-verification
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Verify Existing Account by Re-authentication
+            userSetupAllowed: false
+      - id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
+        alias: Authentication Options
+        description: Authentication options.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: basic-auth
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: basic-auth-otp
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 30
+            userSetupAllowed: false
+      - id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
+        alias: Browser - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 87917dac-6623-4091-a031-f669c00727a0
+        alias: Direct Grant - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
+        alias: First broker login - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 1c4a841c-8127-42c8-92b1-70ce02485b23
+        alias: Handle Existing Account
+        description: Handle what to do if there is existing account with same email/username like authenticated identity provider
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-confirm-link
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Account verification options
+            userSetupAllowed: false
+      - id: 55164d9f-4366-464c-88d2-90bfd2261711
+        alias: Reset - Conditional OTP
+        description: Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 7a328721-4ecf-4195-b3eb-d43710806436
+        alias: User creation or linking
+        description: Flow for the existing/non-existing user alternatives
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: create unique user config
+            authenticator: idp-create-user-if-unique
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Handle Existing Account
+            userSetupAllowed: false
+      - id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
+        alias: Verify Existing Account by Re-authentication
+        description: Reauthentication of existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: First broker login - Conditional OTP
+            userSetupAllowed: false
+      - id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
+        alias: browser
+        description: browser based authentication
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-cookie
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: identity-provider-redirector
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 25
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 30
+            flowAlias: forms
+            userSetupAllowed: false
+      - id: e845c181-be95-4661-bf17-ad8930302e2d
+        alias: clients
+        description: Base authentication for clients
+        providerId: client-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: client-secret
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: client-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: client-secret-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 30
+            userSetupAllowed: false
+          - authenticator: client-x509
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 40
+            userSetupAllowed: false
+      - id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
+        alias: direct grant
+        description: OpenID Connect Resource Owner Grant
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: direct-grant-validate-username
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 30
+            flowAlias: Direct Grant - Conditional OTP
+            userSetupAllowed: false
+      - id: f5aa97fe-9f57-4358-bcff-99259d556744
+        alias: docker auth
+        description: Used by Docker clients to authenticate against the IDP
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: docker-http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+      - id: 4cac59c3-abc3-461f-9c98-0af10402304f
+        alias: first broker login
+        description: Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: review profile config
+            authenticator: idp-review-profile
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: User creation or linking
+            userSetupAllowed: false
+      - id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
+        alias: forms
+        description: Username, password, otp and other auth forms.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: Browser - Conditional OTP
+            userSetupAllowed: false
+      - id: 4e344966-4bca-47ac-a450-3251f9cf16db
+        alias: http challenge
+        description: An authentication flow based on challenge-response HTTP Authentication Schemes
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: no-cookie-redirect
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Authentication Options
+            userSetupAllowed: false
+      - id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
+        alias: registration
+        description: registration flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-page-form
+            authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 10
+            flowAlias: registration form
+            userSetupAllowed: false
+      - id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
+        alias: registration form
+        description: registration form
+        providerId: form-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-user-creation
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: registration-profile-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 40
+            userSetupAllowed: false
+          - authenticator: registration-password-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 50
+            userSetupAllowed: false
+          - authenticator: registration-recaptcha-action
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 60
+            userSetupAllowed: false
+      - id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
+        alias: reset credentials
+        description: Reset credentials for a user if they forgot their password or something
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: reset-credentials-choose-user
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-credential-email
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: reset-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 30
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 40
+            flowAlias: Reset - Conditional OTP
+            userSetupAllowed: false
+      - id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
+        alias: saml ecp
+        description: SAML ECP Profile Authentication Flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+    authenticatorConfig:
+      - id: 651040d9-3852-4081-8cb3-665474382f87
+        alias: create unique user config
+        config:
+          require.password.update.after.registration: "false"
+      - id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
+        alias: review profile config
+        config:
+          update.profile.on.first.login: missing
+    userManagedAccessAllowed: false
     users:
       - credentials:
           - type: password 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1575 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/dev-sso/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/dev-sso/kustomize.out
26,426d25
<     accessTokenLifespanForImplicitFlow: 900
<     adminEventsDetailsEnabled: false
<     adminEventsEnabled: false
<     authenticationFlows:
<     - alias: Account verification options
<       authenticationExecutions:
<       - authenticator: idp-email-verification
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Verify Existing Account by Re-authentication
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Method with which to verity the existing account
<       id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
<       providerId: basic-flow
<       topLevel: false
<     - alias: Authentication Options
<       authenticationExecutions:
<       - authenticator: basic-auth
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: basic-auth-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 30
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: Authentication options.
<       id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
<       providerId: basic-flow
<       topLevel: false
<     - alias: Browser - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
<       providerId: basic-flow
<       topLevel: false
<     - alias: Direct Grant - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 87917dac-6623-4091-a031-f669c00727a0
<       providerId: basic-flow
<       topLevel: false
<     - alias: First broker login - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
<       providerId: basic-flow
<       topLevel: false
<     - alias: Handle Existing Account
<       authenticationExecutions:
<       - authenticator: idp-confirm-link
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Account verification options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Handle what to do if there is existing account with same email/username
<         like authenticated identity provider
<       id: 1c4a841c-8127-42c8-92b1-70ce02485b23
<       providerId: basic-flow
<       topLevel: false
<     - alias: Reset - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP should be reset or not. Set to REQUIRED
<         to force.
<       id: 55164d9f-4366-464c-88d2-90bfd2261711
<       providerId: basic-flow
<       topLevel: false
<     - alias: User creation or linking
<       authenticationExecutions:
<       - authenticator: idp-create-user-if-unique
<         authenticatorConfig: create unique user config
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Handle Existing Account
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow for the existing/non-existing user alternatives
<       id: 7a328721-4ecf-4195-b3eb-d43710806436
<       providerId: basic-flow
<       topLevel: false
<     - alias: Verify Existing Account by Re-authentication
<       authenticationExecutions:
<       - authenticator: idp-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: First broker login - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reauthentication of existing account
<       id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
<       providerId: basic-flow
<       topLevel: false
<     - alias: browser
<       authenticationExecutions:
<       - authenticator: auth-cookie
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: identity-provider-redirector
<         authenticatorFlow: false
<         priority: 25
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: forms
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: browser based authentication
<       id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
<       providerId: basic-flow
<       topLevel: true
<     - alias: clients
<       authenticationExecutions:
<       - authenticator: client-secret
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-jwt
<         authenticatorFlow: false
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-secret-jwt
<         authenticatorFlow: false
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-x509
<         authenticatorFlow: false
<         priority: 40
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Base authentication for clients
<       id: e845c181-be95-4661-bf17-ad8930302e2d
<       providerId: client-flow
<       topLevel: true
<     - alias: direct grant
<       authenticationExecutions:
<       - authenticator: direct-grant-validate-username
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-password
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Direct Grant - Conditional OTP
<         priority: 30
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: OpenID Connect Resource Owner Grant
<       id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
<       providerId: basic-flow
<       topLevel: true
<     - alias: docker auth
<       authenticationExecutions:
<       - authenticator: docker-http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Used by Docker clients to authenticate against the IDP
<       id: f5aa97fe-9f57-4358-bcff-99259d556744
<       providerId: basic-flow
<       topLevel: true
<     - alias: first broker login
<       authenticationExecutions:
<       - authenticator: idp-review-profile
<         authenticatorConfig: review profile config
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: User creation or linking
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Actions taken after first broker login with identity provider account,
<         which is not yet linked to any Keycloak account
<       id: 4cac59c3-abc3-461f-9c98-0af10402304f
<       providerId: basic-flow
<       topLevel: true
<     - alias: forms
<       authenticationExecutions:
<       - authenticator: auth-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Browser - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Username, password, otp and other auth forms.
<       id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
<       providerId: basic-flow
<       topLevel: false
<     - alias: http challenge
<       authenticationExecutions:
<       - authenticator: no-cookie-redirect
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Authentication Options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: An authentication flow based on challenge-response HTTP Authentication
<         Schemes
<       id: 4e344966-4bca-47ac-a450-3251f9cf16db
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration
<       authenticationExecutions:
<       - authenticator: registration-page-form
<         authenticatorFlow: true
<         flowAlias: registration form
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration flow
<       id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration form
<       authenticationExecutions:
<       - authenticator: registration-user-creation
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-profile-action
<         authenticatorFlow: false
<         priority: 40
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-password-action
<         authenticatorFlow: false
<         priority: 50
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-recaptcha-action
<         authenticatorFlow: false
<         priority: 60
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration form
<       id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
<       providerId: form-flow
<       topLevel: false
<     - alias: reset credentials
<       authenticationExecutions:
<       - authenticator: reset-credentials-choose-user
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-credential-email
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-password
<         authenticatorFlow: false
<         priority: 30
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Reset - Conditional OTP
<         priority: 40
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reset credentials for a user if they forgot their password or something
<       id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
<       providerId: basic-flow
<       topLevel: true
<     - alias: saml ecp
<       authenticationExecutions:
<       - authenticator: http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: SAML ECP Profile Authentication Flow
<       id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
<       providerId: basic-flow
<       topLevel: true
<     authenticatorConfig:
<     - alias: create unique user config
<       config:
<         require.password.update.after.registration: "false"
<       id: 651040d9-3852-4081-8cb3-665474382f87
<     - alias: review profile config
<       config:
<         update.profile.on.first.login: missing
<       id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
<     bruteForceProtected: false
<     clientScopeMappings:
<       account:
<       - client: account-console
<         roles:
<         - manage-account
429,436c28,32
<         consent.screen.text: ""
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add allowed web origins to the access
<         token
<       id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
<       name: web-origins
<       protocol: openid-connect
---
>         consent.screen.text: ${samlRoleListScopeConsentText}
>         display.on.consent.screen: "true"
>       description: SAML role list
>       name: role_list
>       protocol: saml
438c34,37
<       - config: {}
---
>       - config:
>           attribute.name: Role
>           attribute.nameformat: Basic
>           single: "false"
440,443c39,41
<         id: d54340bc-16f0-45a4-9464-436ef7583a81
<         name: allowed web origins
<         protocol: openid-connect
<         protocolMapper: oidc-allowed-origins-mapper
---
>         name: role list
>         protocol: saml
>         protocolMapper: saml-role-list-mapper
449d46
<       id: 172816fd-8450-4e82-b33a-89f9181373a4
455c52
<           claim.name: phone_number
---
>           claim.name: phone_number_verified
457,458c54,55
<           jsonType.label: String
<           user.attribute: phoneNumber
---
>           jsonType.label: boolean
>           user.attribute: phoneNumberVerified
461,462c58
<         id: 02c09b15-1210-4a6c-b6e4-c2452031712a
<         name: phone number
---
>         name: phone number verified
467c63
<           claim.name: phone_number_verified
---
>           claim.name: phone_number
469,470c65,66
<           jsonType.label: boolean
<           user.attribute: phoneNumberVerified
---
>           jsonType.label: String
>           user.attribute: phoneNumber
473,474c69
<         id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
<         name: phone number verified
---
>         name: phone number
478c73
<         consent.screen.text: ${samlRoleListScopeConsentText}
---
>         consent.screen.text: ${rolesScopeConsentText}
480,483c75,78
<       description: SAML role list
<       id: c7d788d8-5836-4500-b4a9-083c2f6c2960
<       name: role_list
<       protocol: saml
---
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add user roles to the access token
>       name: roles
>       protocol: openid-connect
486,488c81,85
<           attribute.name: Role
<           attribute.nameformat: Basic
<           single: "false"
---
>           access.token.claim: "true"
>           claim.name: realm_access.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
490,493c87,135
<         id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
<         name: role list
<         protocol: saml
<         protocolMapper: saml-role-list-mapper
---
>         name: realm roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-realm-role-mapper
>       - config:
>           access.token.claim: "true"
>           claim.name: resource_access.${client_id}.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
>         consentRequired: false
>         name: client roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-client-role-mapper
>       - config: {}
>         consentRequired: false
>         name: audience resolve
>         protocol: openid-connect
>         protocolMapper: oidc-audience-resolve-mapper
>     - attributes:
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add acr (authentication context class
>         reference) to the token
>       name: acr
>       protocol: openid-connect
>       protocolMappers:
>       - config:
>           access.token.claim: "true"
>           id.token.claim: "true"
>         consentRequired: false
>         id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
>         name: acr loa level
>         protocol: openid-connect
>         protocolMapper: oidc-acr-mapper
>     - attributes:
>         consent.screen.text: ""
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add allowed web origins to the access
>         token
>       name: web-origins
>       protocol: openid-connect
>       protocolMappers:
>       - config: {}
>         consentRequired: false
>         id: f57e7fed-4377-43e1-a2fa-0ef938735371
>         name: allowed web origins
>         protocol: openid-connect
>         protocolMapper: oidc-allowed-origins-mapper
498d139
<       id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
502,503c143
<         consent.screen.text: ${profileScopeConsentText}
<         display.on.consent.screen: "true"
---
>         display.on.consent.screen: "false"
505,507c145,146
<       description: 'OpenID Connect built-in scope: profile'
<       id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
<       name: profile
---
>       description: Microprofile - JWT built-in scope
>       name: microprofile-jwt
512c151
<           claim.name: locale
---
>           claim.name: groups
515,516c154,155
<           user.attribute: locale
<           userinfo.token.claim: "true"
---
>           multivalued: "true"
>           user.attribute: foo
518,519c157
<         id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
<         name: locale
---
>         name: groups
521c159
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-realm-role-mapper
523a162
>           claim.name: upn
524a164,165
>           jsonType.label: String
>           user.attribute: username
527,528c168
<         id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
<         name: full name
---
>         name: upn
530c170,178
<         protocolMapper: oidc-full-name-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - attributes:
>         consent.screen.text: ${addressScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: address'
>       name: address
>       protocol: openid-connect
>       protocolMappers:
533d180
<           claim.name: family_name
535,536c182,187
<           jsonType.label: String
<           user.attribute: lastName
---
>           user.attribute.country: country
>           user.attribute.formatted: formatted
>           user.attribute.locality: locality
>           user.attribute.postal_code: postal_code
>           user.attribute.region: region
>           user.attribute.street: street
539,540c190,191
<         id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
<         name: family name
---
>         id: 211470af-2420-4127-a5b7-e38d3f50920a
>         name: address
542c193,201
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-address-mapper
>     - attributes:
>         consent.screen.text: ${profileScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: profile'
>       name: profile
>       protocol: openid-connect
>       protocolMappers:
545c204
<           claim.name: updated_at
---
>           claim.name: picture
547,548c206,207
<           jsonType.label: long
<           user.attribute: updatedAt
---
>           jsonType.label: String
>           user.attribute: picture
551,552c210
<         id: 71c6caff-3f17-47db-8dc1-42f9af01832e
<         name: updated at
---
>         name: picture
557c215
<           claim.name: picture
---
>           claim.name: zoneinfo
560c218
<           user.attribute: picture
---
>           user.attribute: zoneinfo
563,564c221
<         id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
<         name: picture
---
>         name: zoneinfo
569c226
<           claim.name: nickname
---
>           claim.name: birthdate
572c229
<           user.attribute: nickname
---
>           user.attribute: birthdate
575,576c232
<         id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
<         name: nickname
---
>         name: birthdate
581c237
<           claim.name: website
---
>           claim.name: given_name
584c240
<           user.attribute: website
---
>           user.attribute: firstName
587,588c243
<         id: f8167604-073d-47ea-9fd1-6ec754ce5c49
<         name: website
---
>         name: given name
590c245
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
593c248
<           claim.name: profile
---
>           claim.name: website
596c251
<           user.attribute: profile
---
>           user.attribute: website
599,600c254
<         id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
<         name: profile
---
>         name: website
611d264
<         id: 463f80df-1554-4f0b-889f-1e6f2308ba17
617d269
<           claim.name: given_name
619,620d270
<           jsonType.label: String
<           user.attribute: firstName
623,624c273
<         id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
<         name: given name
---
>         name: full name
626c275
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-full-name-mapper
629c278
<           claim.name: zoneinfo
---
>           claim.name: middle_name
632c281
<           user.attribute: zoneinfo
---
>           user.attribute: middleName
635,636c284
<         id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
<         name: zoneinfo
---
>         name: middle name
647d294
<         id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
653c300
<           claim.name: birthdate
---
>           claim.name: family_name
656c303
<           user.attribute: birthdate
---
>           user.attribute: lastName
659,660c306
<         id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
<         name: birthdate
---
>         name: family name
662c308
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
665c311
<           claim.name: middle_name
---
>           claim.name: updated_at
667,668c313,314
<           jsonType.label: String
<           user.attribute: middleName
---
>           jsonType.label: long
>           user.attribute: updatedAt
671,672c317
<         id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
<         name: middle name
---
>         name: updated at
675,683d319
<     - attributes:
<         consent.screen.text: ${emailScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: email'
<       id: 45e1900d-2199-45fc-9028-a39497a6cdd5
<       name: email
<       protocol: openid-connect
<       protocolMappers:
686c322
<           claim.name: email
---
>           claim.name: profile
689c325
<           user.attribute: email
---
>           user.attribute: profile
692,693c328
<         id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
<         name: email
---
>         name: profile
695c330
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
698c333
<           claim.name: email_verified
---
>           claim.name: locale
700,725d334
<           jsonType.label: boolean
<           user.attribute: emailVerified
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 26f0791c-93cf-4241-9c92-5528e67b9817
<         name: email verified
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<     - attributes:
<         consent.screen.text: ${rolesScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add user roles to the access token
<       id: ed5b578d-d48f-4023-bc23-892a76d018df
<       name: roles
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: 569264db-b779-49c9-a9b0-cfa0f8c249db
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: realm_access.roles
727,739c336,337
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 6d2e188f-4022-474e-84ad-19a84e054fc5
<         name: realm roles
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: resource_access.${client_id}.roles
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
---
>           user.attribute: locale
>           userinfo.token.claim: "true"
741,742c339
<         id: f7b77092-577d-4492-b803-a3cdf2a436fe
<         name: client roles
---
>         name: locale
744,753c341
<         protocolMapper: oidc-usermodel-client-role-mapper
<     - attributes:
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add acr (authentication context class
<         reference) to the token
<       id: b2240814-1831-48d1-9682-7eb5231bbc76
<       name: acr
<       protocol: openid-connect
<       protocolMappers:
---
>         protocolMapper: oidc-usermodel-attribute-mapper
755a344
>           claim.name: nickname
756a346,348
>           jsonType.label: String
>           user.attribute: nickname
>           userinfo.token.claim: "true"
758,759c350
<         id: bc946f16-8378-4edc-9137-f5d5db96da88
<         name: acr loa level
---
>         name: nickname
761c352
<         protocolMapper: oidc-acr-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
763c354,355
<         display.on.consent.screen: "false"
---
>         consent.screen.text: ${emailScopeConsentText}
>         display.on.consent.screen: "true"
765,767c357,358
<       description: Microprofile - JWT built-in scope
<       id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
<       name: microprofile-jwt
---
>       description: 'OpenID Connect built-in scope: email'
>       name: email
772c363
<           claim.name: upn
---
>           claim.name: email
775c366
<           user.attribute: username
---
>           user.attribute: email
778,779c369
<         id: ca164b36-12dc-47fc-b0e6-e40949a5042e
<         name: upn
---
>         name: email
784,810c374
<           claim.name: groups
<           id.token.claim: "true"
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 4314b495-934a-4948-b9ae-fc9c17354cf0
<         name: groups
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<     - attributes:
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 710757d5-c717-44de-ad25-2133cf75b0a6
<       name: nameandterms
<       protocol: openid-connect
<     - attributes:
<         consent.screen.text: ${addressScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: address'
<       id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
<       name: address
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
---
>           claim.name: email_verified
812,817c376,377
<           user.attribute.country: country
<           user.attribute.formatted: formatted
<           user.attribute.locality: locality
<           user.attribute.postal_code: postal_code
<           user.attribute.region: region
<           user.attribute.street: street
---
>           jsonType.label: boolean
>           user.attribute: emailVerified
820,821c380
<         id: 8bf14f81-76b3-4970-9993-a270b52ae28a
<         name: address
---
>         name: email verified
823c382,384
<         protocolMapper: oidc-address-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - name: nameandterms
>       protocol: openid-connect
825,831c386
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account
<       consentRequired: false
---
>     - clientId: cloud-services
833,836c388
<       - web-origins
<       - acr
<       - profile
<       - roles
---
>       - nameandterms
838,871d389
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<       implicitFlowEnabled: false
<       name: ${client_account}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
874,911d391
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 664b265b-5730-4e51-aee1-fa1aa9427323
<       implicitFlowEnabled: false
<       name: ${client_account-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: fab196f4-8200-41eb-8d63-173256763e71
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: admin-cli
<       consentRequired: false
<       defaultClientScopes:
913,916d392
<       - acr
<       - profile
<       - roles
<       - email
919,921d394
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
923,925c396
<       name: ${client_admin-cli}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
---
>       name: cloud-services
928,929d398
<       - phone
<       - offline_access
931,961d399
<       protocol: openid-connect
<       publicClient: true
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: false
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: broker
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<       implicitFlowEnabled: false
<       name: ${client_broker}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
963,1020d400
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         acr.loa.map: '{}'
<         backchannel.logout.revoke.offline.tokens: "false"
<         backchannel.logout.session.required: "true"
<         client_credentials.use_refresh_token: "false"
<         display.on.consent.screen: "false"
<         exclude.session.state.from.auth.response: "false"
<         frontchannel.logout.session.required: "false"
<         id.token.as.detached.signature: "false"
<         oauth2.device.authorization.grant.enabled: "false"
<         oidc.ciba.grant.enabled: "false"
<         require.pushed.authorization.requests: "false"
<         saml.allow.ecp.flow: "false"
<         saml.artifact.binding: "false"
<         saml.assertion.signature: "false"
<         saml.authnstatement: "false"
<         saml.client.signature: "false"
<         saml.encrypt: "false"
<         saml.force.post.binding: "false"
<         saml.multivalued.roles: "false"
<         saml.onetimeuse.condition: "false"
<         saml.server.signature: "false"
<         saml.server.signature.keyinfo.ext: "false"
<         saml_force_name_id_format: "false"
<         tls.client.certificate.bound.access.tokens: "false"
<         token.response.type.bearer.lower-case: "false"
<         use.refresh.tokens: "true"
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: cloud-services
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - nameandterms
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: true
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: true
<       id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
<       implicitFlowEnabled: false
<       name: cloud-services
<       nodeReRegistrationTimeout: -1
<       notBefore: 0
<       optionalClientScopes:
<       - address
1022,1023d401
<       - offline_access
<       - microprofile-jwt
1028d405
<       serviceAccountsEnabled: false
1030d406
<       surrogateAuthRequired: false
1033,1130d408
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: realm-management
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<       implicitFlowEnabled: false
<       name: ${client_realm-management}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /admin/redhat-external/console/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: security-admin-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
<       implicitFlowEnabled: false
<       name: ${client_security-admin-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: locale
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: locale
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: f0d04249-2f8f-4069-8566-4f3aa35e7690
<         name: locale
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       publicClient: true
<       redirectUris:
<       - /admin/redhat-external/console/*
<       rootUrl: ${authAdminUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins:
<       - +
<     defaultDefaultClientScopes:
<     - role_list
<     - profile
<     - email
<     - roles
<     - web-origins
<     - acr
<     defaultRole:
<       clientRole: false
<       composite: true
<       containerId: hac-sso
<       description: ${role_default-roles}
<       id: a8d38f0f-7d83-41b7-8236-55998c531760
<       name: default-roles-redhat-external
1132,1133d409
<     duplicateEmailsAllowed: false
<     editUsernameAllowed: false
1135,1139d410
<     enabledEventTypes: []
<     eventsEnabled: false
<     eventsListeners:
<     - jboss-logging
<     failureFactor: 30
1141,1143d411
<     identityProviderMappers: []
<     identityProviders: []
<     internationalizationEnabled: false
1145,1159d412
<     loginWithEmailAllowed: true
<     maxDeltaTimeSeconds: 43200
<     maxFailureWaitSeconds: 900
<     minimumQuickLoginWaitSeconds: 60
<     otpPolicyAlgorithm: HmacSHA1
<     otpPolicyDigits: 6
<     otpPolicyInitialCounter: 0
<     otpPolicyLookAheadWindow: 1
<     otpPolicyPeriod: 30
<     otpPolicyType: totp
<     otpSupportedApplications:
<     - FreeOTP
<     - Google Authenticator
<     permanentLockout: false
<     quickLoginCheckMilliSeconds: 1000
1161,1438d413
<     registrationAllowed: false
<     registrationEmailAsUsername: false
<     rememberMe: false
<     resetPasswordAllowed: false
<     roles:
<       client:
<         account:
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - manage-account-links
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account}
<           id: 62cc2451-60f3-4420-ab11-106280ea5127
<           name: manage-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_delete-account}
<           id: 8a7a5a05-e697-445e-8dee-122227311297
<           name: delete-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-consent}
<           id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
<           name: view-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-applications}
<           id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
<           name: view-applications
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - view-consent
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-consent}
<           id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
<           name: manage-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account-links}
<           id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
<           name: manage-account-links
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-profile}
<           id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
<           name: view-profile
<         account-console: []
<         admin-cli: []
<         broker:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<           description: ${role_read-token}
<           id: 9b3c893f-3860-46d7-82c6-4e6066380871
<           name: read-token
<         cloud-services: []
<         realm-management:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-identity-providers}
<           id: 47a7732c-f371-4cc1-935d-1c517614eb74
<           name: manage-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-events}
<           id: 92dac8f6-33df-4375-8d47-302065b0c47c
<           name: view-events
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-groups
<               - query-users
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-users}
<           id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
<           name: view-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-authorization}
<           id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
<           name: manage-authorization
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-clients
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-clients}
<           id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
<           name: view-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_impersonation}
<           id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
<           name: impersonation
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_create-client}
<           id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
<           name: create-client
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-clients}
<           id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
<           name: query-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-realm}
<           id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
<           name: manage-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-users}
<           id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
<           name: query-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-clients}
<           id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
<           name: manage-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-users}
<           id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
<           name: manage-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-groups}
<           id: b1b19c8d-fd64-4960-a409-dafc455d504e
<           name: query-groups
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - manage-identity-providers
<               - view-events
<               - view-users
<               - view-clients
<               - manage-authorization
<               - impersonation
<               - create-client
<               - query-clients
<               - manage-realm
<               - query-users
<               - manage-clients
<               - manage-users
<               - query-groups
<               - view-realm
<               - query-realms
<               - view-identity-providers
<               - view-authorization
<               - manage-events
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_realm-admin}
<           id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
<           name: realm-admin
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-realm}
<           id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
<           name: view-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-realms}
<           id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
<           name: query-realms
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-identity-providers}
<           id: e1403844-fc62-4522-8181-64a0395a9608
<           name: view-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-events}
<           id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
<           name: manage-events
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-authorization}
<           id: 1bab32ce-418a-4779-875a-aa550bc5720e
<           name: view-authorization
<         security-admin-console: []
<       realm:
<       - attributes: {}
<         clientRole: false
<         composite: true
<         composites:
<           client:
<             account:
<             - manage-account
<             - view-profile
<           realm:
<           - offline_access
<           - uma_authorization
<         containerId: hac-sso
<         description: ${role_default-roles}
<         id: a8d38f0f-7d83-41b7-8236-55998c531760
<         name: default-roles-redhat-external
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_uma_authorization}
<         id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
<         name: uma_authorization
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_offline-access}
<         id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
<         name: offline_access
<     scopeMappings:
<     - clientScope: offline_access
<       roles:
<       - offline_access
<     smtpServer: {}
<     sslRequired: external
<     supportedLocales: []
<     userManagedAccessAllowed: false
1452,1453d426
<     verifyEmail: false
<     waitIncrementSeconds: 60
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 10:05:16 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 10:05:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:04:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 575c8b1 to aa4d748 on Wed Mar 15 08:12:40 2023 </h3>  
 
<details> 
<summary>Git Diff (1605 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index c649254..8482994 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -7,126 +7,616 @@ spec:
     matchLabels:
       appstudio.redhat.com/keycloak: dev
   realm:
+    id: hac-sso
+    realm: redhat-external
+    displayName: Redhat External for HAC
     accessTokenLifespan: 7200
+    accessTokenLifespanForImplicitFlow: 900
+    enabled: true
+    sslRequired: external
+    registrationAllowed: false
+    registrationEmailAsUsername: false
+    rememberMe: false
+    verifyEmail: false
+    loginWithEmailAllowed: true
+    duplicateEmailsAllowed: false
+    resetPasswordAllowed: false
+    editUsernameAllowed: false
+    bruteForceProtected: false
+    permanentLockout: false
+    maxFailureWaitSeconds: 900
+    minimumQuickLoginWaitSeconds: 60
+    waitIncrementSeconds: 60
+    quickLoginCheckMilliSeconds: 1000
+    maxDeltaTimeSeconds: 43200
+    failureFactor: 30
+    roles:
+      realm:
+        - id: a8d38f0f-7d83-41b7-8236-55998c531760
+          name: default-roles-redhat-external
+          description: ${role_default-roles}
+          composite: true
+          composites:
+            realm:
+              - offline_access
+              - uma_authorization
+            client:
+              account:
+                - manage-account
+                - view-profile
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
+          name: uma_authorization
+          description: ${role_uma_authorization}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
+          name: offline_access
+          description: ${role_offline-access}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+      client:
+        cloud-services: []
+        realm-management:
+          - id: 47a7732c-f371-4cc1-935d-1c517614eb74
+            name: manage-identity-providers
+            description: ${role_manage-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 92dac8f6-33df-4375-8d47-302065b0c47c
+            name: view-events
+            description: ${role_view-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
+            name: view-users
+            description: ${role_view-users}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-groups
+                  - query-users
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
+            name: manage-authorization
+            description: ${role_manage-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
+            name: view-clients
+            description: ${role_view-clients}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-clients
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
+            name: impersonation
+            description: ${role_impersonation}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
+            name: create-client
+            description: ${role_create-client}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
+            name: query-clients
+            description: ${role_query-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
+            name: manage-realm
+            description: ${role_manage-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
+            name: query-users
+            description: ${role_query-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
+            name: manage-clients
+            description: ${role_manage-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
+            name: manage-users
+            description: ${role_manage-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: b1b19c8d-fd64-4960-a409-dafc455d504e
+            name: query-groups
+            description: ${role_query-groups}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
+            name: realm-admin
+            description: ${role_realm-admin}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - manage-identity-providers
+                  - view-events
+                  - view-users
+                  - view-clients
+                  - manage-authorization
+                  - impersonation
+                  - create-client
+                  - query-clients
+                  - manage-realm
+                  - query-users
+                  - manage-clients
+                  - manage-users
+                  - query-groups
+                  - view-realm
+                  - query-realms
+                  - view-identity-providers
+                  - view-authorization
+                  - manage-events
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
+            name: view-realm
+            description: ${role_view-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
+            name: query-realms
+            description: ${role_query-realms}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: e1403844-fc62-4522-8181-64a0395a9608
+            name: view-identity-providers
+            description: ${role_view-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
+            name: manage-events
+            description: ${role_manage-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 1bab32ce-418a-4779-875a-aa550bc5720e
+            name: view-authorization
+            description: ${role_view-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+        security-admin-console: []
+        admin-cli: []
+        account-console: []
+        broker:
+          - id: 9b3c893f-3860-46d7-82c6-4e6066380871
+            name: read-token
+            description: ${role_read-token}
+            composite: false
+            clientRole: true
+            containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+            attributes: {}
+        account:
+          - id: 62cc2451-60f3-4420-ab11-106280ea5127
+            name: manage-account
+            description: ${role_manage-account}
+            composite: true
+            composites:
+              client:
+                account:
+                  - manage-account-links
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 8a7a5a05-e697-445e-8dee-122227311297
+            name: delete-account
+            description: ${role_delete-account}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
+            name: view-consent
+            description: ${role_view-consent}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
+            name: view-applications
+            description: ${role_view-applications}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
+            name: manage-consent
+            description: ${role_manage-consent}
+            composite: true
+            composites:
+              client:
+                account:
+                  - view-consent
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
+            name: manage-account-links
+            description: ${role_manage-account-links}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
+            name: view-profile
+            description: ${role_view-profile}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+    defaultRole:
+      id: a8d38f0f-7d83-41b7-8236-55998c531760
+      name: default-roles-redhat-external
+      description: ${role_default-roles}
+      composite: true
+      clientRole: false
+      containerId: hac-sso
+    otpPolicyType: totp
+    otpPolicyAlgorithm: HmacSHA1
+    otpPolicyInitialCounter: 0
+    otpPolicyDigits: 6
+    otpPolicyLookAheadWindow: 1
+    otpPolicyPeriod: 30
+    otpSupportedApplications:
+      - FreeOTP
+      - Google Authenticator
+    scopeMappings:
+      - clientScope: offline_access
+        roles:
+          - offline_access
+    clientScopeMappings:
+      account:
+        - client: account-console
+          roles:
+            - manage-account
     clients:
-      - enabled: true
+      - id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+        clientId: account
+        name: ${client_account}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
         redirectUris:
-          - '*'
-        clientId: cloud-services
-        name: cloud-services
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
         implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
         publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 664b265b-5730-4e51-aee1-fa1aa9427323
+        clientId: account-console
+        name: ${client_account-console}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
         standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        protocolMappers:
+          - id: fab196f4-8200-41eb-8d63-173256763e71
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
+        clientId: admin-cli
+        name: ${client_admin-cli}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: false
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: true
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+        clientId: broker
+        name: ${client_broker}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
+        clientId: cloud-services
+        name: cloud-services
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - '*'
         webOrigins:
           - '*'
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
         directAccessGrantsEnabled: true
-        defaultClientScopes: 
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          saml.force.post.binding: "false"
+          saml.multivalued.roles: "false"
+          frontchannel.logout.session.required: "false"
+          oauth2.device.authorization.grant.enabled: "false"
+          backchannel.logout.revoke.offline.tokens: "false"
+          saml.server.signature.keyinfo.ext: "false"
+          use.refresh.tokens: "true"
+          oidc.ciba.grant.enabled: "false"
+          backchannel.logout.session.required: "true"
+          client_credentials.use_refresh_token: "false"
+          require.pushed.authorization.requests: "false"
+          saml.client.signature: "false"
+          saml.allow.ecp.flow: "false"
+          id.token.as.detached.signature: "false"
+          saml.assertion.signature: "false"
+          saml.encrypt: "false"
+          saml.server.signature: "false"
+          exclude.session.state.from.auth.response: "false"
+          saml.artifact.binding: "false"
+          saml_force_name_id_format: "false"
+          acr.loa.map: '{}'
+          tls.client.certificate.bound.access.tokens: "false"
+          saml.authnstatement: "false"
+          display.on.consent.screen: "false"
+          token.response.type.bearer.lower-case: "false"
+          saml.onetimeuse.condition: "false"
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: true
+        nodeReRegistrationTimeout: -1
+        defaultClientScopes:
+          - web-origins
+          - acr
           - nameandterms
-          - email
           - profile
           - roles
-          - web-origins
+          - email
         optionalClientScopes:
           - address
-          - microprofile-jwt
+          - phone
           - offline_access
+          - microprofile-jwt
+      - id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+        clientId: realm-management
+        name: ${client_realm-management}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
           - phone
-    clientScopes:
-      - name: role_list
-        description: SAML role list
-        protocol: saml
-        attributes:
-          consent.screen.text: ${samlRoleListScopeConsentText}
-          display.on.consent.screen: "true"
-        protocolMappers:
-          - name: role list
-            protocol: saml
-            protocolMapper: saml-role-list-mapper
-            consentRequired: false
-            config:
-              single: "false"
-              attribute.nameformat: Basic
-              attribute.name: Role
-      - name: phone
-        description: 'OpenID Connect built-in scope: phone'
+          - offline_access
+          - microprofile-jwt
+      - id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
+        clientId: security-admin-console
+        name: ${client_security-admin-console}
+        rootUrl: ${authAdminUrl}
+        baseUrl: /admin/redhat-external/console/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /admin/redhat-external/console/*
+        webOrigins:
+          - +
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
         attributes:
-          include.in.token.scope: "true"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${phoneScopeConsentText}
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
         protocolMappers:
-          - name: phone number verified
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
-            consentRequired: false
-            config:
-              userinfo.token.claim: "true"
-              user.attribute: phoneNumberVerified
-              id.token.claim: "true"
-              access.token.claim: "true"
-              claim.name: phone_number_verified
-              jsonType.label: boolean
-          - name: phone number
+          - id: f0d04249-2f8f-4069-8566-4f3aa35e7690
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: phoneNumber
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: phone_number
-              jsonType.label: String
-      - name: roles
-        description: OpenID Connect scope for add user roles to the access token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${rolesScopeConsentText}
-        protocolMappers:
-          - name: realm roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: realm_access.roles
-              jsonType.label: String
-              multivalued: "true"
-          - name: client roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-client-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: resource_access.${client_id}.roles
+              claim.name: locale
               jsonType.label: String
-              multivalued: "true"
-          - name: audience resolve
-            protocol: openid-connect
-            protocolMapper: oidc-audience-resolve-mapper
-            consentRequired: false
-            config: {}
-      - name: acr
-        description: OpenID Connect scope for add acr (authentication context class reference) to the token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "false"
-        protocolMappers:
-          - id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
-            name: acr loa level
-            protocol: openid-connect
-            protocolMapper: oidc-acr-mapper
-            consentRequired: false
-            config:
-              id.token.claim: "true"
-              access.token.claim: "true"
-      - name: web-origins
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+    clientScopes:
+      - id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
+        name: web-origins
         description: OpenID Connect scope for add allowed web origins to the access token
         protocol: openid-connect
         attributes:
@@ -134,71 +624,71 @@ spec:
           display.on.consent.screen: "false"
           consent.screen.text: ""
         protocolMappers:
-          - id: f57e7fed-4377-43e1-a2fa-0ef938735371
+          - id: d54340bc-16f0-45a4-9464-436ef7583a81
             name: allowed web origins
             protocol: openid-connect
             protocolMapper: oidc-allowed-origins-mapper
             consentRequired: false
             config: {}
-      - name: offline_access
-        description: 'OpenID Connect built-in scope: offline_access'
-        protocol: openid-connect
-        attributes:
-          consent.screen.text: ${offlineAccessScopeConsentText}
-          display.on.consent.screen: "true"
-      - name: microprofile-jwt
-        description: Microprofile - JWT built-in scope
+      - id: 172816fd-8450-4e82-b33a-89f9181373a4
+        name: phone
+        description: 'OpenID Connect built-in scope: phone'
         protocol: openid-connect
         attributes:
           include.in.token.scope: "true"
-          display.on.consent.screen: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${phoneScopeConsentText}
         protocolMappers:
-          - name: groups
+          - id: 02c09b15-1210-4a6c-b6e4-c2452031712a
+            name: phone number
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
-              multivalued: "true"
-              user.attribute: foo
+              userinfo.token.claim: "true"
+              user.attribute: phoneNumber
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: groups
+              claim.name: phone_number
               jsonType.label: String
-          - name: upn
+          - id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
+            name: phone number verified
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: phoneNumberVerified
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: upn
-              jsonType.label: String
-      - name: address
-        description: 'OpenID Connect built-in scope: address'
-        protocol: openid-connect
+              claim.name: phone_number_verified
+              jsonType.label: boolean
+      - id: c7d788d8-5836-4500-b4a9-083c2f6c2960
+        name: role_list
+        description: SAML role list
+        protocol: saml
         attributes:
-          include.in.token.scope: "true"
+          consent.screen.text: ${samlRoleListScopeConsentText}
           display.on.consent.screen: "true"
-          consent.screen.text: ${addressScopeConsentText}
         protocolMappers:
-          - id: 211470af-2420-4127-a5b7-e38d3f50920a
-            name: address
-            protocol: openid-connect
-            protocolMapper: oidc-address-mapper
+          - id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
+            name: role list
+            protocol: saml
+            protocolMapper: saml-role-list-mapper
             consentRequired: false
             config:
-              user.attribute.formatted: formatted
-              user.attribute.country: country
-              user.attribute.postal_code: postal_code
-              userinfo.token.claim: "true"
-              user.attribute.street: street
-              id.token.claim: "true"
-              user.attribute.region: region
-              access.token.claim: "true"
-              user.attribute.locality: locality
-      - name: profile
+              single: "false"
+              attribute.nameformat: Basic
+              attribute.name: Role
+      - id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
+        name: offline_access
+        description: 'OpenID Connect built-in scope: offline_access'
+        protocol: openid-connect
+        attributes:
+          consent.screen.text: ${offlineAccessScopeConsentText}
+          display.on.consent.screen: "true"
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
         description: 'OpenID Connect built-in scope: profile'
         protocol: openid-connect
         attributes:
@@ -206,158 +696,173 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${profileScopeConsentText}
         protocolMappers:
-          - name: picture
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: picture
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: picture
+              claim.name: locale
               jsonType.label: String
-          - name: zoneinfo
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-full-name-mapper
             consentRequired: false
             config:
-              userinfo.token.claim: "true"
-              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: zoneinfo
-              jsonType.label: String
-          - name: birthdate
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: birthdate
+              user.attribute: lastName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: birthdate
+              claim.name: family_name
               jsonType.label: String
-          - name: given name
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: firstName
+              user.attribute: updatedAt
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: given_name
-              jsonType.label: String
-          - name: website
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: website
+              user.attribute: picture
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: website
+              claim.name: picture
               jsonType.label: String
-          - name: username
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: nickname
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: preferred_username
+              claim.name: nickname
               jsonType.label: String
-          - name: full name
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
             protocol: openid-connect
-            protocolMapper: oidc-full-name-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
+              userinfo.token.claim: "true"
+              user.attribute: website
               id.token.claim: "true"
               access.token.claim: "true"
-              userinfo.token.claim: "true"
-          - name: middle name
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: middleName
+              user.attribute: profile
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: middle_name
+              claim.name: profile
               jsonType.label: String
-          - name: gender
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: gender
+              user.attribute: username
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: gender
+              claim.name: preferred_username
               jsonType.label: String
-          - name: family name
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: lastName
+              user.attribute: firstName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: family_name
+              claim.name: given_name
               jsonType.label: String
-          - name: updated at
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: updatedAt
+              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: updated_at
-              jsonType.label: long
-          - name: profile
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: profile
+              user.attribute: gender
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: profile
+              claim.name: gender
               jsonType.label: String
-          - name: locale
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: locale
+              user.attribute: birthdate
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: locale
+              claim.name: birthdate
               jsonType.label: String
-          - name: nickname
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: nickname
+              user.attribute: middleName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: nickname
+              claim.name: middle_name
               jsonType.label: String
-      - name: email
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
         description: 'OpenID Connect built-in scope: email'
         protocol: openid-connect
         attributes:
@@ -365,7 +870,8 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${emailScopeConsentText}
         protocolMappers:
-          - name: email
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -376,7 +882,8 @@ spec:
               access.token.claim: "true"
               claim.name: email
               jsonType.label: String
-          - name: email verified
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -387,13 +894,529 @@ spec:
               access.token.claim: "true"
               claim.name: email_verified
               jsonType.label: boolean
-      - name: nameandterms
+      - id: ed5b578d-d48f-4023-bc23-892a76d018df
+        name: roles
+        description: OpenID Connect scope for add user roles to the access token
         protocol: openid-connect
-    displayName: Redhat External for HAC
-    enabled: true
-    id: hac-sso
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${rolesScopeConsentText}
+        protocolMappers:
+          - id: 569264db-b779-49c9-a9b0-cfa0f8c249db
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+          - id: 6d2e188f-4022-474e-84ad-19a84e054fc5
+            name: realm roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: realm_access.roles
+              jsonType.label: String
+              multivalued: "true"
+          - id: f7b77092-577d-4492-b803-a3cdf2a436fe
+            name: client roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-client-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: resource_access.${client_id}.roles
+              jsonType.label: String
+              multivalued: "true"
+      - id: b2240814-1831-48d1-9682-7eb5231bbc76
+        name: acr
+        description: OpenID Connect scope for add acr (authentication context class reference) to the token
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: bc946f16-8378-4edc-9137-f5d5db96da88
+            name: acr loa level
+            protocol: openid-connect
+            protocolMapper: oidc-acr-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+      - id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
+        name: microprofile-jwt
+        description: Microprofile - JWT built-in scope
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: ca164b36-12dc-47fc-b0e6-e40949a5042e
+            name: upn
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: upn
+              jsonType.label: String
+          - id: 4314b495-934a-4948-b9ae-fc9c17354cf0
+            name: groups
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              multivalued: "true"
+              user.attribute: foo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: groups
+              jsonType.label: String
+      - id: 710757d5-c717-44de-ad25-2133cf75b0a6
+        name: nameandterms
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+      - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
+        name: address
+        description: 'OpenID Connect built-in scope: address'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${addressScopeConsentText}
+        protocolMappers:
+          - id: 8bf14f81-76b3-4970-9993-a270b52ae28a
+            name: address
+            protocol: openid-connect
+            protocolMapper: oidc-address-mapper
+            consentRequired: false
+            config:
+              user.attribute.formatted: formatted
+              user.attribute.country: country
+              user.attribute.postal_code: postal_code
+              userinfo.token.claim: "true"
+              user.attribute.street: street
+              id.token.claim: "true"
+              user.attribute.region: region
+              access.token.claim: "true"
+              user.attribute.locality: locality
+    defaultDefaultClientScopes:
+      - role_list
+      - profile
+      - email
+      - roles
+      - web-origins
+      - acr
+    smtpServer: {}
     loginTheme: rh-sso
-    realm: redhat-external
+    eventsEnabled: false
+    eventsListeners:
+      - jboss-logging
+    enabledEventTypes: []
+    adminEventsEnabled: false
+    adminEventsDetailsEnabled: false
+    identityProviders: []
+    identityProviderMappers: []
+    internationalizationEnabled: false
+    supportedLocales: []
+    authenticationFlows:
+      - id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
+        alias: Account verification options
+        description: Method with which to verity the existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-email-verification
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Verify Existing Account by Re-authentication
+            userSetupAllowed: false
+      - id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
+        alias: Authentication Options
+        description: Authentication options.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: basic-auth
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: basic-auth-otp
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 30
+            userSetupAllowed: false
+      - id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
+        alias: Browser - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 87917dac-6623-4091-a031-f669c00727a0
+        alias: Direct Grant - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
+        alias: First broker login - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 1c4a841c-8127-42c8-92b1-70ce02485b23
+        alias: Handle Existing Account
+        description: Handle what to do if there is existing account with same email/username like authenticated identity provider
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-confirm-link
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Account verification options
+            userSetupAllowed: false
+      - id: 55164d9f-4366-464c-88d2-90bfd2261711
+        alias: Reset - Conditional OTP
+        description: Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 7a328721-4ecf-4195-b3eb-d43710806436
+        alias: User creation or linking
+        description: Flow for the existing/non-existing user alternatives
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: create unique user config
+            authenticator: idp-create-user-if-unique
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Handle Existing Account
+            userSetupAllowed: false
+      - id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
+        alias: Verify Existing Account by Re-authentication
+        description: Reauthentication of existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: First broker login - Conditional OTP
+            userSetupAllowed: false
+      - id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
+        alias: browser
+        description: browser based authentication
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-cookie
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: identity-provider-redirector
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 25
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 30
+            flowAlias: forms
+            userSetupAllowed: false
+      - id: e845c181-be95-4661-bf17-ad8930302e2d
+        alias: clients
+        description: Base authentication for clients
+        providerId: client-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: client-secret
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: client-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: client-secret-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 30
+            userSetupAllowed: false
+          - authenticator: client-x509
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 40
+            userSetupAllowed: false
+      - id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
+        alias: direct grant
+        description: OpenID Connect Resource Owner Grant
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: direct-grant-validate-username
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 30
+            flowAlias: Direct Grant - Conditional OTP
+            userSetupAllowed: false
+      - id: f5aa97fe-9f57-4358-bcff-99259d556744
+        alias: docker auth
+        description: Used by Docker clients to authenticate against the IDP
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: docker-http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+      - id: 4cac59c3-abc3-461f-9c98-0af10402304f
+        alias: first broker login
+        description: Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: review profile config
+            authenticator: idp-review-profile
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: User creation or linking
+            userSetupAllowed: false
+      - id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
+        alias: forms
+        description: Username, password, otp and other auth forms.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: Browser - Conditional OTP
+            userSetupAllowed: false
+      - id: 4e344966-4bca-47ac-a450-3251f9cf16db
+        alias: http challenge
+        description: An authentication flow based on challenge-response HTTP Authentication Schemes
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: no-cookie-redirect
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Authentication Options
+            userSetupAllowed: false
+      - id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
+        alias: registration
+        description: registration flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-page-form
+            authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 10
+            flowAlias: registration form
+            userSetupAllowed: false
+      - id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
+        alias: registration form
+        description: registration form
+        providerId: form-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-user-creation
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: registration-profile-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 40
+            userSetupAllowed: false
+          - authenticator: registration-password-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 50
+            userSetupAllowed: false
+          - authenticator: registration-recaptcha-action
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 60
+            userSetupAllowed: false
+      - id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
+        alias: reset credentials
+        description: Reset credentials for a user if they forgot their password or something
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: reset-credentials-choose-user
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-credential-email
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: reset-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 30
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 40
+            flowAlias: Reset - Conditional OTP
+            userSetupAllowed: false
+      - id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
+        alias: saml ecp
+        description: SAML ECP Profile Authentication Flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+    authenticatorConfig:
+      - id: 651040d9-3852-4081-8cb3-665474382f87
+        alias: create unique user config
+        config:
+          require.password.update.after.registration: "false"
+      - id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
+        alias: review profile config
+        config:
+          update.profile.on.first.login: missing
+    userManagedAccessAllowed: false
     users:
       - credentials:
           - type: password 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1572 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/dev-sso/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/dev-sso/kustomize.out
26,426d25
<     accessTokenLifespanForImplicitFlow: 900
<     adminEventsDetailsEnabled: false
<     adminEventsEnabled: false
<     authenticationFlows:
<     - alias: Account verification options
<       authenticationExecutions:
<       - authenticator: idp-email-verification
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Verify Existing Account by Re-authentication
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Method with which to verity the existing account
<       id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
<       providerId: basic-flow
<       topLevel: false
<     - alias: Authentication Options
<       authenticationExecutions:
<       - authenticator: basic-auth
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: basic-auth-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 30
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: Authentication options.
<       id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
<       providerId: basic-flow
<       topLevel: false
<     - alias: Browser - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
<       providerId: basic-flow
<       topLevel: false
<     - alias: Direct Grant - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 87917dac-6623-4091-a031-f669c00727a0
<       providerId: basic-flow
<       topLevel: false
<     - alias: First broker login - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
<       providerId: basic-flow
<       topLevel: false
<     - alias: Handle Existing Account
<       authenticationExecutions:
<       - authenticator: idp-confirm-link
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Account verification options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Handle what to do if there is existing account with same email/username
<         like authenticated identity provider
<       id: 1c4a841c-8127-42c8-92b1-70ce02485b23
<       providerId: basic-flow
<       topLevel: false
<     - alias: Reset - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP should be reset or not. Set to REQUIRED
<         to force.
<       id: 55164d9f-4366-464c-88d2-90bfd2261711
<       providerId: basic-flow
<       topLevel: false
<     - alias: User creation or linking
<       authenticationExecutions:
<       - authenticator: idp-create-user-if-unique
<         authenticatorConfig: create unique user config
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Handle Existing Account
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow for the existing/non-existing user alternatives
<       id: 7a328721-4ecf-4195-b3eb-d43710806436
<       providerId: basic-flow
<       topLevel: false
<     - alias: Verify Existing Account by Re-authentication
<       authenticationExecutions:
<       - authenticator: idp-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: First broker login - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reauthentication of existing account
<       id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
<       providerId: basic-flow
<       topLevel: false
<     - alias: browser
<       authenticationExecutions:
<       - authenticator: auth-cookie
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: identity-provider-redirector
<         authenticatorFlow: false
<         priority: 25
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: forms
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: browser based authentication
<       id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
<       providerId: basic-flow
<       topLevel: true
<     - alias: clients
<       authenticationExecutions:
<       - authenticator: client-secret
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-jwt
<         authenticatorFlow: false
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-secret-jwt
<         authenticatorFlow: false
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-x509
<         authenticatorFlow: false
<         priority: 40
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Base authentication for clients
<       id: e845c181-be95-4661-bf17-ad8930302e2d
<       providerId: client-flow
<       topLevel: true
<     - alias: direct grant
<       authenticationExecutions:
<       - authenticator: direct-grant-validate-username
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-password
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Direct Grant - Conditional OTP
<         priority: 30
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: OpenID Connect Resource Owner Grant
<       id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
<       providerId: basic-flow
<       topLevel: true
<     - alias: docker auth
<       authenticationExecutions:
<       - authenticator: docker-http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Used by Docker clients to authenticate against the IDP
<       id: f5aa97fe-9f57-4358-bcff-99259d556744
<       providerId: basic-flow
<       topLevel: true
<     - alias: first broker login
<       authenticationExecutions:
<       - authenticator: idp-review-profile
<         authenticatorConfig: review profile config
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: User creation or linking
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Actions taken after first broker login with identity provider account,
<         which is not yet linked to any Keycloak account
<       id: 4cac59c3-abc3-461f-9c98-0af10402304f
<       providerId: basic-flow
<       topLevel: true
<     - alias: forms
<       authenticationExecutions:
<       - authenticator: auth-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Browser - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Username, password, otp and other auth forms.
<       id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
<       providerId: basic-flow
<       topLevel: false
<     - alias: http challenge
<       authenticationExecutions:
<       - authenticator: no-cookie-redirect
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Authentication Options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: An authentication flow based on challenge-response HTTP Authentication
<         Schemes
<       id: 4e344966-4bca-47ac-a450-3251f9cf16db
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration
<       authenticationExecutions:
<       - authenticator: registration-page-form
<         authenticatorFlow: true
<         flowAlias: registration form
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration flow
<       id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration form
<       authenticationExecutions:
<       - authenticator: registration-user-creation
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-profile-action
<         authenticatorFlow: false
<         priority: 40
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-password-action
<         authenticatorFlow: false
<         priority: 50
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-recaptcha-action
<         authenticatorFlow: false
<         priority: 60
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration form
<       id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
<       providerId: form-flow
<       topLevel: false
<     - alias: reset credentials
<       authenticationExecutions:
<       - authenticator: reset-credentials-choose-user
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-credential-email
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-password
<         authenticatorFlow: false
<         priority: 30
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Reset - Conditional OTP
<         priority: 40
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reset credentials for a user if they forgot their password or something
<       id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
<       providerId: basic-flow
<       topLevel: true
<     - alias: saml ecp
<       authenticationExecutions:
<       - authenticator: http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: SAML ECP Profile Authentication Flow
<       id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
<       providerId: basic-flow
<       topLevel: true
<     authenticatorConfig:
<     - alias: create unique user config
<       config:
<         require.password.update.after.registration: "false"
<       id: 651040d9-3852-4081-8cb3-665474382f87
<     - alias: review profile config
<       config:
<         update.profile.on.first.login: missing
<       id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
<     bruteForceProtected: false
<     clientScopeMappings:
<       account:
<       - client: account-console
<         roles:
<         - manage-account
429,436c28,32
<         consent.screen.text: ""
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add allowed web origins to the access
<         token
<       id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
<       name: web-origins
<       protocol: openid-connect
---
>         consent.screen.text: ${samlRoleListScopeConsentText}
>         display.on.consent.screen: "true"
>       description: SAML role list
>       name: role_list
>       protocol: saml
438c34,37
<       - config: {}
---
>       - config:
>           attribute.name: Role
>           attribute.nameformat: Basic
>           single: "false"
440,443c39,41
<         id: d54340bc-16f0-45a4-9464-436ef7583a81
<         name: allowed web origins
<         protocol: openid-connect
<         protocolMapper: oidc-allowed-origins-mapper
---
>         name: role list
>         protocol: saml
>         protocolMapper: saml-role-list-mapper
449d46
<       id: 172816fd-8450-4e82-b33a-89f9181373a4
455c52
<           claim.name: phone_number
---
>           claim.name: phone_number_verified
457,458c54,55
<           jsonType.label: String
<           user.attribute: phoneNumber
---
>           jsonType.label: boolean
>           user.attribute: phoneNumberVerified
461,462c58
<         id: 02c09b15-1210-4a6c-b6e4-c2452031712a
<         name: phone number
---
>         name: phone number verified
467c63
<           claim.name: phone_number_verified
---
>           claim.name: phone_number
469,470c65,66
<           jsonType.label: boolean
<           user.attribute: phoneNumberVerified
---
>           jsonType.label: String
>           user.attribute: phoneNumber
473,474c69
<         id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
<         name: phone number verified
---
>         name: phone number
478c73
<         consent.screen.text: ${samlRoleListScopeConsentText}
---
>         consent.screen.text: ${rolesScopeConsentText}
480,483c75,78
<       description: SAML role list
<       id: c7d788d8-5836-4500-b4a9-083c2f6c2960
<       name: role_list
<       protocol: saml
---
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add user roles to the access token
>       name: roles
>       protocol: openid-connect
486,488c81,85
<           attribute.name: Role
<           attribute.nameformat: Basic
<           single: "false"
---
>           access.token.claim: "true"
>           claim.name: realm_access.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
490,493c87,135
<         id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
<         name: role list
<         protocol: saml
<         protocolMapper: saml-role-list-mapper
---
>         name: realm roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-realm-role-mapper
>       - config:
>           access.token.claim: "true"
>           claim.name: resource_access.${client_id}.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
>         consentRequired: false
>         name: client roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-client-role-mapper
>       - config: {}
>         consentRequired: false
>         name: audience resolve
>         protocol: openid-connect
>         protocolMapper: oidc-audience-resolve-mapper
>     - attributes:
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add acr (authentication context class
>         reference) to the token
>       name: acr
>       protocol: openid-connect
>       protocolMappers:
>       - config:
>           access.token.claim: "true"
>           id.token.claim: "true"
>         consentRequired: false
>         id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
>         name: acr loa level
>         protocol: openid-connect
>         protocolMapper: oidc-acr-mapper
>     - attributes:
>         consent.screen.text: ""
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add allowed web origins to the access
>         token
>       name: web-origins
>       protocol: openid-connect
>       protocolMappers:
>       - config: {}
>         consentRequired: false
>         id: f57e7fed-4377-43e1-a2fa-0ef938735371
>         name: allowed web origins
>         protocol: openid-connect
>         protocolMapper: oidc-allowed-origins-mapper
498d139
<       id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
502,503c143
<         consent.screen.text: ${profileScopeConsentText}
<         display.on.consent.screen: "true"
---
>         display.on.consent.screen: "false"
505,507c145,146
<       description: 'OpenID Connect built-in scope: profile'
<       id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
<       name: profile
---
>       description: Microprofile - JWT built-in scope
>       name: microprofile-jwt
512c151
<           claim.name: locale
---
>           claim.name: groups
515,516c154,155
<           user.attribute: locale
<           userinfo.token.claim: "true"
---
>           multivalued: "true"
>           user.attribute: foo
518,519c157
<         id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
<         name: locale
---
>         name: groups
521c159
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-realm-role-mapper
523a162
>           claim.name: upn
524a164,165
>           jsonType.label: String
>           user.attribute: username
527,528c168
<         id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
<         name: full name
---
>         name: upn
530c170,178
<         protocolMapper: oidc-full-name-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - attributes:
>         consent.screen.text: ${addressScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: address'
>       name: address
>       protocol: openid-connect
>       protocolMappers:
533d180
<           claim.name: family_name
535,536c182,187
<           jsonType.label: String
<           user.attribute: lastName
---
>           user.attribute.country: country
>           user.attribute.formatted: formatted
>           user.attribute.locality: locality
>           user.attribute.postal_code: postal_code
>           user.attribute.region: region
>           user.attribute.street: street
539,540c190,191
<         id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
<         name: family name
---
>         id: 211470af-2420-4127-a5b7-e38d3f50920a
>         name: address
542c193,201
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-address-mapper
>     - attributes:
>         consent.screen.text: ${profileScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: profile'
>       name: profile
>       protocol: openid-connect
>       protocolMappers:
545c204
<           claim.name: updated_at
---
>           claim.name: picture
547,548c206,207
<           jsonType.label: long
<           user.attribute: updatedAt
---
>           jsonType.label: String
>           user.attribute: picture
551,552c210
<         id: 71c6caff-3f17-47db-8dc1-42f9af01832e
<         name: updated at
---
>         name: picture
557c215
<           claim.name: picture
---
>           claim.name: zoneinfo
560c218
<           user.attribute: picture
---
>           user.attribute: zoneinfo
563,564c221
<         id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
<         name: picture
---
>         name: zoneinfo
569c226
<           claim.name: nickname
---
>           claim.name: birthdate
572c229
<           user.attribute: nickname
---
>           user.attribute: birthdate
575,576c232
<         id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
<         name: nickname
---
>         name: birthdate
581c237
<           claim.name: website
---
>           claim.name: given_name
584c240
<           user.attribute: website
---
>           user.attribute: firstName
587,588c243
<         id: f8167604-073d-47ea-9fd1-6ec754ce5c49
<         name: website
---
>         name: given name
590c245
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
593c248
<           claim.name: profile
---
>           claim.name: website
596c251
<           user.attribute: profile
---
>           user.attribute: website
599,600c254
<         id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
<         name: profile
---
>         name: website
611d264
<         id: 463f80df-1554-4f0b-889f-1e6f2308ba17
617d269
<           claim.name: given_name
619,620d270
<           jsonType.label: String
<           user.attribute: firstName
623,624c273
<         id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
<         name: given name
---
>         name: full name
626c275
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-full-name-mapper
629c278
<           claim.name: zoneinfo
---
>           claim.name: middle_name
632c281
<           user.attribute: zoneinfo
---
>           user.attribute: middleName
635,636c284
<         id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
<         name: zoneinfo
---
>         name: middle name
647d294
<         id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
653c300
<           claim.name: birthdate
---
>           claim.name: family_name
656c303
<           user.attribute: birthdate
---
>           user.attribute: lastName
659,660c306
<         id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
<         name: birthdate
---
>         name: family name
662c308
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
665c311
<           claim.name: middle_name
---
>           claim.name: updated_at
667,668c313,314
<           jsonType.label: String
<           user.attribute: middleName
---
>           jsonType.label: long
>           user.attribute: updatedAt
671,672c317
<         id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
<         name: middle name
---
>         name: updated at
675,683d319
<     - attributes:
<         consent.screen.text: ${emailScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: email'
<       id: 45e1900d-2199-45fc-9028-a39497a6cdd5
<       name: email
<       protocol: openid-connect
<       protocolMappers:
686c322
<           claim.name: email
---
>           claim.name: profile
689c325
<           user.attribute: email
---
>           user.attribute: profile
692,693c328
<         id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
<         name: email
---
>         name: profile
695c330
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
698c333
<           claim.name: email_verified
---
>           claim.name: locale
700,725d334
<           jsonType.label: boolean
<           user.attribute: emailVerified
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 26f0791c-93cf-4241-9c92-5528e67b9817
<         name: email verified
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<     - attributes:
<         consent.screen.text: ${rolesScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add user roles to the access token
<       id: ed5b578d-d48f-4023-bc23-892a76d018df
<       name: roles
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: 569264db-b779-49c9-a9b0-cfa0f8c249db
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: realm_access.roles
727,739c336,337
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 6d2e188f-4022-474e-84ad-19a84e054fc5
<         name: realm roles
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: resource_access.${client_id}.roles
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
---
>           user.attribute: locale
>           userinfo.token.claim: "true"
741,742c339
<         id: f7b77092-577d-4492-b803-a3cdf2a436fe
<         name: client roles
---
>         name: locale
744,753c341
<         protocolMapper: oidc-usermodel-client-role-mapper
<     - attributes:
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add acr (authentication context class
<         reference) to the token
<       id: b2240814-1831-48d1-9682-7eb5231bbc76
<       name: acr
<       protocol: openid-connect
<       protocolMappers:
---
>         protocolMapper: oidc-usermodel-attribute-mapper
755a344
>           claim.name: nickname
756a346,348
>           jsonType.label: String
>           user.attribute: nickname
>           userinfo.token.claim: "true"
758,759c350
<         id: bc946f16-8378-4edc-9137-f5d5db96da88
<         name: acr loa level
---
>         name: nickname
761c352
<         protocolMapper: oidc-acr-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
763c354,355
<         display.on.consent.screen: "false"
---
>         consent.screen.text: ${emailScopeConsentText}
>         display.on.consent.screen: "true"
765,767c357,358
<       description: Microprofile - JWT built-in scope
<       id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
<       name: microprofile-jwt
---
>       description: 'OpenID Connect built-in scope: email'
>       name: email
772c363
<           claim.name: upn
---
>           claim.name: email
775c366
<           user.attribute: username
---
>           user.attribute: email
778,779c369
<         id: ca164b36-12dc-47fc-b0e6-e40949a5042e
<         name: upn
---
>         name: email
784,810c374
<           claim.name: groups
<           id.token.claim: "true"
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 4314b495-934a-4948-b9ae-fc9c17354cf0
<         name: groups
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<     - attributes:
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 710757d5-c717-44de-ad25-2133cf75b0a6
<       name: nameandterms
<       protocol: openid-connect
<     - attributes:
<         consent.screen.text: ${addressScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: address'
<       id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
<       name: address
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
---
>           claim.name: email_verified
812,817c376,377
<           user.attribute.country: country
<           user.attribute.formatted: formatted
<           user.attribute.locality: locality
<           user.attribute.postal_code: postal_code
<           user.attribute.region: region
<           user.attribute.street: street
---
>           jsonType.label: boolean
>           user.attribute: emailVerified
820,821c380
<         id: 8bf14f81-76b3-4970-9993-a270b52ae28a
<         name: address
---
>         name: email verified
823c382,384
<         protocolMapper: oidc-address-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - name: nameandterms
>       protocol: openid-connect
825,831c386
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account
<       consentRequired: false
---
>     - clientId: cloud-services
833,836c388
<       - web-origins
<       - acr
<       - profile
<       - roles
---
>       - nameandterms
838,871d389
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<       implicitFlowEnabled: false
<       name: ${client_account}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
874,911d391
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 664b265b-5730-4e51-aee1-fa1aa9427323
<       implicitFlowEnabled: false
<       name: ${client_account-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: fab196f4-8200-41eb-8d63-173256763e71
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: admin-cli
<       consentRequired: false
<       defaultClientScopes:
913,916d392
<       - acr
<       - profile
<       - roles
<       - email
919,921d394
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
923,925c396
<       name: ${client_admin-cli}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
---
>       name: cloud-services
928,929d398
<       - phone
<       - offline_access
931,961d399
<       protocol: openid-connect
<       publicClient: true
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: false
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: broker
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<       implicitFlowEnabled: false
<       name: ${client_broker}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
963,1020d400
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         acr.loa.map: '{}'
<         backchannel.logout.revoke.offline.tokens: "false"
<         backchannel.logout.session.required: "true"
<         client_credentials.use_refresh_token: "false"
<         display.on.consent.screen: "false"
<         exclude.session.state.from.auth.response: "false"
<         frontchannel.logout.session.required: "false"
<         id.token.as.detached.signature: "false"
<         oauth2.device.authorization.grant.enabled: "false"
<         oidc.ciba.grant.enabled: "false"
<         require.pushed.authorization.requests: "false"
<         saml.allow.ecp.flow: "false"
<         saml.artifact.binding: "false"
<         saml.assertion.signature: "false"
<         saml.authnstatement: "false"
<         saml.client.signature: "false"
<         saml.encrypt: "false"
<         saml.force.post.binding: "false"
<         saml.multivalued.roles: "false"
<         saml.onetimeuse.condition: "false"
<         saml.server.signature: "false"
<         saml.server.signature.keyinfo.ext: "false"
<         saml_force_name_id_format: "false"
<         tls.client.certificate.bound.access.tokens: "false"
<         token.response.type.bearer.lower-case: "false"
<         use.refresh.tokens: "true"
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: cloud-services
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - nameandterms
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: true
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: true
<       id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
<       implicitFlowEnabled: false
<       name: cloud-services
<       nodeReRegistrationTimeout: -1
<       notBefore: 0
<       optionalClientScopes:
<       - address
1022,1023d401
<       - offline_access
<       - microprofile-jwt
1028d405
<       serviceAccountsEnabled: false
1030d406
<       surrogateAuthRequired: false
1033,1130d408
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: realm-management
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<       implicitFlowEnabled: false
<       name: ${client_realm-management}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /admin/redhat-external/console/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: security-admin-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
<       implicitFlowEnabled: false
<       name: ${client_security-admin-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: locale
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: locale
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: f0d04249-2f8f-4069-8566-4f3aa35e7690
<         name: locale
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       publicClient: true
<       redirectUris:
<       - /admin/redhat-external/console/*
<       rootUrl: ${authAdminUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins:
<       - +
<     defaultDefaultClientScopes:
<     - role_list
<     - profile
<     - email
<     - roles
<     - web-origins
<     - acr
<     defaultRole:
<       clientRole: false
<       composite: true
<       containerId: hac-sso
<       description: ${role_default-roles}
<       id: a8d38f0f-7d83-41b7-8236-55998c531760
<       name: default-roles-redhat-external
1132,1133d409
<     duplicateEmailsAllowed: false
<     editUsernameAllowed: false
1135,1139d410
<     enabledEventTypes: []
<     eventsEnabled: false
<     eventsListeners:
<     - jboss-logging
<     failureFactor: 30
1141,1143d411
<     identityProviderMappers: []
<     identityProviders: []
<     internationalizationEnabled: false
1145,1159d412
<     loginWithEmailAllowed: true
<     maxDeltaTimeSeconds: 43200
<     maxFailureWaitSeconds: 900
<     minimumQuickLoginWaitSeconds: 60
<     otpPolicyAlgorithm: HmacSHA1
<     otpPolicyDigits: 6
<     otpPolicyInitialCounter: 0
<     otpPolicyLookAheadWindow: 1
<     otpPolicyPeriod: 30
<     otpPolicyType: totp
<     otpSupportedApplications:
<     - FreeOTP
<     - Google Authenticator
<     permanentLockout: false
<     quickLoginCheckMilliSeconds: 1000
1161,1438d413
<     registrationAllowed: false
<     registrationEmailAsUsername: false
<     rememberMe: false
<     resetPasswordAllowed: false
<     roles:
<       client:
<         account:
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - manage-account-links
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account}
<           id: 62cc2451-60f3-4420-ab11-106280ea5127
<           name: manage-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_delete-account}
<           id: 8a7a5a05-e697-445e-8dee-122227311297
<           name: delete-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-consent}
<           id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
<           name: view-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-applications}
<           id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
<           name: view-applications
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - view-consent
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-consent}
<           id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
<           name: manage-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account-links}
<           id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
<           name: manage-account-links
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-profile}
<           id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
<           name: view-profile
<         account-console: []
<         admin-cli: []
<         broker:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<           description: ${role_read-token}
<           id: 9b3c893f-3860-46d7-82c6-4e6066380871
<           name: read-token
<         cloud-services: []
<         realm-management:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-identity-providers}
<           id: 47a7732c-f371-4cc1-935d-1c517614eb74
<           name: manage-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-events}
<           id: 92dac8f6-33df-4375-8d47-302065b0c47c
<           name: view-events
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-groups
<               - query-users
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-users}
<           id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
<           name: view-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-authorization}
<           id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
<           name: manage-authorization
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-clients
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-clients}
<           id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
<           name: view-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_impersonation}
<           id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
<           name: impersonation
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_create-client}
<           id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
<           name: create-client
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-clients}
<           id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
<           name: query-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-realm}
<           id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
<           name: manage-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-users}
<           id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
<           name: query-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-clients}
<           id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
<           name: manage-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-users}
<           id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
<           name: manage-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-groups}
<           id: b1b19c8d-fd64-4960-a409-dafc455d504e
<           name: query-groups
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - manage-identity-providers
<               - view-events
<               - view-users
<               - view-clients
<               - manage-authorization
<               - impersonation
<               - create-client
<               - query-clients
<               - manage-realm
<               - query-users
<               - manage-clients
<               - manage-users
<               - query-groups
<               - view-realm
<               - query-realms
<               - view-identity-providers
<               - view-authorization
<               - manage-events
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_realm-admin}
<           id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
<           name: realm-admin
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-realm}
<           id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
<           name: view-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-realms}
<           id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
<           name: query-realms
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-identity-providers}
<           id: e1403844-fc62-4522-8181-64a0395a9608
<           name: view-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-events}
<           id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
<           name: manage-events
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-authorization}
<           id: 1bab32ce-418a-4779-875a-aa550bc5720e
<           name: view-authorization
<         security-admin-console: []
<       realm:
<       - attributes: {}
<         clientRole: false
<         composite: true
<         composites:
<           client:
<             account:
<             - manage-account
<             - view-profile
<           realm:
<           - offline_access
<           - uma_authorization
<         containerId: hac-sso
<         description: ${role_default-roles}
<         id: a8d38f0f-7d83-41b7-8236-55998c531760
<         name: default-roles-redhat-external
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_uma_authorization}
<         id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
<         name: uma_authorization
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_offline-access}
<         id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
<         name: offline_access
<     scopeMappings:
<     - clientScope: offline_access
<       roles:
<       - offline_access
<     smtpServer: {}
<     sslRequired: external
<     supportedLocales: []
<     userManagedAccessAllowed: false
1452,1453d426
<     verifyEmail: false
<     waitIncrementSeconds: 60
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 10:05:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 10:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/14 16:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 900c1b8 to 575c8b1 on Tue Mar 14 16:01:23 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index acdfcf2..9c346ae 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 0883dc6..7c2a340 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/14 16:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/14 16:04:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/quality-dashboard/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/quality-dashboard/staging/kustomize.out
160c160
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:62d693e2f57a4c3394a842966f51e646691b28df
244c244
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:62d693e2f57a4c3394a842966f51e646691b28df 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 900c1b8 to 575c8b1 on Tue Mar 14 16:01:23 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index acdfcf2..9c346ae 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 0883dc6..7c2a340 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/14 16:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/14 16:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/14 16:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/quality-dashboard/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/development/components/quality-dashboard/development/kustomize.out
121c121
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:62d693e2f57a4c3394a842966f51e646691b28df
205c205
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:62d693e2f57a4c3394a842966f51e646691b28df 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c6e20f0 to 900c1b8 on Tue Mar 14 14:22:38 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/authentication/base/pipeline-service-sre.yaml b/components/authentication/base/pipeline-service-sre.yaml
index 36e36ac..75189ef 100644
--- a/components/authentication/base/pipeline-service-sre.yaml
+++ b/components/authentication/base/pipeline-service-sre.yaml
@@ -65,7 +65,7 @@ roleRef:
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: tekton-results-maintainers
+  name: pipeline-service-admin
   namespace: tekton-results
 subjects:
   - kind: Group
@@ -74,12 +74,40 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: tekton-chains
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: pipelines-as-code
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: openshift-pipelines-maintainers
+  name: pipeline-service-admin
   namespace: openshift-pipelines
 subjects:
   - kind: Group
@@ -88,7 +116,7 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/authentication/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/authentication/staging/kustomize.out
554c554
<   name: pipeline-service-admin
---
>   name: openshift-pipelines-maintainers
559,573c559
<   name: admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipeline-service-admin
<   namespace: pipelines-as-code
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
---
>   name: component-maintainer
696,710c682
<   name: pipeline-service-admin
<   namespace: tekton-chains
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipeline-service-admin
---
>   name: tekton-results-maintainers
715c687
<   name: admin
---
>   name: component-maintainer
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/14 16:05:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:04:27 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/14 16:05:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c6e20f0 to 900c1b8 on Tue Mar 14 14:22:38 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/authentication/base/pipeline-service-sre.yaml b/components/authentication/base/pipeline-service-sre.yaml
index 36e36ac..75189ef 100644
--- a/components/authentication/base/pipeline-service-sre.yaml
+++ b/components/authentication/base/pipeline-service-sre.yaml
@@ -65,7 +65,7 @@ roleRef:
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: tekton-results-maintainers
+  name: pipeline-service-admin
   namespace: tekton-results
 subjects:
   - kind: Group
@@ -74,12 +74,40 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: tekton-chains
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: pipelines-as-code
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: openshift-pipelines-maintainers
+  name: pipeline-service-admin
   namespace: openshift-pipelines
 subjects:
   - kind: Group
@@ -88,7 +116,7 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/14 16:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/14 16:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Staging changes from 5e6c25e to c6e20f0 on Mon Mar 13 15:29:00 2023 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index d0308cd..9b2ec79 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -215,7 +215,8 @@ if echo $APPS | grep -q spi; then
         kubectl apply -f $SPI_APP_ROLE_FILE  -n spi-system
     fi
     echo "Vault init complete"
-
+  else
+     echo "Vault initialization skipped"
   fi
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 16:04:27 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 16:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:05:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Development changes from 5e6c25e to c6e20f0 on Mon Mar 13 15:29:00 2023 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index d0308cd..9b2ec79 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -215,7 +215,8 @@ if echo $APPS | grep -q spi; then
         kubectl apply -f $SPI_APP_ROLE_FILE  -n spi-system
     fi
     echo "Vault init complete"
-
+  else
+     echo "Vault initialization skipped"
   fi
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 16:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:05:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 16:05:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Staging changes from bd704bc to 5e6c25e on Mon Mar 13 14:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
index 0aa66f4..98586ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/o11y
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/app-of-apps-staging.yaml /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/app-of-apps-staging.yaml
814c814
<             clusterDir: ""
---
>             clusterDir: base
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 16:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 14:04:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 16:05:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 14:04:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Development changes from bd704bc to 5e6c25e on Mon Mar 13 14:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
index 0aa66f4..98586ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/o11y
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 16:05:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 16:05:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 14:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 14:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Staging changes from a1aa328 to bd704bc on Mon Mar 13 12:18:23 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 829ae9b..862da26 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
-- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
deleted file mode 100644
index 76ff6a1..0000000
--- a/components/authentication/base/sandbox-dev.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
----
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests
-  namespace: rh-ee-fmuntean-tenant
-rules:
-- apiGroups:
-  - "toolchain.dev.openshift.com"
-  resources:
-  - "spacerequests"
-  verbs:
-  - "*"
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests-rb
-  namespace: rh-ee-fmuntean-tenant
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/authentication/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/authentication/staging/kustomize.out
21a22,34
>   name: edit-spacerequests
>   namespace: rh-ee-fmuntean-tenant
> rules:
> - apiGroups:
>   - toolchain.dev.openshift.com
>   resources:
>   - spacerequests
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
620a634,647
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: edit-spacerequests-rb
>   namespace: rh-ee-fmuntean-tenant
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: edit-spacerequests
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: mfrancisc
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 14:04:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 12:05:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 14:04:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 12:05:49 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Development changes from a1aa328 to bd704bc on Mon Mar 13 12:18:23 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 829ae9b..862da26 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
-- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
deleted file mode 100644
index 76ff6a1..0000000
--- a/components/authentication/base/sandbox-dev.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
----
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests
-  namespace: rh-ee-fmuntean-tenant
-rules:
-- apiGroups:
-  - "toolchain.dev.openshift.com"
-  resources:
-  - "spacerequests"
-  verbs:
-  - "*"
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests-rb
-  namespace: rh-ee-fmuntean-tenant
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 14:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 14:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 12:06:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 12:06:13 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Staging changes from 04ec6a6 to a1aa328 on Mon Mar 13 10:39:48 2023 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/external-secrets/kustomization.yaml b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
new file mode 100644
index 0000000..ebcfa07
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring-grafana-oauth-config.yaml
+namespace: appstudio-workload-monitoring
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
new file mode 100644
index 0000000..1f427a7
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: monitoring-grafana-oauth-config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+  - extract:
+      key: "" # will be added by the overlays
+      decodingStrategy: Base64
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..7e3abe5
--- /dev/null
+++ b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/monitoring/prd-m01/grafana/grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..db40f35
--- /dev/null
+++ b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/monitoring/grafana/grafana-oauth2-proxy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 12:05:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 10:04:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 12:05:49 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 10:04:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Development changes from 04ec6a6 to a1aa328 on Mon Mar 13 10:39:48 2023 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/external-secrets/kustomization.yaml b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
new file mode 100644
index 0000000..ebcfa07
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring-grafana-oauth-config.yaml
+namespace: appstudio-workload-monitoring
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
new file mode 100644
index 0000000..1f427a7
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: monitoring-grafana-oauth-config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+  - extract:
+      key: "" # will be added by the overlays
+      decodingStrategy: Base64
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..7e3abe5
--- /dev/null
+++ b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/monitoring/prd-m01/grafana/grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..db40f35
--- /dev/null
+++ b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/monitoring/grafana/grafana-oauth2-proxy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 12:06:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 12:06:13 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 10:04:53 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 10:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Staging changes from b9c19d9 to 04ec6a6 on Mon Mar 13 08:59:29 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index d23d2f4..103fd4c 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 40c2334..7a789df 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index d80a0ce..e64055e 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 10:04:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 10:04:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Development changes from b9c19d9 to 04ec6a6 on Mon Mar 13 08:59:29 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index d23d2f4..103fd4c 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 40c2334..7a789df 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index d80a0ce..e64055e 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 10:04:53 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 10:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:05:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 08:05:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Staging changes from f4d7c00 to b9c19d9 on Mon Mar 13 07:39:03 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 97c6fc9..1082ac3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 030f2a8..bf60d49 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
+    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 968e264..c0a7d24 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (124 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/jvm-build-service/kustomize.out
849a850
>   - delete
856a858
>   - patch
861,872d862
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
883,884d872
<   - list
<   - watch
886,892d873
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
896,903c877,878
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
---
>   - list
>   - watch
910a886,890
>   - patch
>   - list
>   - watch
>   - delete
>   - update
917a898
>   - patch
920,927d900
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
935a909
>   - patch
938,945d911
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
961a928
>   - patch
964,971d930
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
1088,1089c1047,1048
<           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
---
>           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
1116c1075
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1120c1079
<       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1122c1081
<       tag: jdk:8,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1124c1083
<       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1126c1085
<       tag: jdk:11,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:11,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1128c1087
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1130c1089
<       tag: jdk:17,maven:3.8,gradle:8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:17,maven:3.8,gradle:7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 08:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 08:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:06:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Development changes from f4d7c00 to b9c19d9 on Mon Mar 13 07:39:03 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 97c6fc9..1082ac3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 030f2a8..bf60d49 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
+    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 968e264..c0a7d24 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (121 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/jvm-build-service/kustomize.out
849a850
>   - delete
856a858
>   - patch
861,872d862
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
883,884d872
<   - list
<   - watch
886,892d873
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
896,903c877,878
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
---
>   - list
>   - watch
910a886,890
>   - patch
>   - list
>   - watch
>   - delete
>   - update
917a898
>   - patch
920,927d900
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
935a909
>   - patch
938,945d911
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
961a928
>   - patch
964,971d930
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
1088,1089c1047,1048
<           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
---
>           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
1116c1075
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1120c1079
<       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1122c1081
<       tag: jdk:8,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1124c1083
<       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1126c1085
<       tag: jdk:11,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:11,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1128c1087
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1130c1089
<       tag: jdk:17,maven:3.8,gradle:8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:17,maven:3.8,gradle:7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 08:05:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 08:05:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 08:06:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Staging changes from e71ef6d to f4d7c00 on Mon Mar 13 07:38:52 2023 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 9bc0874..d5e9abd 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -24,5 +24,6 @@ resources:
   - external-secrets-operator
   - cluster-secret-store
   - image-controller
+  - o11y
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/kustomization.yaml
new file mode 100644
index 0000000..7440a7f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- o11y.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
new file mode 100644
index 0000000..0aa66f4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: o11y
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/o11y
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: o11y-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: o11y
+        server: '{{server}}'
+      syncPolicy:
+        automated: 
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index b22b35b..5f6d6cf 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -52,3 +52,9 @@ kind: ApplicationSet
 metadata:
   name: cluster-secret-store
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: o11y
+$patch: delete
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index b598b16..3d205fb 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -78,3 +78,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: o11y
diff --git a/components/o11y/README.md b/components/o11y/README.md
new file mode 100644
index 0000000..661f93c
--- /dev/null
+++ b/components/o11y/README.md
@@ -0,0 +1,3 @@
+---
+title: O11Y 
+---
diff --git a/components/o11y/base/kustomization.yaml b/components/o11y/base/kustomization.yaml
new file mode 100644
index 0000000..79bc5de
--- /dev/null
+++ b/components/o11y/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+commonLabels:
+  openshift.io/workload-monitoring: "true"
+
+resources:
+- https://github.com/redhat-appstudio/o11y/prometheus/base?ref=6e3901c8971c94a3011691b7f6a7157d597630fc
diff --git a/components/o11y/production/kustomization.yaml b/components/o11y/production/kustomization.yaml
new file mode 100644
index 0000000..ffd7535
--- /dev/null
+++ b/components/o11y/production/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+commonLabels:
+  openshift.io/workload-monitoring: "true"
+
+resources:
+- ../base
diff --git a/components/o11y/staging/kustomization.yaml b/components/o11y/staging/kustomization.yaml
new file mode 100644
index 0000000..ffd7535
--- /dev/null
+++ b/components/o11y/staging/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+commonLabels:
+  openshift.io/workload-monitoring: "true"
+
+resources:
+- ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7000 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/app-of-apps-staging.yaml /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/app-of-apps-staging.yaml
803,848d802
<   name: o11y
<   namespace: argocd-staging
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: staging
<             sourceRoot: components/o11y
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: o11y-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: o11y
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/enterprise-contract/kustomize.out
3a4
>   annotations: {}
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/gitops/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/gitops/staging/stone-stg-rh01/kustomize.out
1,2191d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-argocd
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.1
<   creationTimestamp: null
<   name: gitopsdeploymentmanagedenvironments.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeploymentManagedEnvironment
<     listKind: GitOpsDeploymentManagedEnvironmentList
<     plural: gitopsdeploymentmanagedenvironments
<     singular: gitopsdeploymentmanagedenvironment
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeploymentManagedEnvironment is the Schema for the gitopsdeploymentmanagedenvironments
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: GitOpsDeploymentManagedEnvironmentSpec defines the desired
<               state of GitOpsDeploymentManagedEnvironment
<             properties:
<               allowInsecureSkipTLSVerify:
<                 type: boolean
<               apiURL:
<                 type: string
<               credentialsSecret:
<                 type: string
<             required:
<             - allowInsecureSkipTLSVerify
<             - apiURL
<             - credentialsSecret
<             type: object
<           status:
<             description: GitOpsDeploymentManagedEnvironmentStatus defines the observed
<               state of GitOpsDeploymentManagedEnvironment
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource. --- This struct is intended for direct
<                     use as an array at the field path .status.conditions.  For example,
<                     type FooStatus struct{     // Represents the observations of a
<                     foo's current state.     // Known .status.conditions.type are:
<                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
<                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
<                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
<                     \n     // other fields }"
<                   properties:
<                     lastTransitionTime:
<                       description: lastTransitionTime is the last time the condition
<                         transitioned from one status to another. This should be when
<                         the underlying condition changed.  If that is not known, then
<                         using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: message is a human readable message indicating
<                         details about the transition. This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: observedGeneration represents the .metadata.generation
<                         that the condition was set based upon. For instance, if .metadata.generation
<                         is currently 12, but the .status.conditions[x].observedGeneration
<                         is 9, the condition is out of date with respect to the current
<                         state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: reason contains a programmatic identifier indicating
<                         the reason for the condition's last transition. Producers
<                         of specific condition types may define expected values and
<                         meanings for this field, and whether the values are considered
<                         a guaranteed API. The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
<                         --- Many .condition.type values are consistent across resources
<                         like Available, but because arbitrary conditions can be useful
<                         (see .node.status.conditions), the ability to deconflict is
<                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.1
<   creationTimestamp: null
<   name: gitopsdeploymentrepositorycredentials.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeploymentRepositoryCredential
<     listKind: GitOpsDeploymentRepositoryCredentialList
<     plural: gitopsdeploymentrepositorycredentials
<     singular: gitopsdeploymentrepositorycredential
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeploymentRepositoryCredential is the Schema for the gitopsdeploymentrepositorycredentials
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: GitOpsDeploymentRepositoryCredentialSpec defines the desired
<               state of GitOpsDeploymentRepositoryCredential
<             properties:
<               repository:
<                 description: Repository (HTTPS url, or SSH string) for accessing the
<                   Git repo Required field As of this writing (Mar 2022), we only support
<                   HTTPS URL
<                 type: string
<               secret:
<                 description: Reference to a K8s Secret in the namespace that contains
<                   repository credentials (Git username/password, as of this writing)
<                   Required field
<                 type: string
<             required:
<             - repository
<             - secret
<             type: object
<           status:
<             description: GitOpsDeploymentRepositoryCredentialStatus defines the observed
<               state of GitOpsDeploymentRepositoryCredential
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.1
<   creationTimestamp: null
<   name: gitopsdeployments.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeployment
<     listKind: GitOpsDeploymentList
<     plural: gitopsdeployments
<     singular: gitopsdeployment
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .status.sync.status
<       name: Sync Status
<       type: string
<     - jsonPath: .status.health.status
<       name: Health Status
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeployment is the Schema for the gitopsdeployments API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: GitOpsDeploymentSpec defines the desired state of GitOpsDeployment
<             properties:
<               destination:
<                 description: 'Destination is a reference to a target namespace/cluster
<                   to deploy to. This field may be empty: if it is empty, it is assumed
<                   that the destination is the same namespace as the GitOpsDeployment
<                   CR.'
<                 properties:
<                   environment:
<                     type: string
<                   namespace:
<                     description: The namespace will only be set for namespace-scoped
<                       resources that have not set a value for .metadata.namespace
<                     type: string
<                 type: object
<               source:
<                 description: ApplicationSource contains all required information about
<                   the source of an application
<                 properties:
<                   path:
<                     description: Path is a directory path within the Git repository,
<                       and is only valid for applications sourced from Git.
<                     type: string
<                   repoURL:
<                     description: RepoURL is the URL to the repository (Git or Helm)
<                       that contains the application manifests
<                     type: string
<                   targetRevision:
<                     description: TargetRevision defines the revision of the source
<                       to sync the application to. In case of Git, this can be commit,
<                       tag, or branch. If omitted, will equal to HEAD. In case of Helm,
<                       this is a semver tag for the Chart's version.
<                     type: string
<                 required:
<                 - path
<                 - repoURL
<                 type: object
<               syncPolicy:
<                 description: SyncPolicy controls when and how a sync will be performed.
<                 properties:
<                   syncOptions:
<                     description: Options allow you to specify whole app sync-options.
<                       This option may be empty, if and when it is empty it is considered
<                       that there are no SyncOptions present.
<                     items:
<                       type: string
<                     type: array
<                 type: object
<               type:
<                 description: "Two possible values: - Automated: whenever a new commit
<                   occurs in the GitOps repository, or the Argo CD Application is out
<                   of sync, Argo CD should be told to (re)synchronize. - Manual: Argo
<                   CD should never be told to resynchronize. Instead, synchronize operations
<                   will be triggered via GitOpsDeploymentSyncRun operations only. -
<                   See `GitOpsDeploymentSpecType*` \n Note: This is somewhat of a placeholder
<                   for more advanced logic that can be implemented in the future. For
<                   an example of this type of logic, see the 'syncPolicy' field of
<                   Argo CD Application."
<                 type: string
<             required:
<             - source
<             - type
<             type: object
<           status:
<             description: GitOpsDeploymentStatus defines the observed state of GitOpsDeployment
<             properties:
<               conditions:
<                 items:
<                   description: GitOpsDeploymentCondition contains details about an
<                     GitOpsDeployment condition, which is usually an error or warning
<                   properties:
<                     lastProbeTime:
<                       description: LastProbeTime is the last time the condition was
<                         observed.
<                       format: date-time
<                       type: string
<                     lastTransitionTime:
<                       description: LastTransitionTime is the last time the condition
<                         transitioned from one status to another.
<                       format: date-time
<                       type: string
<                     message:
<                       description: Message contains human-readable message indicating
<                         details about the last condition.
<                       type: string
<                     reason:
<                       description: Reason is a unique, one-word, CamelCase reason
<                         for the condition's last transition.
<                       type: string
<                     status:
<                       description: Status is the status of the condition.
<                       type: string
<                     type:
<                       description: Type is a GitOpsDeployment condition type
<                       type: string
<                   required:
<                   - status
<                   - type
<                   type: object
<                 type: array
<               health:
<                 description: Health contains information about the application's current
<                   health status
<                 properties:
<                   message:
<                     description: Message is a human-readable informational message
<                       describing the health status
<                     type: string
<                   status:
<                     description: Status holds the status code of the application or
<                       resource
<                     type: string
<                 type: object
<               reconciledState:
<                 description: ReconciledState lists last deployment of ArgoCD Application
<                 properties:
<                   destination:
<                     description: GitOpsDeploymentDestination contains the information
<                       of .status.Sync.CompareTo.Destination field of ArgoCD Application
<                     properties:
<                       name:
<                         type: string
<                       namespace:
<                         type: string
<                     required:
<                     - name
<                     - namespace
<                     type: object
<                   source:
<                     description: GitOpsDeploymentSource contains the information of
<                       .status.Sync.CompareTo.Source field of ArgoCD Application
<                     properties:
<                       branch:
<                         type: string
<                       path:
<                         description: Path contains path from .status.Sync.CompareTo
<                           field of ArgoCD Application
<                         type: string
<                       repoURL:
<                         type: string
<                     required:
<                     - branch
<                     - path
<                     - repoURL
<                     type: object
<                 required:
<                 - destination
<                 - source
<                 type: object
<               resources:
<                 description: List of Resource created by a deployment
<                 items:
<                   description: ResourceStatus holds the current sync and health status
<                     of a resource
<                   properties:
<                     group:
<                       type: string
<                     health:
<                       description: HealthStatus contains information about the currently
<                         observed health state of an application or resource
<                       properties:
<                         message:
<                           description: Message is a human-readable informational message
<                             describing the health status
<                           type: string
<                         status:
<                           description: Status holds the status code of the application
<                             or resource
<                           type: string
<                       type: object
<                     kind:
<                       type: string
<                     name:
<                       type: string
<                     namespace:
<                       type: string
<                     status:
<                       description: SyncStatusCode is a type which represents possible
<                         comparison results
<                       type: string
<                     version:
<                       type: string
<                   type: object
<                 type: array
<               sync:
<                 description: SyncStatus contains information about the currently observed
<                   live and desired states of an application
<                 properties:
<                   revision:
<                     description: Revision contains information about the revision
<                       the comparison has been performed to
<                     type: string
<                   status:
<                     description: Status is the sync state of the comparison
<                     type: string
<                 required:
<                 - status
<                 type: object
<             required:
<             - reconciledState
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.1
<   creationTimestamp: null
<   name: gitopsdeploymentsyncruns.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: GitOpsDeploymentSyncRun
<     listKind: GitOpsDeploymentSyncRunList
<     plural: gitopsdeploymentsyncruns
<     singular: gitopsdeploymentsyncrun
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: GitOpsDeploymentSyncRun is the Schema for the gitopsdeploymentsyncruns
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: GitOpsDeploymentSyncRunSpec defines the desired state of
<               GitOpsDeploymentSyncRun
<             properties:
<               gitopsDeploymentName:
<                 type: string
<               revisionID:
<                 type: string
<             required:
<             - gitopsDeploymentName
<             type: object
<           status:
<             description: GitOpsDeploymentSyncRunStatus defines the observed state
<               of GitOpsDeploymentSyncRun
<             properties:
<               conditions:
<                 items:
<                   description: GitOpsDeploymentCondition contains details about an
<                     applicationset condition, which is usally an error or warning
<                   properties:
<                     lastTransitionTime:
<                       description: LastTransitionTime is the time the condition was
<                         last observed
<                       format: date-time
<                       type: string
<                     message:
<                       description: Message contains human-readable message indicating
<                         details about condition
<                       type: string
<                     reason:
<                       description: Single word camelcase representing the reason for
<                         the status eg ErrorOccurred
<                       type: string
<                     status:
<                       description: True/False/Unknown
<                       type: string
<                     type:
<                       description: Type is an applicationset condition type
<                       type: string
<                   required:
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     controller-gen.kubebuilder.io/version: v0.6.1
<   creationTimestamp: null
<   name: operations.managed-gitops.redhat.com
< spec:
<   group: managed-gitops.redhat.com
<   names:
<     kind: Operation
<     listKind: OperationList
<     plural: operations
<     singular: operation
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: Operation is the Schema for the operations API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: OperationSpec defines the desired state of Operation
<             properties:
<               operationID:
<                 type: string
<             type: object
<           status:
<             description: OperationStatus defines the observed state of Operation
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< status:
<   acceptedNames:
<     kind: ""
<     plural: ""
<   conditions: []
<   storedVersions: []
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-leader-election-role
<   namespace: gitops
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-leader-election-role
<   namespace: gitops
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-leader-election-role
<   namespace: gitops
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: gitops-appstudio-service-manager-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - applications/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - environments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - environments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - environments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - promotionruns
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - promotionruns/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - promotionruns/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshotenvironmentbindings/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/status
<   verbs:
<   - get
<   - patch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: gitops-core-service-manager-role
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentmanagedenvironments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentrepositorycredentials
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentrepositorycredentials/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentrepositorycredentials/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeployments/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentsyncruns
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentsyncruns/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - gitopsdeploymentsyncruns/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: gitops-service-agent-manager-role
< rules:
< - apiGroups:
<   - argoproj.io
<   resources:
<   - applications
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - argoproj.io
<   resources:
<   - appprojects
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - argoproj.io
<   resources:
<   - argocds
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - managed-gitops.redhat.com
<   resources:
<   - operations/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - route.openshift.io
<   resources:
<   - routes
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-leader-election-rolebinding
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-appstudio-service-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-leader-election-rolebinding
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-core-service-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-leader-election-rolebinding
<   namespace: gitops
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: gitops-service-agent-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-appstudio-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-appstudio-service-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-core-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-core-service-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-service-agent-manager-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: gitops-service-agent-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< ---
< apiVersion: v1
< data:
<   controller_manager_config.yaml: |
<     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
<     kind: ControllerManagerConfig
<     health:
<       healthProbeBindAddress: :8081
<     metrics:
<       bindAddress: 127.0.0.1:8080
<     webhook:
<       port: 9443
<     leaderElection:
<       leaderElect: true
<       resourceName: 53746cb8.redhat.com
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-appstudio-service-manager-config
<   namespace: gitops
< ---
< apiVersion: v1
< data:
<   controller_manager_config.yaml: |
<     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
<     kind: ControllerManagerConfig
<     health:
<       healthProbeBindAddress: :8081
<     metrics:
<       bindAddress: 127.0.0.1:8080
<     webhook:
<       port: 9443
<     leaderElection:
<       leaderElect: true
<       resourceName: 5a3f596c.redhat.com
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-core-service-manager-config
<   namespace: gitops
< ---
< apiVersion: v1
< data:
<   controller_manager_config.yaml: |
<     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
<     kind: ControllerManagerConfig
<     health:
<       healthProbeBindAddress: :8081
<     metrics:
<       bindAddress: 127.0.0.1:8080
<     webhook:
<       port: 9443
<     leaderElection:
<       leaderElect: true
<       resourceName: 5a3f596c.redhat.com
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: gitops-service-agent-manager-config
<   namespace: gitops
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: appstudio-controller-manager
<   name: gitops-appstudio-service-controller-manager-metrics-service
<   namespace: gitops
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: metrics
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: appstudio-controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
<   name: gitops-appstudio-service-webhook-service
<   namespace: gitops
< spec:
<   ports:
<   - port: 443
<     protocol: TCP
<     targetPort: 9443
<   selector:
<     control-plane: appstudio-controller-manager
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: backend-controller-manager
<   name: gitops-core-service-controller-manager-metrics-service
<   namespace: gitops
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: metrics
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: backend-controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: cluster-agent-controller-manager
<   name: gitops-service-agent-controller-manager-metrics-service
<   namespace: gitops
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: metrics
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: cluster-agent-controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: appstudio-controller-manager
<   name: gitops-appstudio-service-controller-manager
<   namespace: gitops
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: appstudio-controller-manager
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         kubectl.kubernetes.io/default-container: manager
<       labels:
<         control-plane: appstudio-controller-manager
<     spec:
<       containers:
<       - args:
<         - --leader-elect
<         - --zap-time-encoding=rfc3339nano
<         - --health-probe-bind-address=:8085
<         - --metrics-bind-address=:8080
<         command:
<         - appstudio-controller
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8085
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         - containerPort: 9443
<           name: webhook-server
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8085
<           initialDelaySeconds: 15
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 1024Mi
<           requests:
<             cpu: 50m
<             memory: 256Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tmp/k8s-webhook-server/serving-certs
<           name: cert
<           readOnly: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=10
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
<         imagePullPolicy: IfNotPresent
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources: {}
<         terminationMessagePath: /dev/termination-log
<         terminationMessagePolicy: File
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: gitops-appstudio-service-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - name: cert
<         secret:
<           defaultMode: 420
<           secretName: webhook-server-cert
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: backend-controller-manager
<   name: gitops-core-service-controller-manager
<   namespace: gitops
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: backend-controller-manager
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         control-plane: backend-controller-manager
<     spec:
<       containers:
<       - args:
<         - --health-probe-bind-address=:18081
<         - --metrics-bind-address=:8080
<         - --leader-elect
<         - --zap-time-encoding=rfc3339nano
<         command:
<         - gitops-service-backend
<         env:
<         - name: ARGO_CD_NAMESPACE
<           value: gitops-service-argocd
<         - name: DB_ADDR
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: gitops-service-postgres-rds-config
<         - name: DB_PASS
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: gitops-service-postgres-rds-config
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 18081
<           initialDelaySeconds: 120
<           periodSeconds: 60
<         name: manager
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 18081
<           initialDelaySeconds: 180
<           periodSeconds: 30
<         resources:
<           limits:
<             cpu: 2000m
<             memory: 4800Mi
<           requests:
<             cpu: 1000m
<             memory: 2400Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=10
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
<         imagePullPolicy: IfNotPresent
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources: {}
<         terminationMessagePath: /dev/termination-log
<         terminationMessagePolicy: File
<       initContainers:
<       - command:
<         - /init-container/init-container
<         env:
<         - name: ARGO_CD_NAMESPACE
<           value: gitops-service-argocd
<         - name: DB_ADDR
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: gitops-service-postgres-rds-config
<         - name: DB_PASS
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: gitops-service-postgres-rds-config
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
<         name: init-container
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: gitops-core-service-controller-manager
<       terminationGracePeriodSeconds: 10
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     control-plane: cluster-agent-controller-manager
<   name: gitops-service-agent-controller-manager
<   namespace: gitops
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: cluster-agent-controller-manager
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         control-plane: cluster-agent-controller-manager
<     spec:
<       containers:
<       - args:
<         - --health-probe-bind-address=:8083
<         - --metrics-bind-address=:8080
<         - --leader-elect
<         - --zap-time-encoding=rfc3339nano
<         command:
<         - gitops-service-cluster-agent
<         env:
<         - name: ARGO_CD_NAMESPACE
<           value: gitops-service-argocd
<         - name: DB_ADDR
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.host
<               name: gitops-service-postgres-rds-config
<         - name: DB_PASS
<           value: ""
<           valueFrom:
<             secretKeyRef:
<               key: db.password
<               name: gitops-service-postgres-rds-config
<         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8083
<           initialDelaySeconds: 45
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8080
<           name: http-metrics
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8083
<           initialDelaySeconds: 45
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 300m
<             memory: 1000Mi
<           requests:
<             cpu: 200m
<             memory: 300Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tmp
<           name: tmp
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=10
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
<         imagePullPolicy: IfNotPresent
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources: {}
<         terminationMessagePath: /dev/termination-log
<         terminationMessagePolicy: File
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: gitops-service-agent-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - emptyDir: {}
<         name: tmp
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ArgoCD
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   finalizers:
<   - argoproj.io/finalizer
<   name: gitops-service-argocd
<   namespace: gitops-service-argocd
< spec:
<   applicationSet:
<     resources:
<       limits:
<         cpu: "1"
<         memory: 1Gi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<   controller:
<     appSync: 60s
<     logLevel: debug
<     processors: {}
<     resources:
<       limits:
<         cpu: "1"
<         memory: 3Gi
<       requests:
<         cpu: 250m
<         memory: 256Mi
<     sharding: {}
<   grafana:
<     enabled: false
<     ingress:
<       enabled: false
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<     route:
<       enabled: false
<   ha:
<     enabled: false
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<   initialSSHKnownHosts: {}
<   prometheus:
<     enabled: false
<     ingress:
<       enabled: false
<     route:
<       enabled: false
<   rbac:
<     policy: g, system:authenticated, role:admin
<     scopes: '[groups]'
<   redis:
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 250m
<         memory: 128Mi
<   repo:
<     logLevel: debug
<     resources:
<       limits:
<         cpu: "1"
<         memory: 1Gi
<       requests:
<         cpu: 250m
<         memory: 256Mi
<   resourceInclusions: |
<     - apiGroups:
<       - ""
<       kinds:
<       - "PersistentVolumeClaim"
<       - "PersistentVolume"
<       - "Secret"
<       - "ConfigMap"
<       - "Pod"
<       - "Endpoint"
<       - "Service"
<       - "ServiceAccounts"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "apps"
<       kinds:
<       - "ReplicaSet"
<       - "StatefulSet"
<       - "DaemonSet"
<       - "Deployment"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "discovery.k8s.io"
<       kinds:
<       - "EndpointSlice"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "networking.k8s.io"
<       kinds:
<       - "Ingress"
<       - "IngressClass"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "rbac.authorization.k8s.io"
<       kinds:
<       - "RoleBinding"
<       - "Role"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "route.openshift.io"
<       kinds:
<       - "Route"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "triggers.tekton.dev"
<       kinds:
<       - "EventListener"
<       - "TriggerTemplate"
<       clusters:
<       - "*"
<     - apiGroups:
<       - "pipelinesascode.tekton.dev"
<       kinds:
<       - "Repository"
<       clusters:
<       - "*"
<   server:
<     autoscale:
<       enabled: false
<     grpc:
<       ingress:
<         enabled: false
<     ingress:
<       enabled: false
<     logLevel: debug
<     resources:
<       limits:
<         cpu: 500m
<         memory: 256Mi
<       requests:
<         cpu: 125m
<         memory: 128Mi
<     route:
<       enabled: true
<       tls:
<         termination: reencrypt
<     service:
<       type: ""
<   tls:
<     ca: {}
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: gitops-service-postgres-rds-config
<   namespace: gitops
< spec:
<   dataFrom:
<   - extract:
<       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: gitops-service-postgres-rds-config
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: openshift-gitops-operator
<   namespace: openshift-operators
< spec:
<   channel: gitops-1.7
<   installPlanApproval: Automatic
<   name: openshift-gitops-operator
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: admissionregistration.k8s.io/v1
< kind: ValidatingWebhookConfiguration
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     service.beta.openshift.io/inject-cabundle: "true"
<   creationTimestamp: null
<   name: gitops-appstudio-service-validating-webhook-configuration
< webhooks:
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshot
<   failurePolicy: Fail
<   name: vsnapshot.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshots
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-snapshotenvironmentbinding
<   failurePolicy: Fail
<   name: vsnapshotenvironmentbinding.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - snapshotenvironmentbindings
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: gitops-appstudio-service-webhook-service
<       namespace: gitops
<       path: /validate-appstudio-redhat-com-v1alpha1-promotionrun
<   failurePolicy: Fail
<   name: vpromotionrun.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     - UPDATE
<     resources:
<     - promotionruns
<   sideEffects: None
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/has/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/has/staging/kustomize.out
0a1,855
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: application-service
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: application-service-leader-election-role
>   namespace: application-service
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: application-service-application-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: application-service-application-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: application-service-component-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: application-service-component-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: application-service-componentdetectionquery-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: application-service-componentdetectionquery-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: application-service-manager-role
> rules:
> - apiGroups:
>   - apis.kcp.dev
>   resources:
>   - apibindings
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-manager-role-build
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - secrets
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - create
>   - watch
>   - update
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-manager-role-spi
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - spiaccesstokenbindings
>   - spiaccesstokens
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - list
>   - get
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-has
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: application-service-leader-election-rolebinding
>   namespace: application-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: application-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: application-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-manager-rolebinding-build
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-manager-role-build
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-manager-rolebinding-spi
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-manager-role-spi
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-has
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-has
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: v1
> data:
>   DEVFILE_REGISTRY_URL: ""
> kind: ConfigMap
> metadata:
>   name: application-service-application-service-devfile-registry-config
>   namespace: application-service
> ---
> apiVersion: v1
> data:
>   GITHUB_ORG: ""
> kind: ConfigMap
> metadata:
>   name: application-service-application-service-github-config
>   namespace: application-service
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: f50829e1.redhat.com
> kind: ConfigMap
> metadata:
>   name: application-service-application-service-manager-config
>   namespace: application-service
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: application-service-controller-manager-metrics-service
>   namespace: application-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   name: application-service-webhook-service
>   namespace: application-service
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: application-service-application-service-controller-manager
>   namespace: application-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         env:
>         - name: ENABLE_PPROF
>           value: "true"
>         - name: IMAGE_REPOSITORY
>           value: ""
>         - name: GITHUB_ORG
>           valueFrom:
>             configMapKeyRef:
>               key: GITHUB_ORG
>               name: application-service-application-service-github-config
>               optional: true
>         - name: GITHUB_AUTH_TOKEN
>           valueFrom:
>             secretKeyRef:
>               key: token
>               name: has-github-token
>               optional: true
>         - name: CDQ_GITHUB_TOKEN
>           valueFrom:
>             secretKeyRef:
>               key: cdq-token
>               name: has-github-token
>               optional: true
>         - name: DEVFILE_REGISTRY_URL
>           valueFrom:
>             configMapKeyRef:
>               key: DEVFILE_REGISTRY_URL
>               name: application-service-application-service-devfile-registry-config
>               optional: true
>         image: quay.io/redhat-appstudio/application-service:d4d3f6e353a7f300de0e91a5bf9333a222d412bc
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 2Gi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: application-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: has-github-token
>   namespace: application-service
> spec:
>   dataFrom:
>   - extract:
>       key: staging/has/github-token
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: has-github-token
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: MutatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: application-service-mutating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-application
>   failurePolicy: Fail
>   name: mapplication.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - applications
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-component
>   failurePolicy: Fail
>   name: mcomponent.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - components
>   sideEffects: None
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: application-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /validate-appstudio-redhat-com-v1alpha1-application
>   failurePolicy: Fail
>   name: vapplication.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - applications
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /validate-appstudio-redhat-com-v1alpha1-component
>   failurePolicy: Fail
>   name: vcomponent.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - components
>   sideEffects: None
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/image-controller/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/image-controller/staging/kustomize.out
0a1,316
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: image-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: image-controller-leader-election-role
>   namespace: image-controller
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: image-controller-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: image-controller-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: image-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: image-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: image-controller-leader-election-rolebinding
>   namespace: image-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: image-controller-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: image-controller-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: image-controller-manager-role
> subjects:
> - kind: ServiceAccount
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: image-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: image-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: ed4c18c3.appstudio.redhat.com
>     # leaderElectionReleaseOnCancel defines if the leader should step down volume
>     # when the Manager ends. This requires the binary to immediately end when the
>     # Manager is stopped, otherwise, this setting is unsafe. Setting this significantly
>     # speeds up voluntary leader transitions as the new leader don't have to wait
>     # LeaseDuration time first.
>     # In the default scaffold provided, the program ends immediately after
>     # the manager stops, so would be fine to enable this option. However,
>     # if you are doing or is intended to do any operation such as perform cleanups
>     # after the manager stops then its usage might be unsafe.
>     # leaderElectionReleaseOnCancel: true
> kind: ConfigMap
> metadata:
>   name: image-controller-manager-config
>   namespace: image-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: image-controller-controller-manager-metrics-service
>   namespace: image-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: image-controller-controller-manager
>   namespace: image-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         image: quay.io/redhat-appstudio/image-controller:8fea7b436f4ec8362a645bcf5bee14427686c83e
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 2Gi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>         volumeMounts:
>         - mountPath: /workspace
>           name: quaytoken
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: image-controller-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: quaytoken
>         secret:
>           secretName: quaytoken
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: quaytoken
>   namespace: image-controller
> spec:
>   dataFrom:
>   - extract:
>       key: staging/build/image-controller
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: quaytoken
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/integration/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/integration/kustomize.out
0a1,1087
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>     openshift.io/cluster-monitoring: "true"
>   name: integration-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: integrationtestscenarios.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: IntegrationTestScenario
>     listKind: IntegrationTestScenarioList
>     plural: integrationtestscenarios
>     singular: integrationtestscenario
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
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
>                     required:
>                     - env
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: EnvironmentType currently indicates whether an environment
>                       is POC/Non-POC, see API doc for details.
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
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: integration-service-leader-election-role
>   namespace: integration-service
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-integration
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: integration-service-application-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: integration-service-component-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-environment-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: integration-service-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-prometheus-viewer-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - nodes
>   - nodes/metrics
>   - services
>   - endpoints
>   - pods
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-release-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-release-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-releaseplan-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshotenvironmentbinding-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-tekton-editor-role
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: integration-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: integration-service-leader-election-rolebinding
>   namespace: integration-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: integration-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-integration
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-integration
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-application-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-application-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-component-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-component-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-environment-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-environment-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-integrationtestscenario-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-integrationtestscenario-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-prometheus-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-prometheus-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: prometheus-k8s
>   namespace: openshift-monitoring
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-release-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-release-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-releaseplan-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-releaseplan-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshot-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshot-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshotenvironmentbinding-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshotenvironmentbinding-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-tekton-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-tekton-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: f1944211.redhat.com
> kind: ConfigMap
> metadata:
>   name: integration-service-manager-config
>   namespace: integration-service
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-controller-manager-metrics-service
>   namespace: integration-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-integration-service-controller-manager
>   namespace: integration-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         image: quay.io/redhat-appstudio/integration-service:41fbdb124775323f58fd5ce93c70bb7d79c20650
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 512Mi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: integration-service-controller-manager
>       terminationGracePeriodSeconds: 10
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-controller-manager-metrics-monitor
>   namespace: integration-service
> spec:
>   endpoints:
>   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
Only in /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components: o11y
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1d0
< 2023/03/13 08:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1d0
< 2023/03/13 08:06:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/release/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/release/kustomize.out
0a1,2483
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>     openshift.io/cluster-monitoring: "true"
>   name: release-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releaseplanadmissions.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ReleasePlanAdmission
>     listKind: ReleasePlanAdmissionList
>     plural: releaseplanadmissions
>     singular: releaseplanadmission
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.displayName
>       name: Display Name
>       priority: 1
>       type: string
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     - jsonPath: .spec.environment
>       name: Environment
>       type: string
>     - jsonPath: .spec.releaseStrategy
>       name: Strategy
>       type: string
>     - jsonPath: .spec.origin
>       name: Origin
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ReleasePlanAdmission is the Schema for the ReleasePlanAdmissions
>           API.
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
>             description: ReleasePlanAdmissionSpec defines the desired state of ReleasePlanAdmission.
>             properties:
>               application:
>                 description: Application is a reference to the application to be released
>                   in the managed namespace
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               displayName:
>                 description: DisplayName is the long name of the ReleasePlanAdmission
>                 type: string
>               environment:
>                 description: Environment defines which Environment will be used to
>                   release the application
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               origin:
>                 description: Origin references where the release requests should come
>                   from
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               releaseStrategy:
>                 description: Release Strategy defines which strategy will be used
>                   to release the application
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - application
>             - origin
>             - releaseStrategy
>             type: object
>           status:
>             description: ReleasePlanAdmissionStatus defines the observed state of
>               ReleasePlanAdmission.
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releaseplans.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ReleasePlan
>     listKind: ReleasePlanList
>     plural: releaseplans
>     singular: releaseplan
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.displayName
>       name: Display Name
>       priority: 1
>       type: string
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     - jsonPath: .spec.target
>       name: Target
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ReleasePlan is the Schema for the ReleasePlans API.
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
>             description: ReleasePlanSpec defines the desired state of ReleasePlan.
>             properties:
>               application:
>                 description: Application is a reference to the application to be released
>                   in the managed namespace
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               displayName:
>                 description: DisplayName is the long name of the ReleasePlan
>                 type: string
>               target:
>                 description: Target references where to send the release requests
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - application
>             - target
>             type: object
>           status:
>             description: ReleasePlanStatus defines the observed state of ReleasePlan.
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releases.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Release
>     listKind: ReleaseList
>     plural: releases
>     singular: release
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.snapshot
>       name: Snapshot
>       type: string
>     - jsonPath: .status.conditions[?(@.type=="Succeeded")].status
>       name: Succeeded
>       type: string
>     - jsonPath: .status.conditions[?(@.type=="Succeeded")].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.releasePipelineRun
>       name: PipelineRun
>       priority: 1
>       type: string
>     - jsonPath: .status.startTime
>       name: Start Time
>       priority: 1
>       type: date
>     - jsonPath: .status.completionTime
>       name: Completion Time
>       priority: 1
>       type: date
>     - jsonPath: .status.deploymentStartTime
>       name: Deployment Start Time
>       priority: 1
>       type: date
>     - jsonPath: .status.deploymentCompletionTime
>       name: Deployment Completion Time
>       priority: 1
>       type: date
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Release is the Schema for the releases API
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
>             description: ReleaseSpec defines the desired state of Release.
>             properties:
>               releasePlan:
>                 description: ReleasePlan to use for this particular Release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               snapshot:
>                 description: Snapshot to be released
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - releasePlan
>             - snapshot
>             type: object
>           status:
>             description: ReleaseStatus defines the observed state of Release.
>             properties:
>               completionTime:
>                 description: CompletionTime is the time the Release PipelineRun completed
>                 format: date-time
>                 type: string
>               conditions:
>                 description: Conditions represent the latest available observations
>                   for the release
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
>               deploymentCompletionTime:
>                 description: DeploymentCompletionTime is the time when the SnapshotEnvironmentBinding
>                   has all components deployed
>                 format: date-time
>                 type: string
>               deploymentStartTime:
>                 description: DeploymentStartTime is the time when the SnapshotEnvironmentBinding
>                   was created
>                 format: date-time
>                 type: string
>               releasePipelineRun:
>                 description: ReleasePipelineRun contains the namespaced name of the
>                   release PipelineRun executed as part of this release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               releaseStrategy:
>                 description: ReleaseStrategy contains the namespaced name of the ReleaseStrategy
>                   used for this release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               snapshotEnvironmentBinding:
>                 description: SnapshotEnvironmentBinding contains the namespaced name
>                   of the SnapshotEnvironmentBinding created as part of this release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               startTime:
>                 description: StartTime is the time when the Release PipelineRun was
>                   created and set to run
>                 format: date-time
>                 type: string
>               target:
>                 description: Target references where this release is intended to be
>                   released to
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releasestrategies.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ReleaseStrategy
>     listKind: ReleaseStrategyList
>     plural: releasestrategies
>     singular: releasestrategy
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ReleaseStrategy is the Schema for the releasestrategies API
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
>             description: ReleaseStrategySpec defines the desired state of ReleaseStrategy
>             properties:
>               bundle:
>                 description: Bundle is a reference to the Tekton bundle where to find
>                   the pipeline
>                 type: string
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: Params holds the definition of a parameter that should
>                     be passed to the release Pipeline
>                   properties:
>                     name:
>                       description: Name is the name of the parameter
>                       type: string
>                     value:
>                       description: Value is the string value of the parameter
>                       type: string
>                     values:
>                       description: Values is a list of values for the parameter
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               persistentVolumeClaim:
>                 description: PersistentVolumeClaim is the pvc to use in the Release
>                   pipeline namespace
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               pipeline:
>                 description: Release Tekton Pipeline to execute
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               policy:
>                 description: Policy to validate before releasing an artifact
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               serviceAccount:
>                 description: ServiceAccount is the name of the service account to
>                   use in the release PipelineRun to gain elevated privileges
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - pipeline
>             - policy
>             type: object
>           status:
>             description: ReleaseStrategyStatus defines the observed state of ReleaseStrategy
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: release-service-leader-election-role
>   namespace: release-service
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-release
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: release-service-application-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: release-service-component-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-environment-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: release-service-manager-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies/status
>   verbs:
>   - get
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-prometheus-viewer-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - nodes
>   - nodes/metrics
>   - services
>   - endpoints
>   - pods
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-release-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-release-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplan-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplan-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplanadmission-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplanadmission-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releasestrategy-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releasestrategy-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-snapshot-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-snapshot-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-snapshotenvironmentbinding-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-tekton-role
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: release-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: release-service-leader-election-rolebinding
>   namespace: release-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: release-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-release
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-release
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-application-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-application-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-component-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-component-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-environment-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-environment-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-prometheus-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-prometheus-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: prometheus-k8s
>   namespace: openshift-monitoring
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-release-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-release-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-releaseplan-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-releaseplan-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-releaseplanadmission-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-releaseplanadmission-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-releasestrategy-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-releasestrategy-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-snapshot-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-snapshot-editor-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-snapshotenvironmentbinding-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-snapshotenvironmentbinding-editor-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-tekton-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-tekton-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: v1
> data:
>   release-attempts.json: |
>     {
>       "annotations": {
>         "list": [
>           {
>             "builtIn": 1,
>             "datasource": {
>               "type": "grafana",
>               "uid": "-- Grafana --"
>             },
>             "enable": true,
>             "hide": true,
>             "iconColor": "rgba(0, 211, 255, 1)",
>             "name": "Annotations & Alerts",
>             "target": {
>               "limit": 100,
>               "matchAny": false,
>               "tags": [],
>               "type": "dashboard"
>             },
>             "type": "dashboard"
>           }
>         ]
>       },
>       "editable": true,
>       "fiscalYearStartMonth": 0,
>       "graphTooltip": 0,
>       "links": [],
>       "liveNow": false,
>       "panels": [
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "none"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 0
>           },
>           "id": 10,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_total[$__range]))",
>               "instant": true,
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Total number of releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 6,
>             "x": 3,
>             "y": 0
>           },
>           "id": 16,
>           "maxDataPoints": 25,
>           "options": {
>             "displayMode": "gradient",
>             "minVizHeight": 10,
>             "minVizWidth": 0,
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "showUnfilled": true
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum without(instance,namespace,pod) (release_attempt_running_seconds_bucket{job=\"release-service-controller-manager-metrics-service\"})",
>               "format": "heatmap",
>               "instant": false,
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to start running releases",
>           "type": "bargauge"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 6,
>             "x": 9,
>             "y": 0
>           },
>           "id": 15,
>           "maxDataPoints": 25,
>           "options": {
>             "displayMode": "gradient",
>             "minVizHeight": 10,
>             "minVizWidth": 0,
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "showUnfilled": true
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum without(instance,pod,strategy,succeeded,target) (release_attempt_duration_seconds_bucket{reason=\"Succeeded\"})",
>               "format": "heatmap",
>               "instant": false,
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to complete releases",
>           "type": "bargauge"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "palette-classic"
>               },
>               "custom": {
>                 "axisCenteredZero": false,
>                 "axisColorMode": "text",
>                 "axisLabel": "",
>                 "axisPlacement": "auto",
>                 "barAlignment": 0,
>                 "drawStyle": "line",
>                 "fillOpacity": 0,
>                 "gradientMode": "none",
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "lineInterpolation": "linear",
>                 "lineWidth": 2,
>                 "pointSize": 5,
>                 "scaleDistribution": {
>                   "type": "linear"
>                 },
>                 "showPoints": "auto",
>                 "spanNulls": true,
>                 "stacking": {
>                   "group": "A",
>                   "mode": "none"
>                 },
>                 "thresholdsStyle": {
>                   "mode": "off"
>                 }
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   }
>                 ]
>               }
>             },
>             "overrides": [
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Error"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "red",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               },
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Requeue"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "yellow",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               },
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Requeue after"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "purple",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               },
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Success"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "green",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               }
>             ]
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 9,
>             "x": 15,
>             "y": 0
>           },
>           "id": 19,
>           "options": {
>             "legend": {
>               "calcs": [],
>               "displayMode": "list",
>               "placement": "bottom",
>               "showLegend": true
>             },
>             "tooltip": {
>               "mode": "single",
>               "sort": "none"
>             }
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"error\"})",
>               "hide": false,
>               "legendFormat": "Error",
>               "range": true,
>               "refId": "A"
>             },
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"requeue\"})",
>               "hide": false,
>               "legendFormat": "Requeue",
>               "range": true,
>               "refId": "B"
>             },
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"requeue_after\"})",
>               "hide": false,
>               "legendFormat": "Requeue after",
>               "range": true,
>               "refId": "C"
>             },
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"success\"})",
>               "legendFormat": "Success",
>               "range": true,
>               "refId": "D"
>             }
>           ],
>           "title": "Total number of reconciles by type",
>           "type": "timeseries"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "fixedColor": "red",
>                 "mode": "fixed"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "min": 0,
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "semi-dark-red",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "none"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 3
>           },
>           "id": 12,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "center",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_total{succeeded=\"false\"}[$__range]))",
>               "instant": true,
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Total number failed releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "noValue": "0%",
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "percentunit"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 6
>           },
>           "id": 11,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_total{succeeded=\"true\"}[$__range])) / sum(increase(release_attempt_total[$__range]))",
>               "instant": true,
>               "interval": "",
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Percentage of successful releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "custom": {
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "scaleDistribution": {
>                   "type": "linear"
>                 }
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 9,
>             "w": 6,
>             "x": 3,
>             "y": 6
>           },
>           "id": 13,
>           "maxDataPoints": 15,
>           "options": {
>             "calculate": false,
>             "cellGap": 1,
>             "color": {
>               "exponent": 0.5,
>               "fill": "dark-orange",
>               "mode": "scheme",
>               "reverse": false,
>               "scale": "exponential",
>               "scheme": "Oranges",
>               "steps": 64
>             },
>             "exemplars": {
>               "color": "rgba(255,0,255,0.7)"
>             },
>             "filterValues": {
>               "le": 1e-9
>             },
>             "legend": {
>               "show": false
>             },
>             "rowsFrame": {
>               "layout": "auto"
>             },
>             "tooltip": {
>               "show": true,
>               "yHistogram": false
>             },
>             "yAxis": {
>               "axisPlacement": "left",
>               "reverse": false
>             }
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(increase(release_attempt_running_seconds_bucket[$__interval])) by(le)",
>               "format": "heatmap",
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to start running releases",
>           "type": "heatmap"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "custom": {
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "scaleDistribution": {
>                   "type": "linear"
>                 }
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 9,
>             "w": 6,
>             "x": 9,
>             "y": 6
>           },
>           "id": 4,
>           "maxDataPoints": 15,
>           "options": {
>             "calculate": false,
>             "cellGap": 1,
>             "color": {
>               "exponent": 0.5,
>               "fill": "dark-orange",
>               "mode": "scheme",
>               "reverse": false,
>               "scale": "exponential",
>               "scheme": "Oranges",
>               "steps": 64
>             },
>             "exemplars": {
>               "color": "rgba(255,0,255,0.7)"
>             },
>             "filterValues": {
>               "le": 1e-9
>             },
>             "legend": {
>               "show": false
>             },
>             "rowsFrame": {
>               "layout": "auto"
>             },
>             "tooltip": {
>               "show": true,
>               "yHistogram": false
>             },
>             "yAxis": {
>               "axisPlacement": "left",
>               "reverse": false
>             }
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_duration_seconds_bucket[$__interval])) by(le)",
>               "format": "heatmap",
>               "instant": false,
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to complete releases",
>           "type": "heatmap"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "palette-classic"
>               },
>               "custom": {
>                 "axisCenteredZero": false,
>                 "axisColorMode": "text",
>                 "axisLabel": "",
>                 "axisPlacement": "auto",
>                 "barAlignment": 0,
>                 "drawStyle": "line",
>                 "fillOpacity": 0,
>                 "gradientMode": "none",
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "lineInterpolation": "linear",
>                 "lineStyle": {
>                   "fill": "solid"
>                 },
>                 "lineWidth": 2,
>                 "pointSize": 5,
>                 "scaleDistribution": {
>                   "type": "linear"
>                 },
>                 "showPoints": "auto",
>                 "spanNulls": true,
>                 "stacking": {
>                   "group": "A",
>                   "mode": "none"
>                 },
>                 "thresholdsStyle": {
>                   "mode": "off"
>                 }
>               },
>               "decimals": 0,
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 9,
>             "x": 15,
>             "y": 6
>           },
>           "id": 18,
>           "options": {
>             "legend": {
>               "calcs": [],
>               "displayMode": "list",
>               "placement": "bottom",
>               "showLegend": false
>             },
>             "tooltip": {
>               "mode": "single",
>               "sort": "none"
>             }
>           },
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(workqueue_retries_total{name=\"release\"})",
>               "legendFormat": "__auto",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Workqueue retries",
>           "type": "timeseries"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "fixedColor": "orange",
>                 "mode": "fixed"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "min": 0,
>               "noValue": "0",
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "semi-dark-red",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "none"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 9
>           },
>           "id": 14,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_invalid_total[$__range]))",
>               "instant": true,
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Total number of invalid releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 12
>           },
>           "id": 2,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "lastNotNull"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(release_attempt_concurrent_requests)",
>               "legendFormat": "__auto",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Concurrent requests",
>           "type": "stat"
>         }
>       ],
>       "refresh": "30s",
>       "schemaVersion": 37,
>       "style": "dark",
>       "tags": [],
>       "templating": {
>         "list": []
>       },
>       "time": {
>         "from": "now-30d",
>         "to": "now"
>       },
>       "timepicker": {},
>       "timezone": "",
>       "title": "Release Attempts",
>       "uid": "povBUUh4z",
>       "version": 1,
>       "weekStart": ""
>     }
> kind: ConfigMap
> metadata:
>   name: release-service-grafana-dashboard-release-release-attempts
>   namespace: release-service
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: f3d4c01a.redhat.com
> kind: ConfigMap
> metadata:
>   name: release-service-manager-config
>   namespace: release-service
> ---
> apiVersion: v1
> data:
>   DEFAULT_RELEASE_PVC: ""
>   DEFAULT_RELEASE_WORKSPACE_NAME: ""
> kind: ConfigMap
> metadata:
>   name: release-service-manager-properties
>   namespace: release-service
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: release-service-controller-manager-metrics-service
>   namespace: release-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   name: release-service-webhook-service
>   namespace: release-service
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: release-service-controller-manager
>   namespace: release-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         env:
>         - name: DEFAULT_RELEASE_PVC
>           valueFrom:
>             configMapKeyRef:
>               key: DEFAULT_RELEASE_PVC
>               name: release-service-manager-properties
>               optional: true
>         - name: DEFAULT_RELEASE_WORKSPACE_NAME
>           valueFrom:
>             configMapKeyRef:
>               key: DEFAULT_RELEASE_WORKSPACE_NAME
>               name: release-service-manager-properties
>               optional: true
>         image: quay.io/redhat-appstudio/release-service:913a02c3595a2457680bb6221ae17753e04a08cd
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 512Mi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: release-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: release-service-controller-manager-metrics-monitor
>   namespace: release-service
> spec:
>   endpoints:
>   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: MutatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: release-service-mutating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-releaseplan
>   failurePolicy: Fail
>   name: mreleaseplan.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     resources:
>     - releaseplans
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-releaseplanadmission
>   failurePolicy: Fail
>   name: mreleaseplanadmission.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     resources:
>     - releaseplanadmissions
>   sideEffects: None
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: release-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /validate-appstudio-redhat-com-v1alpha1-release
>   failurePolicy: Fail
>   name: vrelease.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - releases
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /validate-appstudio-redhat-com-v1alpha1-releaseplan
>   failurePolicy: Fail
>   name: vreleaseplan.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - releaseplans
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /validate-appstudio-redhat-com-v1alpha1-releaseplanadmission
>   failurePolicy: Fail
>   name: vreleaseplanadmission.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - releaseplanadmissions
>   sideEffects: None 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Development changes from e71ef6d to f4d7c00 on Mon Mar 13 07:38:52 2023 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 9bc0874..d5e9abd 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -24,5 +24,6 @@ resources:
   - external-secrets-operator
   - cluster-secret-store
   - image-controller
+  - o11y
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/kustomization.yaml
new file mode 100644
index 0000000..7440a7f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- o11y.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
new file mode 100644
index 0000000..0aa66f4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: o11y
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/o11y
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: o11y-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: o11y
+        server: '{{server}}'
+      syncPolicy:
+        automated: 
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index b22b35b..5f6d6cf 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -52,3 +52,9 @@ kind: ApplicationSet
 metadata:
   name: cluster-secret-store
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: o11y
+$patch: delete
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index b598b16..3d205fb 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -78,3 +78,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: o11y
diff --git a/components/o11y/README.md b/components/o11y/README.md
new file mode 100644
index 0000000..661f93c
--- /dev/null
+++ b/components/o11y/README.md
@@ -0,0 +1,3 @@
+---
+title: O11Y 
+---
diff --git a/components/o11y/base/kustomization.yaml b/components/o11y/base/kustomization.yaml
new file mode 100644
index 0000000..79bc5de
--- /dev/null
+++ b/components/o11y/base/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+commonLabels:
+  openshift.io/workload-monitoring: "true"
+
+resources:
+- https://github.com/redhat-appstudio/o11y/prometheus/base?ref=6e3901c8971c94a3011691b7f6a7157d597630fc
diff --git a/components/o11y/production/kustomization.yaml b/components/o11y/production/kustomization.yaml
new file mode 100644
index 0000000..ffd7535
--- /dev/null
+++ b/components/o11y/production/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+commonLabels:
+  openshift.io/workload-monitoring: "true"
+
+resources:
+- ../base
diff --git a/components/o11y/staging/kustomization.yaml b/components/o11y/staging/kustomization.yaml
new file mode 100644
index 0000000..ffd7535
--- /dev/null
+++ b/components/o11y/staging/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+commonLabels:
+  openshift.io/workload-monitoring: "true"
+
+resources:
+- ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5477 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/app-of-apps-development.yaml /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/app-of-apps-development.yaml
1,756d0
< apiVersion: v1
< kind: Secret
< metadata:
<   labels:
<     appstudio.redhat.com/host-cluster: "true"
<     appstudio.redhat.com/member-cluster: "true"
<     appstudio.redhat.com/quality-dashboard: "true"
<     argocd.argoproj.io/secret-type: cluster
<   name: cluster-kubernetes.default.svc
<   namespace: openshift-gitops
< stringData:
<   config: '{"tlsClientConfig":{"insecure":false}}'
<   name: in-cluster-local
<   server: https://kubernetes.default.svc
< type: Opaque
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: application-api
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: application-api-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: application-api
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/application-api
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: build-service
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/build-service
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: build-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: build-templates
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/build-templates
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: build-templates-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: cluster-registration
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: cluster-registration-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: cluster-reg-config
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/cluster-registration
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: dev-sso
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/host-cluster: "true"
<   template:
<     metadata:
<       name: dev-sso-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: dev-sso
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/dev-sso
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: dora-metrics
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/dora-metrics
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: dora-metrics-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: dora-metrics
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: enterprise-contract
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: enterprise-contract-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: enterprise-contract-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/enterprise-contract
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: gitops
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/gitops
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: gitops-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: gitops
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: has
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/has
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: has-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: application-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: image-controller
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/image-controller
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: image-controller-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: integration
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: integration-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: integration-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/integration
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: internal-services
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: internal-services-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: internal-services
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/internal-services
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: jvm-build-service
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: jvm-build-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/jvm-build-service
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: pipeline-service
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/pipeline-service
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: pipeline-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: release
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: release-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: release-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/release
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: shared-resources
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: shared-resources-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/shared-resources
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: spi
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/spi/overlays
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: spi-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: spi-system
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: spi-vault
<   namespace: openshift-gitops
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: spi-vault-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: spi-vault
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/spi-vault
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/enterprise-contract/kustomize.out
3a4
>   annotations: {}
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/gitops/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/gitops/development/kustomize.out
1534a1535
>   annotations: null
1854a1856
>   annotations: null
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/has/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/has/development/kustomize.out
0a1,834
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: application-service
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: application-service-leader-election-role
>   namespace: application-service
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: application-service-application-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: application-service-application-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: application-service-component-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: application-service-component-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: application-service-componentdetectionquery-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: application-service-componentdetectionquery-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: application-service-manager-role
> rules:
> - apiGroups:
>   - apis.kcp.dev
>   resources:
>   - apibindings
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - componentdetectionqueries/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-manager-role-build
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   - secrets
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - create
>   - watch
>   - update
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-manager-role-spi
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - spiaccesstokenbindings
>   - spiaccesstokens
>   verbs:
>   - '*'
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - list
>   - get
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: application-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-has
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: application-service-leader-election-rolebinding
>   namespace: application-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: application-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: application-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-manager-rolebinding-build
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-manager-role-build
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-manager-rolebinding-spi
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-manager-role-spi
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: application-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: application-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: application-service-controller-manager
>   namespace: application-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-has
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-has
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: v1
> data:
>   DEVFILE_REGISTRY_URL: ""
> kind: ConfigMap
> metadata:
>   name: application-service-application-service-devfile-registry-config
>   namespace: application-service
> ---
> apiVersion: v1
> data:
>   GITHUB_ORG: ""
> kind: ConfigMap
> metadata:
>   name: application-service-application-service-github-config
>   namespace: application-service
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: f50829e1.redhat.com
> kind: ConfigMap
> metadata:
>   name: application-service-application-service-manager-config
>   namespace: application-service
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: application-service-controller-manager-metrics-service
>   namespace: application-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   name: application-service-webhook-service
>   namespace: application-service
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: application-service-application-service-controller-manager
>   namespace: application-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         env:
>         - name: ENABLE_PPROF
>           value: "true"
>         - name: IMAGE_REPOSITORY
>           value: ""
>         - name: GITHUB_ORG
>           valueFrom:
>             configMapKeyRef:
>               key: GITHUB_ORG
>               name: application-service-application-service-github-config
>               optional: true
>         - name: GITHUB_AUTH_TOKEN
>           valueFrom:
>             secretKeyRef:
>               key: token
>               name: has-github-token
>               optional: true
>         - name: CDQ_GITHUB_TOKEN
>           valueFrom:
>             secretKeyRef:
>               key: cdq-token
>               name: has-github-token
>               optional: true
>         - name: DEVFILE_REGISTRY_URL
>           valueFrom:
>             configMapKeyRef:
>               key: DEVFILE_REGISTRY_URL
>               name: application-service-application-service-devfile-registry-config
>               optional: true
>         image: quay.io/redhat-appstudio/application-service:d4d3f6e353a7f300de0e91a5bf9333a222d412bc
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 2Gi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: application-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: MutatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: application-service-mutating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-application
>   failurePolicy: Fail
>   name: mapplication.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - applications
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-component
>   failurePolicy: Fail
>   name: mcomponent.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - components
>   sideEffects: None
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: application-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /validate-appstudio-redhat-com-v1alpha1-application
>   failurePolicy: Fail
>   name: vapplication.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - applications
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   - v1beta1
>   clientConfig:
>     service:
>       name: application-service-webhook-service
>       namespace: application-service
>       path: /validate-appstudio-redhat-com-v1alpha1-component
>   failurePolicy: Fail
>   name: vcomponent.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - components
>   sideEffects: None
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/image-controller/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/image-controller/development/kustomize.out
0a1,295
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: image-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: image-controller-leader-election-role
>   namespace: image-controller
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: image-controller-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: image-controller-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: image-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: image-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: image-controller-leader-election-rolebinding
>   namespace: image-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: image-controller-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: image-controller-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: image-controller-manager-role
> subjects:
> - kind: ServiceAccount
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: image-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: image-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: image-controller-controller-manager
>   namespace: image-controller
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: ed4c18c3.appstudio.redhat.com
>     # leaderElectionReleaseOnCancel defines if the leader should step down volume
>     # when the Manager ends. This requires the binary to immediately end when the
>     # Manager is stopped, otherwise, this setting is unsafe. Setting this significantly
>     # speeds up voluntary leader transitions as the new leader don't have to wait
>     # LeaseDuration time first.
>     # In the default scaffold provided, the program ends immediately after
>     # the manager stops, so would be fine to enable this option. However,
>     # if you are doing or is intended to do any operation such as perform cleanups
>     # after the manager stops then its usage might be unsafe.
>     # leaderElectionReleaseOnCancel: true
> kind: ConfigMap
> metadata:
>   name: image-controller-manager-config
>   namespace: image-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: image-controller-controller-manager-metrics-service
>   namespace: image-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: image-controller-controller-manager
>   namespace: image-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         image: quay.io/redhat-appstudio/image-controller:8fea7b436f4ec8362a645bcf5bee14427686c83e
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 2Gi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>         volumeMounts:
>         - mountPath: /workspace
>           name: quaytoken
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: image-controller-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: quaytoken
>         secret:
>           secretName: quaytoken
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/integration/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/integration/kustomize.out
0a1,1087
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>     openshift.io/cluster-monitoring: "true"
>   name: integration-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: integrationtestscenarios.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: IntegrationTestScenario
>     listKind: IntegrationTestScenarioList
>     plural: integrationtestscenarios
>     singular: integrationtestscenario
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
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
>                     required:
>                     - env
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: EnvironmentType currently indicates whether an environment
>                       is POC/Non-POC, see API doc for details.
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
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: integration-service-leader-election-role
>   namespace: integration-service
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-integration
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: integration-service-application-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-admin: "true"
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: integration-service-component-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-environment-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-integrationtestscenario-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: integration-service-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - integrationtestscenarios/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - pipelinesascode.tekton.dev
>   resources:
>   - repositories
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-prometheus-viewer-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - nodes
>   - nodes/metrics
>   - services
>   - endpoints
>   - pods
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-release-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-release-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-releaseplan-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshot-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-snapshotenvironmentbinding-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: integration-service-tekton-editor-role
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: integration-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: integration-service-leader-election-rolebinding
>   namespace: integration-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: integration-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-integration
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-integration
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-application-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-application-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-component-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-component-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-environment-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-environment-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-integrationtestscenario-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-integrationtestscenario-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-prometheus-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-prometheus-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: prometheus-k8s
>   namespace: openshift-monitoring
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-release-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-release-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-releaseplan-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-releaseplan-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshot-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshot-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-snapshotenvironmentbinding-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-snapshotenvironmentbinding-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: integration-service-tekton-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: integration-service-tekton-editor-role
> subjects:
> - kind: ServiceAccount
>   name: integration-service-controller-manager
>   namespace: integration-service
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: f1944211.redhat.com
> kind: ConfigMap
> metadata:
>   name: integration-service-manager-config
>   namespace: integration-service
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-controller-manager-metrics-service
>   namespace: integration-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-integration-service-controller-manager
>   namespace: integration-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         image: quay.io/redhat-appstudio/integration-service:41fbdb124775323f58fd5ce93c70bb7d79c20650
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 512Mi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: integration-service-controller-manager
>       terminationGracePeriodSeconds: 10
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: integration-service-controller-manager-metrics-monitor
>   namespace: integration-service
> spec:
>   endpoints:
>   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/pipeline-service/development/kustomize.out
1,2d0
< 2023/03/13 08:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 08:06:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/release/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/components/release/kustomize.out
0a1,2483
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     control-plane: controller-manager
>     openshift.io/cluster-monitoring: "true"
>   name: release-service
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releaseplanadmissions.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ReleasePlanAdmission
>     listKind: ReleasePlanAdmissionList
>     plural: releaseplanadmissions
>     singular: releaseplanadmission
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.displayName
>       name: Display Name
>       priority: 1
>       type: string
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     - jsonPath: .spec.environment
>       name: Environment
>       type: string
>     - jsonPath: .spec.releaseStrategy
>       name: Strategy
>       type: string
>     - jsonPath: .spec.origin
>       name: Origin
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ReleasePlanAdmission is the Schema for the ReleasePlanAdmissions
>           API.
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
>             description: ReleasePlanAdmissionSpec defines the desired state of ReleasePlanAdmission.
>             properties:
>               application:
>                 description: Application is a reference to the application to be released
>                   in the managed namespace
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               displayName:
>                 description: DisplayName is the long name of the ReleasePlanAdmission
>                 type: string
>               environment:
>                 description: Environment defines which Environment will be used to
>                   release the application
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               origin:
>                 description: Origin references where the release requests should come
>                   from
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               releaseStrategy:
>                 description: Release Strategy defines which strategy will be used
>                   to release the application
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - application
>             - origin
>             - releaseStrategy
>             type: object
>           status:
>             description: ReleasePlanAdmissionStatus defines the observed state of
>               ReleasePlanAdmission.
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releaseplans.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ReleasePlan
>     listKind: ReleasePlanList
>     plural: releaseplans
>     singular: releaseplan
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.displayName
>       name: Display Name
>       priority: 1
>       type: string
>     - jsonPath: .spec.application
>       name: Application
>       type: string
>     - jsonPath: .spec.target
>       name: Target
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ReleasePlan is the Schema for the ReleasePlans API.
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
>             description: ReleasePlanSpec defines the desired state of ReleasePlan.
>             properties:
>               application:
>                 description: Application is a reference to the application to be released
>                   in the managed namespace
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               displayName:
>                 description: DisplayName is the long name of the ReleasePlan
>                 type: string
>               target:
>                 description: Target references where to send the release requests
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - application
>             - target
>             type: object
>           status:
>             description: ReleasePlanStatus defines the observed state of ReleasePlan.
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releases.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Release
>     listKind: ReleaseList
>     plural: releases
>     singular: release
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .spec.snapshot
>       name: Snapshot
>       type: string
>     - jsonPath: .status.conditions[?(@.type=="Succeeded")].status
>       name: Succeeded
>       type: string
>     - jsonPath: .status.conditions[?(@.type=="Succeeded")].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.releasePipelineRun
>       name: PipelineRun
>       priority: 1
>       type: string
>     - jsonPath: .status.startTime
>       name: Start Time
>       priority: 1
>       type: date
>     - jsonPath: .status.completionTime
>       name: Completion Time
>       priority: 1
>       type: date
>     - jsonPath: .status.deploymentStartTime
>       name: Deployment Start Time
>       priority: 1
>       type: date
>     - jsonPath: .status.deploymentCompletionTime
>       name: Deployment Completion Time
>       priority: 1
>       type: date
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Release is the Schema for the releases API
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
>             description: ReleaseSpec defines the desired state of Release.
>             properties:
>               releasePlan:
>                 description: ReleasePlan to use for this particular Release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               snapshot:
>                 description: Snapshot to be released
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - releasePlan
>             - snapshot
>             type: object
>           status:
>             description: ReleaseStatus defines the observed state of Release.
>             properties:
>               completionTime:
>                 description: CompletionTime is the time the Release PipelineRun completed
>                 format: date-time
>                 type: string
>               conditions:
>                 description: Conditions represent the latest available observations
>                   for the release
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
>               deploymentCompletionTime:
>                 description: DeploymentCompletionTime is the time when the SnapshotEnvironmentBinding
>                   has all components deployed
>                 format: date-time
>                 type: string
>               deploymentStartTime:
>                 description: DeploymentStartTime is the time when the SnapshotEnvironmentBinding
>                   was created
>                 format: date-time
>                 type: string
>               releasePipelineRun:
>                 description: ReleasePipelineRun contains the namespaced name of the
>                   release PipelineRun executed as part of this release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               releaseStrategy:
>                 description: ReleaseStrategy contains the namespaced name of the ReleaseStrategy
>                   used for this release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               snapshotEnvironmentBinding:
>                 description: SnapshotEnvironmentBinding contains the namespaced name
>                   of the SnapshotEnvironmentBinding created as part of this release
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               startTime:
>                 description: StartTime is the time when the Release PipelineRun was
>                   created and set to run
>                 format: date-time
>                 type: string
>               target:
>                 description: Target references where this release is intended to be
>                   released to
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
>   name: releasestrategies.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ReleaseStrategy
>     listKind: ReleaseStrategyList
>     plural: releasestrategies
>     singular: releasestrategy
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ReleaseStrategy is the Schema for the releasestrategies API
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
>             description: ReleaseStrategySpec defines the desired state of ReleaseStrategy
>             properties:
>               bundle:
>                 description: Bundle is a reference to the Tekton bundle where to find
>                   the pipeline
>                 type: string
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: Params holds the definition of a parameter that should
>                     be passed to the release Pipeline
>                   properties:
>                     name:
>                       description: Name is the name of the parameter
>                       type: string
>                     value:
>                       description: Value is the string value of the parameter
>                       type: string
>                     values:
>                       description: Values is a list of values for the parameter
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               persistentVolumeClaim:
>                 description: PersistentVolumeClaim is the pvc to use in the Release
>                   pipeline namespace
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               pipeline:
>                 description: Release Tekton Pipeline to execute
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               policy:
>                 description: Policy to validate before releasing an artifact
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               serviceAccount:
>                 description: ServiceAccount is the name of the service account to
>                   use in the release PipelineRun to gain elevated privileges
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>             required:
>             - pipeline
>             - policy
>             type: object
>           status:
>             description: ReleaseStrategyStatus defines the observed state of ReleaseStrategy
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   name: release-service-leader-election-role
>   namespace: release-service
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: crd-manager-for-release
> rules:
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - patch
>   - get
>   - list
>   - create
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: release-service-application-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: release-service-component-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-environment-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   name: release-service-manager-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies/status
>   verbs:
>   - get
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-prometheus-viewer-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - nodes
>   - nodes/metrics
>   - services
>   - endpoints
>   - pods
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-release-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-release-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releases/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplan-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplan-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplans/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplanadmission-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releaseplanadmission-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releaseplanadmissions/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releasestrategy-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-releasestrategy-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - releasestrategies/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-snapshot-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-snapshot-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-snapshotenvironmentbinding-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: release-service-tekton-role
> rules:
> - apiGroups:
>   - tekton.dev
>   resources:
>   - pipelineruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - triggers.tekton.dev
>   resources:
>   - eventlisteners
>   - triggers
>   - triggertemplates
>   verbs:
>   - create
>   - update
>   - patch
>   - delete
>   - watch
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - persistentvolumeclaims
>   - persistentvolumeclaims/status
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - create
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: release-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: release-service-leader-election-rolebinding
>   namespace: release-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: release-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: grant-argocd-crd-permissions-for-release
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: crd-manager-for-release
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-application-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-application-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-component-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-component-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-environment-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-environment-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-prometheus-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-prometheus-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: prometheus-k8s
>   namespace: openshift-monitoring
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-release-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-release-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-releaseplan-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-releaseplan-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-releaseplanadmission-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-releaseplanadmission-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-releasestrategy-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-releasestrategy-viewer-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-snapshot-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-snapshot-editor-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-snapshotenvironmentbinding-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-snapshotenvironmentbinding-editor-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: release-service-tekton-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: release-service-tekton-role
> subjects:
> - kind: ServiceAccount
>   name: release-service-controller-manager
>   namespace: release-service
> ---
> apiVersion: v1
> data:
>   release-attempts.json: |
>     {
>       "annotations": {
>         "list": [
>           {
>             "builtIn": 1,
>             "datasource": {
>               "type": "grafana",
>               "uid": "-- Grafana --"
>             },
>             "enable": true,
>             "hide": true,
>             "iconColor": "rgba(0, 211, 255, 1)",
>             "name": "Annotations & Alerts",
>             "target": {
>               "limit": 100,
>               "matchAny": false,
>               "tags": [],
>               "type": "dashboard"
>             },
>             "type": "dashboard"
>           }
>         ]
>       },
>       "editable": true,
>       "fiscalYearStartMonth": 0,
>       "graphTooltip": 0,
>       "links": [],
>       "liveNow": false,
>       "panels": [
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "none"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 0
>           },
>           "id": 10,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_total[$__range]))",
>               "instant": true,
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Total number of releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 6,
>             "x": 3,
>             "y": 0
>           },
>           "id": 16,
>           "maxDataPoints": 25,
>           "options": {
>             "displayMode": "gradient",
>             "minVizHeight": 10,
>             "minVizWidth": 0,
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "showUnfilled": true
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum without(instance,namespace,pod) (release_attempt_running_seconds_bucket{job=\"release-service-controller-manager-metrics-service\"})",
>               "format": "heatmap",
>               "instant": false,
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to start running releases",
>           "type": "bargauge"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 6,
>             "x": 9,
>             "y": 0
>           },
>           "id": 15,
>           "maxDataPoints": 25,
>           "options": {
>             "displayMode": "gradient",
>             "minVizHeight": 10,
>             "minVizWidth": 0,
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "showUnfilled": true
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum without(instance,pod,strategy,succeeded,target) (release_attempt_duration_seconds_bucket{reason=\"Succeeded\"})",
>               "format": "heatmap",
>               "instant": false,
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to complete releases",
>           "type": "bargauge"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "palette-classic"
>               },
>               "custom": {
>                 "axisCenteredZero": false,
>                 "axisColorMode": "text",
>                 "axisLabel": "",
>                 "axisPlacement": "auto",
>                 "barAlignment": 0,
>                 "drawStyle": "line",
>                 "fillOpacity": 0,
>                 "gradientMode": "none",
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "lineInterpolation": "linear",
>                 "lineWidth": 2,
>                 "pointSize": 5,
>                 "scaleDistribution": {
>                   "type": "linear"
>                 },
>                 "showPoints": "auto",
>                 "spanNulls": true,
>                 "stacking": {
>                   "group": "A",
>                   "mode": "none"
>                 },
>                 "thresholdsStyle": {
>                   "mode": "off"
>                 }
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   }
>                 ]
>               }
>             },
>             "overrides": [
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Error"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "red",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               },
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Requeue"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "yellow",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               },
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Requeue after"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "purple",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               },
>               {
>                 "matcher": {
>                   "id": "byName",
>                   "options": "Success"
>                 },
>                 "properties": [
>                   {
>                     "id": "color",
>                     "value": {
>                       "fixedColor": "green",
>                       "mode": "fixed"
>                     }
>                   }
>                 ]
>               }
>             ]
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 9,
>             "x": 15,
>             "y": 0
>           },
>           "id": 19,
>           "options": {
>             "legend": {
>               "calcs": [],
>               "displayMode": "list",
>               "placement": "bottom",
>               "showLegend": true
>             },
>             "tooltip": {
>               "mode": "single",
>               "sort": "none"
>             }
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"error\"})",
>               "hide": false,
>               "legendFormat": "Error",
>               "range": true,
>               "refId": "A"
>             },
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"requeue\"})",
>               "hide": false,
>               "legendFormat": "Requeue",
>               "range": true,
>               "refId": "B"
>             },
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"requeue_after\"})",
>               "hide": false,
>               "legendFormat": "Requeue after",
>               "range": true,
>               "refId": "C"
>             },
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"success\"})",
>               "legendFormat": "Success",
>               "range": true,
>               "refId": "D"
>             }
>           ],
>           "title": "Total number of reconciles by type",
>           "type": "timeseries"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "fixedColor": "red",
>                 "mode": "fixed"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "min": 0,
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "semi-dark-red",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "none"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 3
>           },
>           "id": 12,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "center",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_total{succeeded=\"false\"}[$__range]))",
>               "instant": true,
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Total number failed releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "noValue": "0%",
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "percentunit"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 6
>           },
>           "id": 11,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_total{succeeded=\"true\"}[$__range])) / sum(increase(release_attempt_total[$__range]))",
>               "instant": true,
>               "interval": "",
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Percentage of successful releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "custom": {
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "scaleDistribution": {
>                   "type": "linear"
>                 }
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 9,
>             "w": 6,
>             "x": 3,
>             "y": 6
>           },
>           "id": 13,
>           "maxDataPoints": 15,
>           "options": {
>             "calculate": false,
>             "cellGap": 1,
>             "color": {
>               "exponent": 0.5,
>               "fill": "dark-orange",
>               "mode": "scheme",
>               "reverse": false,
>               "scale": "exponential",
>               "scheme": "Oranges",
>               "steps": 64
>             },
>             "exemplars": {
>               "color": "rgba(255,0,255,0.7)"
>             },
>             "filterValues": {
>               "le": 1e-9
>             },
>             "legend": {
>               "show": false
>             },
>             "rowsFrame": {
>               "layout": "auto"
>             },
>             "tooltip": {
>               "show": true,
>               "yHistogram": false
>             },
>             "yAxis": {
>               "axisPlacement": "left",
>               "reverse": false
>             }
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(increase(release_attempt_running_seconds_bucket[$__interval])) by(le)",
>               "format": "heatmap",
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to start running releases",
>           "type": "heatmap"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "custom": {
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "scaleDistribution": {
>                   "type": "linear"
>                 }
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 9,
>             "w": 6,
>             "x": 9,
>             "y": 6
>           },
>           "id": 4,
>           "maxDataPoints": 15,
>           "options": {
>             "calculate": false,
>             "cellGap": 1,
>             "color": {
>               "exponent": 0.5,
>               "fill": "dark-orange",
>               "mode": "scheme",
>               "reverse": false,
>               "scale": "exponential",
>               "scheme": "Oranges",
>               "steps": 64
>             },
>             "exemplars": {
>               "color": "rgba(255,0,255,0.7)"
>             },
>             "filterValues": {
>               "le": 1e-9
>             },
>             "legend": {
>               "show": false
>             },
>             "rowsFrame": {
>               "layout": "auto"
>             },
>             "tooltip": {
>               "show": true,
>               "yHistogram": false
>             },
>             "yAxis": {
>               "axisPlacement": "left",
>               "reverse": false
>             }
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_duration_seconds_bucket[$__interval])) by(le)",
>               "format": "heatmap",
>               "instant": false,
>               "legendFormat": "{{le}}",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Time to complete releases",
>           "type": "heatmap"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "palette-classic"
>               },
>               "custom": {
>                 "axisCenteredZero": false,
>                 "axisColorMode": "text",
>                 "axisLabel": "",
>                 "axisPlacement": "auto",
>                 "barAlignment": 0,
>                 "drawStyle": "line",
>                 "fillOpacity": 0,
>                 "gradientMode": "none",
>                 "hideFrom": {
>                   "legend": false,
>                   "tooltip": false,
>                   "viz": false
>                 },
>                 "lineInterpolation": "linear",
>                 "lineStyle": {
>                   "fill": "solid"
>                 },
>                 "lineWidth": 2,
>                 "pointSize": 5,
>                 "scaleDistribution": {
>                   "type": "linear"
>                 },
>                 "showPoints": "auto",
>                 "spanNulls": true,
>                 "stacking": {
>                   "group": "A",
>                   "mode": "none"
>                 },
>                 "thresholdsStyle": {
>                   "mode": "off"
>                 }
>               },
>               "decimals": 0,
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 6,
>             "w": 9,
>             "x": 15,
>             "y": 6
>           },
>           "id": 18,
>           "options": {
>             "legend": {
>               "calcs": [],
>               "displayMode": "list",
>               "placement": "bottom",
>               "showLegend": false
>             },
>             "tooltip": {
>               "mode": "single",
>               "sort": "none"
>             }
>           },
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(workqueue_retries_total{name=\"release\"})",
>               "legendFormat": "__auto",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Workqueue retries",
>           "type": "timeseries"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "fixedColor": "orange",
>                 "mode": "fixed"
>               },
>               "decimals": 0,
>               "mappings": [],
>               "min": 0,
>               "noValue": "0",
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "semi-dark-red",
>                     "value": null
>                   }
>                 ]
>               },
>               "unit": "none"
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 9
>           },
>           "id": 14,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "max"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "exemplar": false,
>               "expr": "sum(increase(release_attempt_invalid_total[$__range]))",
>               "instant": true,
>               "legendFormat": "__auto",
>               "range": false,
>               "refId": "A"
>             }
>           ],
>           "title": "Total number of invalid releases",
>           "type": "stat"
>         },
>         {
>           "datasource": {
>             "type": "prometheus",
>             "uid": "PF224BEF3374A25F8"
>           },
>           "description": "",
>           "fieldConfig": {
>             "defaults": {
>               "color": {
>                 "mode": "thresholds"
>               },
>               "mappings": [],
>               "thresholds": {
>                 "mode": "absolute",
>                 "steps": [
>                   {
>                     "color": "green",
>                     "value": null
>                   },
>                   {
>                     "color": "red",
>                     "value": 80
>                   }
>                 ]
>               }
>             },
>             "overrides": []
>           },
>           "gridPos": {
>             "h": 3,
>             "w": 3,
>             "x": 0,
>             "y": 12
>           },
>           "id": 2,
>           "options": {
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
>             "orientation": "auto",
>             "reduceOptions": {
>               "calcs": [
>                 "lastNotNull"
>               ],
>               "fields": "",
>               "values": false
>             },
>             "textMode": "auto"
>           },
>           "pluginVersion": "9.1.6",
>           "targets": [
>             {
>               "datasource": {
>                 "type": "prometheus",
>                 "uid": "PF224BEF3374A25F8"
>               },
>               "editorMode": "code",
>               "expr": "sum(release_attempt_concurrent_requests)",
>               "legendFormat": "__auto",
>               "range": true,
>               "refId": "A"
>             }
>           ],
>           "title": "Concurrent requests",
>           "type": "stat"
>         }
>       ],
>       "refresh": "30s",
>       "schemaVersion": 37,
>       "style": "dark",
>       "tags": [],
>       "templating": {
>         "list": []
>       },
>       "time": {
>         "from": "now-30d",
>         "to": "now"
>       },
>       "timepicker": {},
>       "timezone": "",
>       "title": "Release Attempts",
>       "uid": "povBUUh4z",
>       "version": 1,
>       "weekStart": ""
>     }
> kind: ConfigMap
> metadata:
>   name: release-service-grafana-dashboard-release-release-attempts
>   namespace: release-service
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: f3d4c01a.redhat.com
> kind: ConfigMap
> metadata:
>   name: release-service-manager-config
>   namespace: release-service
> ---
> apiVersion: v1
> data:
>   DEFAULT_RELEASE_PVC: ""
>   DEFAULT_RELEASE_WORKSPACE_NAME: ""
> kind: ConfigMap
> metadata:
>   name: release-service-manager-properties
>   namespace: release-service
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: release-service-controller-manager-metrics-service
>   namespace: release-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   name: release-service-webhook-service
>   namespace: release-service
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: release-service-controller-manager
>   namespace: release-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         command:
>         - /manager
>         env:
>         - name: DEFAULT_RELEASE_PVC
>           valueFrom:
>             configMapKeyRef:
>               key: DEFAULT_RELEASE_PVC
>               name: release-service-manager-properties
>               optional: true
>         - name: DEFAULT_RELEASE_WORKSPACE_NAME
>           valueFrom:
>             configMapKeyRef:
>               key: DEFAULT_RELEASE_WORKSPACE_NAME
>               name: release-service-manager-properties
>               optional: true
>         image: quay.io/redhat-appstudio/release-service:913a02c3595a2457680bb6221ae17753e04a08cd
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 512Mi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.8.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: release-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   labels:
>     control-plane: controller-manager
>   name: release-service-controller-manager-metrics-monitor
>   namespace: release-service
> spec:
>   endpoints:
>   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: MutatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: release-service-mutating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-releaseplan
>   failurePolicy: Fail
>   name: mreleaseplan.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     resources:
>     - releaseplans
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /mutate-appstudio-redhat-com-v1alpha1-releaseplanadmission
>   failurePolicy: Fail
>   name: mreleaseplanadmission.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     resources:
>     - releaseplanadmissions
>   sideEffects: None
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: release-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /validate-appstudio-redhat-com-v1alpha1-release
>   failurePolicy: Fail
>   name: vrelease.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - releases
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /validate-appstudio-redhat-com-v1alpha1-releaseplan
>   failurePolicy: Fail
>   name: vreleaseplan.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - releaseplans
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: release-service-webhook-service
>       namespace: release-service
>       path: /validate-appstudio-redhat-com-v1alpha1-releaseplanadmission
>   failurePolicy: Fail
>   name: vreleaseplanadmission.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - releaseplanadmissions
>   sideEffects: None 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Staging changes from 8531b70 to e71ef6d on Fri Mar 10 16:55:45 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index cab3d27..c4a4093 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -10,6 +10,7 @@ spec:
     - cloudwatch:
         groupBy: namespaceName
         region: us-east-1
+        retention_in_days: 180
       name: remote-cloudwatch
       secret:
         name: cloudwatch-forwarder 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2193 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/staging/components/gitops/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8531b70/staging/components/gitops/staging/stone-stg-rh01/kustomize.out
0a1,2191
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops
> ---
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-argocd
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeploymentmanagedenvironments.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeploymentManagedEnvironment
>     listKind: GitOpsDeploymentManagedEnvironmentList
>     plural: gitopsdeploymentmanagedenvironments
>     singular: gitopsdeploymentmanagedenvironment
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeploymentManagedEnvironment is the Schema for the gitopsdeploymentmanagedenvironments
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
>             description: GitOpsDeploymentManagedEnvironmentSpec defines the desired
>               state of GitOpsDeploymentManagedEnvironment
>             properties:
>               allowInsecureSkipTLSVerify:
>                 type: boolean
>               apiURL:
>                 type: string
>               credentialsSecret:
>                 type: string
>             required:
>             - allowInsecureSkipTLSVerify
>             - apiURL
>             - credentialsSecret
>             type: object
>           status:
>             description: GitOpsDeploymentManagedEnvironmentStatus defines the observed
>               state of GitOpsDeploymentManagedEnvironment
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
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
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeploymentrepositorycredentials.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeploymentRepositoryCredential
>     listKind: GitOpsDeploymentRepositoryCredentialList
>     plural: gitopsdeploymentrepositorycredentials
>     singular: gitopsdeploymentrepositorycredential
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeploymentRepositoryCredential is the Schema for the gitopsdeploymentrepositorycredentials
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
>             description: GitOpsDeploymentRepositoryCredentialSpec defines the desired
>               state of GitOpsDeploymentRepositoryCredential
>             properties:
>               repository:
>                 description: Repository (HTTPS url, or SSH string) for accessing the
>                   Git repo Required field As of this writing (Mar 2022), we only support
>                   HTTPS URL
>                 type: string
>               secret:
>                 description: Reference to a K8s Secret in the namespace that contains
>                   repository credentials (Git username/password, as of this writing)
>                   Required field
>                 type: string
>             required:
>             - repository
>             - secret
>             type: object
>           status:
>             description: GitOpsDeploymentRepositoryCredentialStatus defines the observed
>               state of GitOpsDeploymentRepositoryCredential
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeployments.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeployment
>     listKind: GitOpsDeploymentList
>     plural: gitopsdeployments
>     singular: gitopsdeployment
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .status.sync.status
>       name: Sync Status
>       type: string
>     - jsonPath: .status.health.status
>       name: Health Status
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeployment is the Schema for the gitopsdeployments API
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
>             description: GitOpsDeploymentSpec defines the desired state of GitOpsDeployment
>             properties:
>               destination:
>                 description: 'Destination is a reference to a target namespace/cluster
>                   to deploy to. This field may be empty: if it is empty, it is assumed
>                   that the destination is the same namespace as the GitOpsDeployment
>                   CR.'
>                 properties:
>                   environment:
>                     type: string
>                   namespace:
>                     description: The namespace will only be set for namespace-scoped
>                       resources that have not set a value for .metadata.namespace
>                     type: string
>                 type: object
>               source:
>                 description: ApplicationSource contains all required information about
>                   the source of an application
>                 properties:
>                   path:
>                     description: Path is a directory path within the Git repository,
>                       and is only valid for applications sourced from Git.
>                     type: string
>                   repoURL:
>                     description: RepoURL is the URL to the repository (Git or Helm)
>                       that contains the application manifests
>                     type: string
>                   targetRevision:
>                     description: TargetRevision defines the revision of the source
>                       to sync the application to. In case of Git, this can be commit,
>                       tag, or branch. If omitted, will equal to HEAD. In case of Helm,
>                       this is a semver tag for the Chart's version.
>                     type: string
>                 required:
>                 - path
>                 - repoURL
>                 type: object
>               syncPolicy:
>                 description: SyncPolicy controls when and how a sync will be performed.
>                 properties:
>                   syncOptions:
>                     description: Options allow you to specify whole app sync-options.
>                       This option may be empty, if and when it is empty it is considered
>                       that there are no SyncOptions present.
>                     items:
>                       type: string
>                     type: array
>                 type: object
>               type:
>                 description: "Two possible values: - Automated: whenever a new commit
>                   occurs in the GitOps repository, or the Argo CD Application is out
>                   of sync, Argo CD should be told to (re)synchronize. - Manual: Argo
>                   CD should never be told to resynchronize. Instead, synchronize operations
>                   will be triggered via GitOpsDeploymentSyncRun operations only. -
>                   See `GitOpsDeploymentSpecType*` \n Note: This is somewhat of a placeholder
>                   for more advanced logic that can be implemented in the future. For
>                   an example of this type of logic, see the 'syncPolicy' field of
>                   Argo CD Application."
>                 type: string
>             required:
>             - source
>             - type
>             type: object
>           status:
>             description: GitOpsDeploymentStatus defines the observed state of GitOpsDeployment
>             properties:
>               conditions:
>                 items:
>                   description: GitOpsDeploymentCondition contains details about an
>                     GitOpsDeployment condition, which is usually an error or warning
>                   properties:
>                     lastProbeTime:
>                       description: LastProbeTime is the last time the condition was
>                         observed.
>                       format: date-time
>                       type: string
>                     lastTransitionTime:
>                       description: LastTransitionTime is the last time the condition
>                         transitioned from one status to another.
>                       format: date-time
>                       type: string
>                     message:
>                       description: Message contains human-readable message indicating
>                         details about the last condition.
>                       type: string
>                     reason:
>                       description: Reason is a unique, one-word, CamelCase reason
>                         for the condition's last transition.
>                       type: string
>                     status:
>                       description: Status is the status of the condition.
>                       type: string
>                     type:
>                       description: Type is a GitOpsDeployment condition type
>                       type: string
>                   required:
>                   - status
>                   - type
>                   type: object
>                 type: array
>               health:
>                 description: Health contains information about the application's current
>                   health status
>                 properties:
>                   message:
>                     description: Message is a human-readable informational message
>                       describing the health status
>                     type: string
>                   status:
>                     description: Status holds the status code of the application or
>                       resource
>                     type: string
>                 type: object
>               reconciledState:
>                 description: ReconciledState lists last deployment of ArgoCD Application
>                 properties:
>                   destination:
>                     description: GitOpsDeploymentDestination contains the information
>                       of .status.Sync.CompareTo.Destination field of ArgoCD Application
>                     properties:
>                       name:
>                         type: string
>                       namespace:
>                         type: string
>                     required:
>                     - name
>                     - namespace
>                     type: object
>                   source:
>                     description: GitOpsDeploymentSource contains the information of
>                       .status.Sync.CompareTo.Source field of ArgoCD Application
>                     properties:
>                       branch:
>                         type: string
>                       path:
>                         description: Path contains path from .status.Sync.CompareTo
>                           field of ArgoCD Application
>                         type: string
>                       repoURL:
>                         type: string
>                     required:
>                     - branch
>                     - path
>                     - repoURL
>                     type: object
>                 required:
>                 - destination
>                 - source
>                 type: object
>               resources:
>                 description: List of Resource created by a deployment
>                 items:
>                   description: ResourceStatus holds the current sync and health status
>                     of a resource
>                   properties:
>                     group:
>                       type: string
>                     health:
>                       description: HealthStatus contains information about the currently
>                         observed health state of an application or resource
>                       properties:
>                         message:
>                           description: Message is a human-readable informational message
>                             describing the health status
>                           type: string
>                         status:
>                           description: Status holds the status code of the application
>                             or resource
>                           type: string
>                       type: object
>                     kind:
>                       type: string
>                     name:
>                       type: string
>                     namespace:
>                       type: string
>                     status:
>                       description: SyncStatusCode is a type which represents possible
>                         comparison results
>                       type: string
>                     version:
>                       type: string
>                   type: object
>                 type: array
>               sync:
>                 description: SyncStatus contains information about the currently observed
>                   live and desired states of an application
>                 properties:
>                   revision:
>                     description: Revision contains information about the revision
>                       the comparison has been performed to
>                     type: string
>                   status:
>                     description: Status is the sync state of the comparison
>                     type: string
>                 required:
>                 - status
>                 type: object
>             required:
>             - reconciledState
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: gitopsdeploymentsyncruns.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: GitOpsDeploymentSyncRun
>     listKind: GitOpsDeploymentSyncRunList
>     plural: gitopsdeploymentsyncruns
>     singular: gitopsdeploymentsyncrun
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: GitOpsDeploymentSyncRun is the Schema for the gitopsdeploymentsyncruns
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
>             description: GitOpsDeploymentSyncRunSpec defines the desired state of
>               GitOpsDeploymentSyncRun
>             properties:
>               gitopsDeploymentName:
>                 type: string
>               revisionID:
>                 type: string
>             required:
>             - gitopsDeploymentName
>             type: object
>           status:
>             description: GitOpsDeploymentSyncRunStatus defines the observed state
>               of GitOpsDeploymentSyncRun
>             properties:
>               conditions:
>                 items:
>                   description: GitOpsDeploymentCondition contains details about an
>                     applicationset condition, which is usally an error or warning
>                   properties:
>                     lastTransitionTime:
>                       description: LastTransitionTime is the time the condition was
>                         last observed
>                       format: date-time
>                       type: string
>                     message:
>                       description: Message contains human-readable message indicating
>                         details about condition
>                       type: string
>                     reason:
>                       description: Single word camelcase representing the reason for
>                         the status eg ErrorOccurred
>                       type: string
>                     status:
>                       description: True/False/Unknown
>                       type: string
>                     type:
>                       description: Type is an applicationset condition type
>                       type: string
>                   required:
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: operations.managed-gitops.redhat.com
> spec:
>   group: managed-gitops.redhat.com
>   names:
>     kind: Operation
>     listKind: OperationList
>     plural: operations
>     singular: operation
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Operation is the Schema for the operations API
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
>             description: OperationSpec defines the desired state of Operation
>             properties:
>               operationID:
>                 type: string
>             type: object
>           status:
>             description: OperationStatus defines the observed state of Operation
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-leader-election-role
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-leader-election-role
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-leader-election-role
>   namespace: gitops
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: gitops-appstudio-service-manager-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - applications/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - components/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - environments/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - promotionruns
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - promotionruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - promotionruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/status
>   verbs:
>   - get
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: gitops-core-service-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentrepositorycredentials
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentrepositorycredentials/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentrepositorycredentials/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeployments/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentsyncruns
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentsyncruns/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentsyncruns/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: gitops-service-agent-manager-role
> rules:
> - apiGroups:
>   - argoproj.io
>   resources:
>   - applications
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - appprojects
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - argoproj.io
>   resources:
>   - argocds
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - managed-gitops.redhat.com
>   resources:
>   - operations/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - route.openshift.io
>   resources:
>   - routes
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-leader-election-rolebinding
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-appstudio-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-leader-election-rolebinding
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-core-service-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-leader-election-rolebinding
>   namespace: gitops
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: gitops-service-agent-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-appstudio-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-appstudio-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-core-service-manager-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-core-service-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-service-agent-manager-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: gitops-service-agent-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: 53746cb8.redhat.com
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-appstudio-service-manager-config
>   namespace: gitops
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: 5a3f596c.redhat.com
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-core-service-manager-config
>   namespace: gitops
> ---
> apiVersion: v1
> data:
>   controller_manager_config.yaml: |
>     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
>     kind: ControllerManagerConfig
>     health:
>       healthProbeBindAddress: :8081
>     metrics:
>       bindAddress: 127.0.0.1:8080
>     webhook:
>       port: 9443
>     leaderElection:
>       leaderElect: true
>       resourceName: 5a3f596c.redhat.com
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: gitops-service-agent-manager-config
>   namespace: gitops
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: appstudio-controller-manager
>   name: gitops-appstudio-service-controller-manager-metrics-service
>   namespace: gitops
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: metrics
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: appstudio-controller-manager
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   name: gitops-appstudio-service-webhook-service
>   namespace: gitops
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: appstudio-controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: backend-controller-manager
>   name: gitops-core-service-controller-manager-metrics-service
>   namespace: gitops
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: metrics
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: backend-controller-manager
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: cluster-agent-controller-manager
>   name: gitops-service-agent-controller-manager-metrics-service
>   namespace: gitops
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: metrics
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: cluster-agent-controller-manager
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: appstudio-controller-manager
>   name: gitops-appstudio-service-controller-manager
>   namespace: gitops
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: appstudio-controller-manager
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: appstudio-controller-manager
>     spec:
>       containers:
>       - args:
>         - --leader-elect
>         - --zap-time-encoding=rfc3339nano
>         - --health-probe-bind-address=:8085
>         - --metrics-bind-address=:8080
>         command:
>         - appstudio-controller
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8085
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8085
>           initialDelaySeconds: 15
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 1024Mi
>           requests:
>             cpu: 50m
>             memory: 256Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources: {}
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-appstudio-service-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: backend-controller-manager
>   name: gitops-core-service-controller-manager
>   namespace: gitops
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: backend-controller-manager
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         control-plane: backend-controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:18081
>         - --metrics-bind-address=:8080
>         - --leader-elect
>         - --zap-time-encoding=rfc3339nano
>         command:
>         - gitops-service-backend
>         env:
>         - name: ARGO_CD_NAMESPACE
>           value: gitops-service-argocd
>         - name: DB_ADDR
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: gitops-service-postgres-rds-config
>         - name: DB_PASS
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: gitops-service-postgres-rds-config
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 18081
>           initialDelaySeconds: 120
>           periodSeconds: 60
>         name: manager
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 18081
>           initialDelaySeconds: 180
>           periodSeconds: 30
>         resources:
>           limits:
>             cpu: 2000m
>             memory: 4800Mi
>           requests:
>             cpu: 1000m
>             memory: 2400Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources: {}
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       initContainers:
>       - command:
>         - /init-container/init-container
>         env:
>         - name: ARGO_CD_NAMESPACE
>           value: gitops-service-argocd
>         - name: DB_ADDR
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: gitops-service-postgres-rds-config
>         - name: DB_PASS
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: gitops-service-postgres-rds-config
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         name: init-container
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-core-service-controller-manager
>       terminationGracePeriodSeconds: 10
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     control-plane: cluster-agent-controller-manager
>   name: gitops-service-agent-controller-manager
>   namespace: gitops
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: cluster-agent-controller-manager
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>       labels:
>         control-plane: cluster-agent-controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8083
>         - --metrics-bind-address=:8080
>         - --leader-elect
>         - --zap-time-encoding=rfc3339nano
>         command:
>         - gitops-service-cluster-agent
>         env:
>         - name: ARGO_CD_NAMESPACE
>           value: gitops-service-argocd
>         - name: DB_ADDR
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: gitops-service-postgres-rds-config
>         - name: DB_PASS
>           value: ""
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: gitops-service-postgres-rds-config
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8083
>           initialDelaySeconds: 45
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 8080
>           name: http-metrics
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8083
>           initialDelaySeconds: 45
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 300m
>             memory: 1000Mi
>           requests:
>             cpu: 200m
>             memory: 300Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tmp
>           name: tmp
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=10
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
>         imagePullPolicy: IfNotPresent
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources: {}
>         terminationMessagePath: /dev/termination-log
>         terminationMessagePolicy: File
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: gitops-service-agent-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - emptyDir: {}
>         name: tmp
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ArgoCD
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   finalizers:
>   - argoproj.io/finalizer
>   name: gitops-service-argocd
>   namespace: gitops-service-argocd
> spec:
>   applicationSet:
>     resources:
>       limits:
>         cpu: "1"
>         memory: 1Gi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>   controller:
>     appSync: 60s
>     logLevel: debug
>     processors: {}
>     resources:
>       limits:
>         cpu: "1"
>         memory: 3Gi
>       requests:
>         cpu: 250m
>         memory: 256Mi
>     sharding: {}
>   grafana:
>     enabled: false
>     ingress:
>       enabled: false
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>     route:
>       enabled: false
>   ha:
>     enabled: false
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>   initialSSHKnownHosts: {}
>   prometheus:
>     enabled: false
>     ingress:
>       enabled: false
>     route:
>       enabled: false
>   rbac:
>     policy: g, system:authenticated, role:admin
>     scopes: '[groups]'
>   redis:
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 250m
>         memory: 128Mi
>   repo:
>     logLevel: debug
>     resources:
>       limits:
>         cpu: "1"
>         memory: 1Gi
>       requests:
>         cpu: 250m
>         memory: 256Mi
>   resourceInclusions: |
>     - apiGroups:
>       - ""
>       kinds:
>       - "PersistentVolumeClaim"
>       - "PersistentVolume"
>       - "Secret"
>       - "ConfigMap"
>       - "Pod"
>       - "Endpoint"
>       - "Service"
>       - "ServiceAccounts"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "apps"
>       kinds:
>       - "ReplicaSet"
>       - "StatefulSet"
>       - "DaemonSet"
>       - "Deployment"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "discovery.k8s.io"
>       kinds:
>       - "EndpointSlice"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "networking.k8s.io"
>       kinds:
>       - "Ingress"
>       - "IngressClass"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "rbac.authorization.k8s.io"
>       kinds:
>       - "RoleBinding"
>       - "Role"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "route.openshift.io"
>       kinds:
>       - "Route"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "triggers.tekton.dev"
>       kinds:
>       - "EventListener"
>       - "TriggerTemplate"
>       clusters:
>       - "*"
>     - apiGroups:
>       - "pipelinesascode.tekton.dev"
>       kinds:
>       - "Repository"
>       clusters:
>       - "*"
>   server:
>     autoscale:
>       enabled: false
>     grpc:
>       ingress:
>         enabled: false
>     ingress:
>       enabled: false
>     logLevel: debug
>     resources:
>       limits:
>         cpu: 500m
>         memory: 256Mi
>       requests:
>         cpu: 125m
>         memory: 128Mi
>     route:
>       enabled: true
>       tls:
>         termination: reencrypt
>     service:
>       type: ""
>   tls:
>     ca: {}
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: gitops-service-postgres-rds-config
>   namespace: gitops
> spec:
>   dataFrom:
>   - extract:
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: gitops-service-postgres-rds-config
> ---
> apiVersion: operators.coreos.com/v1alpha1
> kind: Subscription
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: openshift-gitops-operator
>   namespace: openshift-operators
> spec:
>   channel: gitops-1.7
>   installPlanApproval: Automatic
>   name: openshift-gitops-operator
>   source: redhat-operators
>   sourceNamespace: openshift-marketplace
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     service.beta.openshift.io/inject-cabundle: "true"
>   creationTimestamp: null
>   name: gitops-appstudio-service-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-snapshot
>   failurePolicy: Fail
>   name: vsnapshot.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - snapshots
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-snapshotenvironmentbinding
>   failurePolicy: Fail
>   name: vsnapshotenvironmentbinding.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - snapshotenvironmentbindings
>   sideEffects: None
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: gitops-appstudio-service-webhook-service
>       namespace: gitops
>       path: /validate-appstudio-redhat-com-v1alpha1-promotionrun
>   failurePolicy: Fail
>   name: vpromotionrun.kb.io
>   rules:
>   - apiGroups:
>     - appstudio.redhat.com
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - promotionruns
>   sideEffects: None 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Development changes from 8531b70 to e71ef6d on Fri Mar 10 16:55:45 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index cab3d27..c4a4093 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -10,6 +10,7 @@ spec:
     - cloudwatch:
         groupBy: namespaceName
         region: us-east-1
+        retention_in_days: 180
       name: remote-cloudwatch
       secret:
         name: cloudwatch-forwarder 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (758 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e71ef6d/development/app-of-apps-development.yaml /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8531b70/development/app-of-apps-development.yaml
0a1,756
> apiVersion: v1
> kind: Secret
> metadata:
>   labels:
>     appstudio.redhat.com/host-cluster: "true"
>     appstudio.redhat.com/member-cluster: "true"
>     appstudio.redhat.com/quality-dashboard: "true"
>     argocd.argoproj.io/secret-type: cluster
>   name: cluster-kubernetes.default.svc
>   namespace: openshift-gitops
> stringData:
>   config: '{"tlsClientConfig":{"insecure":false}}'
>   name: in-cluster-local
>   server: https://kubernetes.default.svc
> type: Opaque
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: application-api
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: application-api-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-api
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/application-api
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
>   name: build-service
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
>             sourceRoot: components/build-service
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
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
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: build-templates
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
>             sourceRoot: components/build-templates
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-templates-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
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
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: cluster-registration
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: cluster-registration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: cluster-reg-config
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/cluster-registration
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: dev-sso
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/host-cluster: "true"
>   template:
>     metadata:
>       name: dev-sso-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: dev-sso
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/dev-sso
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: dora-metrics
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/dora-metrics
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: dora-metrics-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: dora-metrics
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
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: enterprise-contract
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: enterprise-contract-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: enterprise-contract-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/enterprise-contract
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
>   name: gitops
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
>             sourceRoot: components/gitops
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
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: gitops-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: gitops
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
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: has
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
>             sourceRoot: components/has
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: has-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-service
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
>   name: image-controller
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
>             sourceRoot: components/image-controller
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: image-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
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
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: integration
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: integration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: integration-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/integration
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
>   name: internal-services
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: internal-services-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: internal-services
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/internal-services
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
>   name: jvm-build-service
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: jvm-build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/jvm-build-service
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: pipeline-service
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
>             sourceRoot: components/pipeline-service
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
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: pipeline-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
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
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: release
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: release-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: release-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/release
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
>   name: shared-resources
>   namespace: openshift-gitops
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: shared-resources-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/shared-resources
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
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
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Staging changes from 361fa7f to 8531b70 on Fri Mar 10 15:03:39 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 862da26..829ae9b 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,6 +16,7 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
+- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
new file mode 100644
index 0000000..76ff6a1
--- /dev/null
+++ b/components/authentication/base/sandbox-dev.yaml
@@ -0,0 +1,27 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests
+  namespace: rh-ee-fmuntean-tenant
+rules:
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests"
+  verbs:
+  - "*"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests-rb
+  namespace: rh-ee-fmuntean-tenant
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8531b70/staging/components/authentication/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-361fa7f/staging/components/authentication/staging/kustomize.out
22,34d21
<   name: edit-spacerequests
<   namespace: rh-ee-fmuntean-tenant
< rules:
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
634,647d620
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: edit-spacerequests-rb
<   namespace: rh-ee-fmuntean-tenant
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: edit-spacerequests
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: mfrancisc 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Development changes from 361fa7f to 8531b70 on Fri Mar 10 15:03:39 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 862da26..829ae9b 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,6 +16,7 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
+- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
new file mode 100644
index 0000000..76ff6a1
--- /dev/null
+++ b/components/authentication/base/sandbox-dev.yaml
@@ -0,0 +1,27 @@
+---
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests
+  namespace: rh-ee-fmuntean-tenant
+rules:
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests"
+  verbs:
+  - "*"
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: edit-spacerequests-rb
+  namespace: rh-ee-fmuntean-tenant
+subjects:
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: mfrancisc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Staging changes from ef3ef0c to 361fa7f on Fri Mar 10 14:52:38 2023 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/hack/hac/installHac.sh b/hack/hac/installHac.sh
new file mode 100755
index 0000000..5355737
--- /dev/null
+++ b/hack/hac/installHac.sh
@@ -0,0 +1,120 @@
+#!/bin/bash
+
+# Display help information about this script bash
+function helpUsage() {
+    echo -e "Deploy HAC and connect it to existing Stonesoup cluster\n"
+    echo 
+    echo -e "This script requires you to have access to HAC ephemeral cluster (c-rh-c-eph)."
+    echo -e "Options:"
+    echo -e "   -h,  --help                   Print this help message."
+    echo -e "   -ehk, --eph-hac-kubeconfig    A valid kubeconfig pointing to HAC Ephemeral cluster"
+    echo -e "   -sk, --stonesoup-kubeconfig   A valid kubeconfig pointing to a cluster where Stonesoup controllers are installed."
+    echo
+    echo -e "This command uses internal app-interface endpoint https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql (VPN required)"
+    echo -e "In order to use this without VPN, env vars QONTRACT_BASE_URL, QONTRACT_USERNAME and QONTRACT_PASSWORD need to be set."
+}
+
+while [[ $# -gt 0 ]]
+do
+    case "$1" in
+        -h|--help)
+            helpUsage
+            exit 0
+            ;;
+        -ehk|--eph-hac-kubeconfig)
+            export HAC_KUBECONFIG=$2
+            ;;
+        -sk|--stonesoup-kubeconfig)
+            export STONESOUP_KUBECONFIG=$2
+            ;;
+        *)
+            ;;
+    esac
+    shift
+done
+
+if [[ -z "$QONTRACT_BASE_URL" ]]; then
+    echo "[INFO] QONTRACT_BASE_URL env variable was not provided. Using default endpoint (RH VPN required)"
+    if ! curl --connect-timeout 3 https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql; then
+        echo "[ERROR] QONTRACT_BASE_URL was not provided and default app-interface endpint cannot be reached (Are you on VPN?)."
+        helpUsage & exit 1
+    fi
+else
+    if [[ -z "$QONTRACT_USERNAME" || -z "$QONTRACT_PASSWORD" ]]; then 
+        echo "[ERROR] QONTRACT_USERNAME and QONTRACT_PASSWORD needs to be set when QONTRACT_BASE_URL is provided."
+        helpUsage & exit 1
+    fi
+fi
+
+if [[ -z "$HAC_KUBECONFIG" ]]; then
+    echo "[ERROR] Ephemeral HAC cluster kubeconfig not defined. Please use flag '-ehk' or '--eph-hac-kubeconfig' to define the ephemeral hac cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+if [[ -z "$STONESOUP_KUBECONFIG" ]]; then
+    echo "[ERROR] stonesoup cluster kubeconfig not defined. Please use flag '-sk' or '--stonesoup-kubeconfig' to define the stonestoup cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+installBonfire(){
+    echo "Installing bonfire."
+    VENV_DIR=$(mktemp -d)
+    python3 -m venv "$VENV_DIR"
+    . "$VENV_DIR"/bin/activate
+    pip install crc-bonfire
+}
+
+reserveNamespace() {
+    echo "Reserving namespace."
+    NAMESPACE=$(KUBECONFIG=$HAC_KUBECONFIG bonfire namespace reserve -f)
+}
+
+installHac() {
+    echo "Preparing bonfire config"
+    CONFIG_DIR=$(mktemp -d)
+    cat > "$CONFIG_DIR/config.yaml" << EOF
+# Bonfire deployment configuration
+
+# Defines where to fetch the file that defines application configs
+appsFile:
+  host: gitlab
+  repo: insights-platform/cicd-common
+  path: bonfire_configs/ephemeral_apps.yaml
+
+# (optional) define any apps locally. An app defined here with <name> will override config for app
+# <name> in above fetched config.
+apps:
+- name: insights-ephemeral
+  components:
+    - name: frontend-configs
+      host: github
+      repo: redhat-appstudio-qe/frontend-configs
+      path: deploy/deploy.yaml
+EOF
+
+    echo "Installing HAC on Ephemeral cluster"
+    KUBECONFIG=$HAC_KUBECONFIG bonfire deploy -c "$CONFIG_DIR/config.yaml" hac --frontends true --source=appsre --clowd-env env-"${NAMESPACE}" --namespace="$NAMESPACE"
+}
+
+patchfeenv() {
+    KEYCLOAK_ENDPOINT=https://$(oc get route/keycloak --kubeconfig="$STONESOUP_KUBECONFIG" -n dev-sso -o jsonpath="{.spec.host}")/auth
+    oc patch feenv/env-"$NAMESPACE" --kubeconfig="$HAC_KUBECONFIG" --type=merge --patch-file=/dev/stdin << EOF
+    spec:
+        sso: $KEYCLOAK_ENDPOINT
+EOF
+}
+
+deployProxy() {
+    STONESOUP_API_ENDPOINT=https://$(oc get route/api --kubeconfig="$STONESOUP_KUBECONFIG" -n toolchain-host-operator  -o jsonpath="{.spec.host}")
+    oc process --kubeconfig="$HAC_KUBECONFIG" -f https://raw.githubusercontent.com/openshift/hac-dev/main/tmp/hac-proxy.yaml -n "$NAMESPACE" -p NAMESPACE="$NAMESPACE" -p ENV_NAME=env-"$NAMESPACE" -p HOSTNAME=$(oc get --kubeconfig="$HAC_KUBECONFIG" feenv env-"$NAMESPACE" -o=jsonpath='{.spec.hostname}') | oc create --kubeconfig="$HAC_KUBECONFIG" -f -
+    oc set env Deployment/hac-proxy --kubeconfig="$HAC_KUBECONFIG" -n "$NAMESPACE" HJ_K8S="$STONESOUP_API_ENDPOINT" HJ_PROXY_SSL=false
+}
+
+installBonfire
+reserveNamespace
+installHac
+patchfeenv
+deployProxy
+
+echo "Eph cluster namespace: $NAMESPACE"
+echo "Stonesoup URL: https://$(oc get feenv env-$NAMESPACE -o jsonpath="{.spec.hostname}")/hac/stonesoup" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Development changes from ef3ef0c to 361fa7f on Fri Mar 10 14:52:38 2023 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/hack/hac/installHac.sh b/hack/hac/installHac.sh
new file mode 100755
index 0000000..5355737
--- /dev/null
+++ b/hack/hac/installHac.sh
@@ -0,0 +1,120 @@
+#!/bin/bash
+
+# Display help information about this script bash
+function helpUsage() {
+    echo -e "Deploy HAC and connect it to existing Stonesoup cluster\n"
+    echo 
+    echo -e "This script requires you to have access to HAC ephemeral cluster (c-rh-c-eph)."
+    echo -e "Options:"
+    echo -e "   -h,  --help                   Print this help message."
+    echo -e "   -ehk, --eph-hac-kubeconfig    A valid kubeconfig pointing to HAC Ephemeral cluster"
+    echo -e "   -sk, --stonesoup-kubeconfig   A valid kubeconfig pointing to a cluster where Stonesoup controllers are installed."
+    echo
+    echo -e "This command uses internal app-interface endpoint https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql (VPN required)"
+    echo -e "In order to use this without VPN, env vars QONTRACT_BASE_URL, QONTRACT_USERNAME and QONTRACT_PASSWORD need to be set."
+}
+
+while [[ $# -gt 0 ]]
+do
+    case "$1" in
+        -h|--help)
+            helpUsage
+            exit 0
+            ;;
+        -ehk|--eph-hac-kubeconfig)
+            export HAC_KUBECONFIG=$2
+            ;;
+        -sk|--stonesoup-kubeconfig)
+            export STONESOUP_KUBECONFIG=$2
+            ;;
+        *)
+            ;;
+    esac
+    shift
+done
+
+if [[ -z "$QONTRACT_BASE_URL" ]]; then
+    echo "[INFO] QONTRACT_BASE_URL env variable was not provided. Using default endpoint (RH VPN required)"
+    if ! curl --connect-timeout 3 https://app-interface.apps.appsrep05ue1.zqxk.p1.openshiftapps.com/graphql; then
+        echo "[ERROR] QONTRACT_BASE_URL was not provided and default app-interface endpint cannot be reached (Are you on VPN?)."
+        helpUsage & exit 1
+    fi
+else
+    if [[ -z "$QONTRACT_USERNAME" || -z "$QONTRACT_PASSWORD" ]]; then 
+        echo "[ERROR] QONTRACT_USERNAME and QONTRACT_PASSWORD needs to be set when QONTRACT_BASE_URL is provided."
+        helpUsage & exit 1
+    fi
+fi
+
+if [[ -z "$HAC_KUBECONFIG" ]]; then
+    echo "[ERROR] Ephemeral HAC cluster kubeconfig not defined. Please use flag '-ehk' or '--eph-hac-kubeconfig' to define the ephemeral hac cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+if [[ -z "$STONESOUP_KUBECONFIG" ]]; then
+    echo "[ERROR] stonesoup cluster kubeconfig not defined. Please use flag '-sk' or '--stonesoup-kubeconfig' to define the stonestoup cluster kubeconfig." 
+    helpUsage & exit 1
+fi
+
+installBonfire(){
+    echo "Installing bonfire."
+    VENV_DIR=$(mktemp -d)
+    python3 -m venv "$VENV_DIR"
+    . "$VENV_DIR"/bin/activate
+    pip install crc-bonfire
+}
+
+reserveNamespace() {
+    echo "Reserving namespace."
+    NAMESPACE=$(KUBECONFIG=$HAC_KUBECONFIG bonfire namespace reserve -f)
+}
+
+installHac() {
+    echo "Preparing bonfire config"
+    CONFIG_DIR=$(mktemp -d)
+    cat > "$CONFIG_DIR/config.yaml" << EOF
+# Bonfire deployment configuration
+
+# Defines where to fetch the file that defines application configs
+appsFile:
+  host: gitlab
+  repo: insights-platform/cicd-common
+  path: bonfire_configs/ephemeral_apps.yaml
+
+# (optional) define any apps locally. An app defined here with <name> will override config for app
+# <name> in above fetched config.
+apps:
+- name: insights-ephemeral
+  components:
+    - name: frontend-configs
+      host: github
+      repo: redhat-appstudio-qe/frontend-configs
+      path: deploy/deploy.yaml
+EOF
+
+    echo "Installing HAC on Ephemeral cluster"
+    KUBECONFIG=$HAC_KUBECONFIG bonfire deploy -c "$CONFIG_DIR/config.yaml" hac --frontends true --source=appsre --clowd-env env-"${NAMESPACE}" --namespace="$NAMESPACE"
+}
+
+patchfeenv() {
+    KEYCLOAK_ENDPOINT=https://$(oc get route/keycloak --kubeconfig="$STONESOUP_KUBECONFIG" -n dev-sso -o jsonpath="{.spec.host}")/auth
+    oc patch feenv/env-"$NAMESPACE" --kubeconfig="$HAC_KUBECONFIG" --type=merge --patch-file=/dev/stdin << EOF
+    spec:
+        sso: $KEYCLOAK_ENDPOINT
+EOF
+}
+
+deployProxy() {
+    STONESOUP_API_ENDPOINT=https://$(oc get route/api --kubeconfig="$STONESOUP_KUBECONFIG" -n toolchain-host-operator  -o jsonpath="{.spec.host}")
+    oc process --kubeconfig="$HAC_KUBECONFIG" -f https://raw.githubusercontent.com/openshift/hac-dev/main/tmp/hac-proxy.yaml -n "$NAMESPACE" -p NAMESPACE="$NAMESPACE" -p ENV_NAME=env-"$NAMESPACE" -p HOSTNAME=$(oc get --kubeconfig="$HAC_KUBECONFIG" feenv env-"$NAMESPACE" -o=jsonpath='{.spec.hostname}') | oc create --kubeconfig="$HAC_KUBECONFIG" -f -
+    oc set env Deployment/hac-proxy --kubeconfig="$HAC_KUBECONFIG" -n "$NAMESPACE" HJ_K8S="$STONESOUP_API_ENDPOINT" HJ_PROXY_SSL=false
+}
+
+installBonfire
+reserveNamespace
+installHac
+patchfeenv
+deployProxy
+
+echo "Eph cluster namespace: $NAMESPACE"
+echo "Stonesoup URL: https://$(oc get feenv env-$NAMESPACE -o jsonpath="{.spec.hostname}")/hac/stonesoup" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (0 lines)</summary>  

``` 
 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Staging changes from 75df761 to ef3ef0c on Fri Mar 10 13:21:16 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index d6c7ba1..5741356 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+  newTag: 41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ef3ef0c/staging/components/integration/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-75df761/staging/components/integration/kustomize.out
1024c1024
<         image: quay.io/redhat-appstudio/integration-service:41fbdb124775323f58fd5ce93c70bb7d79c20650
---
>         image: quay.io/redhat-appstudio/integration-service:949eecfb02c6be08a3d840ba03739aa5bacf9ec7 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Development changes from 75df761 to ef3ef0c on Fri Mar 10 13:21:16 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index d6c7ba1..5741356 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 949eecfb02c6be08a3d840ba03739aa5bacf9ec7
+  newTag: 41fbdb124775323f58fd5ce93c70bb7d79c20650
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ef3ef0c/development/components/integration/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-75df761/development/components/integration/kustomize.out
1024c1024
<         image: quay.io/redhat-appstudio/integration-service:41fbdb124775323f58fd5ce93c70bb7d79c20650
---
>         image: quay.io/redhat-appstudio/integration-service:949eecfb02c6be08a3d840ba03739aa5bacf9ec7 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Staging changes from 928e19a to 75df761 on Fri Mar 10 12:09:03 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 6c986d6..97c6fc9 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 29e55f1..030f2a8 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
\ No newline at end of file
+    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index bdc8f52..968e264 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-75df761/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-928e19a/staging/components/jvm-build-service/kustomize.out
176,183c176,182
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
---
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
1047,1048c1046,1047
<           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
---
>           value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:77e1ca7dff9d83a159e64aacd3b6a7db9121b3de 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Development changes from 928e19a to 75df761 on Fri Mar 10 12:09:03 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 6c986d6..97c6fc9 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 29e55f1..030f2a8 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
\ No newline at end of file
+    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index bdc8f52..968e264 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-75df761/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-928e19a/development/components/jvm-build-service/kustomize.out
176,183c176,182
<                     \n \ttype FooStatus struct{ \t    // Represents the observations
<                     of a foo's current state. \t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\" \t    //
<                     +patchMergeKey=type \t    // +patchStrategy=merge \t    // +listType=map
<                     \t    // +listMapKey=type \t    Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n \t    // other fields
<                     \t}"
---
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
1047,1048c1046,1047
<           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
---
>           value: 77e1ca7dff9d83a159e64aacd3b6a7db9121b3de
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:77e1ca7dff9d83a159e64aacd3b6a7db9121b3de 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Staging changes from afa1f62 to 928e19a on Fri Mar 10 12:08:48 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index d12034a..842ff17 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index b322b7e..77fb71a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 57e894304ade673867272ba0a1dacc64b3a9a6e9
+  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (166 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-928e19a/staging/components/dora-metrics/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-afa1f62/staging/components/dora-metrics/staging/kustomize.out
1,133d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: dora-metrics
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: dora-metrics-exporter-sa
<   namespace: dora-metrics
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: dora-metrics-reader
< rules:
< - apiGroups:
<   - apps
<   resources:
<   - deployments
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
<   - update
< - apiGroups:
<   - apps
<   resources:
<   - replicasets
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - delete
<   - patch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: dora-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: dora-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: dora-metrics-exporter-sa
<   namespace: dora-metrics
< ---
< apiVersion: v1
< data:
<   imageExclude: '["quay.io/redhat-appstudio/gitopsdepl", "quay.io/redhat-appstudio/user-workload"]'
<   imageFilters: '["quay.io/redhat-appstudio/", "quay.io/redhat-appstudio-qe/", "quay.io/stolostron/"]'
<   searchLabel: app.kubernetes.io/instance
<   verbosity: "1"
< kind: ConfigMap
< metadata:
<   name: exporters-config
<   namespace: dora-metrics
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: exporter
<   name: exporters-svc
<   namespace: dora-metrics
< spec:
<   ports:
<   - name: metrics-port
<     port: 9101
<     protocol: TCP
<     targetPort: 9101
<   selector:
<     app: exporter
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   name: exporter
<   namespace: dora-metrics
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: exporter
<   template:
<     metadata:
<       labels:
<         app: exporter
<     spec:
<       containers:
<       - env:
<         - name: GITHUB_TOKEN
<           valueFrom:
<             secretKeyRef:
<               key: github
<               name: exporters-secret
<               optional: false
<         image: quay.io/redhat-appstudio/dora-metrics:b0b889ba5d95e759c184d483b57c4701e961214d
<         name: container
<         ports:
<         - containerPort: 9101
<           name: metrics-port
<           protocol: TCP
<       serviceAccount: dora-metrics-exporter-sa
<       serviceAccountName: dora-metrics-exporter-sa
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: exporters-secret
<   namespace: dora-metrics
< spec:
<   dataFrom:
<   - extract:
<       key: staging/qe/exporters-secret
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: exporters-secret
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-928e19a/staging/components/release/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-afa1f62/staging/components/release/kustomize.out
14d13
<   creationTimestamp: null
16a16,25
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
112d120
<   creationTimestamp: null
114a123,132
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
2293c2311
<         image: quay.io/redhat-appstudio/release-service:913a02c3595a2457680bb6221ae17753e04a08cd
---
>         image: quay.io/redhat-appstudio/release-service:57e894304ade673867272ba0a1dacc64b3a9a6e9 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Development changes from afa1f62 to 928e19a on Fri Mar 10 12:08:48 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index d12034a..842ff17 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index b322b7e..77fb71a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=57e894304ade673867272ba0a1dacc64b3a9a6e9
+- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 57e894304ade673867272ba0a1dacc64b3a9a6e9
+  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-928e19a/development/components/release/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-afa1f62/development/components/release/kustomize.out
14d13
<   creationTimestamp: null
16a16,25
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
112d120
<   creationTimestamp: null
114a123,132
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: release-service-webhook-service
>           namespace: release-service
>           path: /convert
>       conversionReviewVersions:
>       - v1
2293c2311
<         image: quay.io/redhat-appstudio/release-service:913a02c3595a2457680bb6221ae17753e04a08cd
---
>         image: quay.io/redhat-appstudio/release-service:57e894304ade673867272ba0a1dacc64b3a9a6e9 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Staging changes from 237461b to afa1f62 on Fri Mar 10 12:08:26 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 9de2911..13ab154 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=8826226f7d2f74dd0f3e74b70dde1fcd1e88f722
+- https://github.com/redhat-appstudio/application-api/config/crd?ref=6e0986f521321faf0c549258e281fc92d916f1bd
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (178 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-afa1f62/staging/components/application-api/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-237461b/staging/components/application-api/kustomize.out
258,260c258,259
<                     description: 'If specified, the devfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                     description: 'If specified, the devfile at the URL will be used
>                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
264,266c263,264
<                     description: If specified, the dockerfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Optional.
---
>                     description: If specified, the dockerfile at the URL will be used
>                       for the component. Optional.
497,500c495,496
<                                   description: 'If specified, the devfile at the URI
<                                     will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                                   description: 'If specified, the devfile at the URL
>                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
505,507c501
<                                     URI will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Optional.
---
>                                     URL will be used for the component. Optional.
857,859c851,852
<                         description: 'If specified, the devfile at the URI will be
<                           used for the component. Can be a local path inside the repository,
<                           or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                         description: 'If specified, the devfile at the URL will be
>                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
863,865c856,857
<                         description: If specified, the dockerfile at the URI will
<                           be used for the component. Can be a local path inside the
<                           repository, or an external URL. Optional.
---
>                         description: If specified, the dockerfile at the URL will
>                           be used for the component. Optional.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-afa1f62/staging/components/dora-metrics/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-237461b/staging/components/dora-metrics/staging/kustomize.out
0a1,133
> apiVersion: v1
> kind: Namespace
> metadata:
>   name: dora-metrics
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: dora-metrics-exporter-sa
>   namespace: dora-metrics
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: dora-metrics-reader
> rules:
> - apiGroups:
>   - apps
>   resources:
>   - deployments
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
>   - update
> - apiGroups:
>   - apps
>   resources:
>   - replicasets
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - delete
>   - patch
>   - update
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: dora-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: dora-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: dora-metrics-exporter-sa
>   namespace: dora-metrics
> ---
> apiVersion: v1
> data:
>   imageExclude: '["quay.io/redhat-appstudio/gitopsdepl", "quay.io/redhat-appstudio/user-workload"]'
>   imageFilters: '["quay.io/redhat-appstudio/", "quay.io/redhat-appstudio-qe/", "quay.io/stolostron/"]'
>   searchLabel: app.kubernetes.io/instance
>   verbosity: "1"
> kind: ConfigMap
> metadata:
>   name: exporters-config
>   namespace: dora-metrics
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: exporter
>   name: exporters-svc
>   namespace: dora-metrics
> spec:
>   ports:
>   - name: metrics-port
>     port: 9101
>     protocol: TCP
>     targetPort: 9101
>   selector:
>     app: exporter
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   name: exporter
>   namespace: dora-metrics
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: exporter
>   template:
>     metadata:
>       labels:
>         app: exporter
>     spec:
>       containers:
>       - env:
>         - name: GITHUB_TOKEN
>           valueFrom:
>             secretKeyRef:
>               key: github
>               name: exporters-secret
>               optional: false
>         image: quay.io/redhat-appstudio/dora-metrics:b0b889ba5d95e759c184d483b57c4701e961214d
>         name: container
>         ports:
>         - containerPort: 9101
>           name: metrics-port
>           protocol: TCP
>       serviceAccount: dora-metrics-exporter-sa
>       serviceAccountName: dora-metrics-exporter-sa
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: exporters-secret
>   namespace: dora-metrics
> spec:
>   dataFrom:
>   - extract:
>       key: staging/qe/exporters-secret
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: exporters-secret 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Development changes from 237461b to afa1f62 on Fri Mar 10 12:08:26 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 9de2911..13ab154 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=8826226f7d2f74dd0f3e74b70dde1fcd1e88f722
+- https://github.com/redhat-appstudio/application-api/config/crd?ref=6e0986f521321faf0c549258e281fc92d916f1bd
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (43 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-afa1f62/development/components/application-api/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-237461b/development/components/application-api/kustomize.out
258,260c258,259
<                     description: 'If specified, the devfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                     description: 'If specified, the devfile at the URL will be used
>                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
264,266c263,264
<                     description: If specified, the dockerfile at the URI will be used
<                       for the component. Can be a local path inside the repository,
<                       or an external URL. Optional.
---
>                     description: If specified, the dockerfile at the URL will be used
>                       for the component. Optional.
497,500c495,496
<                                   description: 'If specified, the devfile at the URI
<                                     will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                                   description: 'If specified, the devfile at the URL
>                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
505,507c501
<                                     URI will be used for the component. Can be a local
<                                     path inside the repository, or an external URL.
<                                     Optional.
---
>                                     URL will be used for the component. Optional.
857,859c851,852
<                         description: 'If specified, the devfile at the URI will be
<                           used for the component. Can be a local path inside the repository,
<                           or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
---
>                         description: 'If specified, the devfile at the URL will be
>                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
863,865c856,857
<                         description: If specified, the dockerfile at the URI will
<                           be used for the component. Can be a local path inside the
<                           repository, or an external URL. Optional.
---
>                         description: If specified, the dockerfile at the URL will
>                           be used for the component. Optional. 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Staging changes from d79bb21 to 237461b on Fri Mar 10 12:08:12 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 932127d..8f38edd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-service/config/default?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+- https://github.com/redhat-appstudio/application-service/config/default?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/application-service
   newName: quay.io/redhat-appstudio/application-service
-  newTag: fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  newTag: d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 configMapGenerator:
 - literals:
diff --git a/components/monitoring/grafana/base/has/kustomization.yaml b/components/monitoring/grafana/base/has/kustomization.yaml
index f9a3ce9..7493156 100644
--- a/components/monitoring/grafana/base/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/has/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-237461b/staging/components/has/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-d79bb21/staging/components/has/staging/kustomize.out
683c683
<         image: quay.io/redhat-appstudio/application-service:d4d3f6e353a7f300de0e91a5bf9333a222d412bc
---
>         image: quay.io/redhat-appstudio/application-service:fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Development changes from d79bb21 to 237461b on Fri Mar 10 12:08:12 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 932127d..8f38edd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-service/config/default?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+- https://github.com/redhat-appstudio/application-service/config/default?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/application-service
   newName: quay.io/redhat-appstudio/application-service
-  newTag: fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  newTag: d4d3f6e353a7f300de0e91a5bf9333a222d412bc
 
 configMapGenerator:
 - literals:
diff --git a/components/monitoring/grafana/base/has/kustomization.yaml b/components/monitoring/grafana/base/has/kustomization.yaml
index f9a3ce9..7493156 100644
--- a/components/monitoring/grafana/base/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/has/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-237461b/development/components/has/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-d79bb21/development/components/has/development/kustomize.out
683c683
<         image: quay.io/redhat-appstudio/application-service:d4d3f6e353a7f300de0e91a5bf9333a222d412bc
---
>         image: quay.io/redhat-appstudio/application-service:fee6ebe4a942d6f1eefcc6bf6a7ff2bf3507ffab 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Staging changes from 2153ebb to d79bb21 on Fri Mar 10 12:07:13 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index c2804da..fa32a0f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 12adba270722dde8c7b8553ddceee2167284a62b
+  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index b90cfbe..959a581 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-d79bb21/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2153ebb/staging/components/build-service/staging/kustomize.out
250,296d249
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: build-service-manager-role
<   namespace: build-service
< rules:
< - apiGroups:
<   - batch
<   resources:
<   - jobs
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
357a311,321
>   - batch
>   resources:
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - watch
> - apiGroups:
460,475d423
<   name: build-service-manager-rolebinding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: build-service-controller-manager
<   namespace: build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
585c533
<         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
---
>         image: quay.io/redhat-appstudio/build-service:12adba270722dde8c7b8553ddceee2167284a62b 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Development changes from 2153ebb to d79bb21 on Fri Mar 10 12:07:13 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index c2804da..fa32a0f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 12adba270722dde8c7b8553ddceee2167284a62b
+  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index b90cfbe..959a581 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=12adba270722dde8c7b8553ddceee2167284a62b
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-d79bb21/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2153ebb/development/components/build-service/development/kustomize.out
250,296d249
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   creationTimestamp: null
<   name: build-service-manager-role
<   namespace: build-service
< rules:
< - apiGroups:
<   - batch
<   resources:
<   - jobs
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
357a311,321
>   - batch
>   resources:
>   - jobs
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - watch
> - apiGroups:
460,475d423
<   name: build-service-manager-rolebinding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-manager-role
< subjects:
< - kind: ServiceAccount
<   name: build-service-controller-manager
<   namespace: build-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
585c533
<         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
---
>         image: quay.io/redhat-appstudio/build-service:12adba270722dde8c7b8553ddceee2167284a62b 
```
 
</details> 
<br> 


</div>
