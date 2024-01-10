# kustomize changes tracked by commits 
### This file generated at Wed Jan 10 16:07:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2fa20cf7 to b5da538c on Wed Jan 10 15:59:07 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
new file mode 100644
index 00000000..f306f00f
--- /dev/null
+++ b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
@@ -0,0 +1,25 @@
+-----BEGIN CERTIFICATE-----
+MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
+VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
+Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
+GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
+b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
+WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
+VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
+ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
+9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
+bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
+c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
+GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
+X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
+BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
+4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
+bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
+CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
+LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
+oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
+S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
+4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
+RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
+-----END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
new file mode 100644
index 00000000..dbe10450
--- /dev/null
+++ b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
@@ -0,0 +1,37 @@
+-----BEGIN CERTIFICATE-----
+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
+56vmq8fwQYIcazjrygWiaOnoep/SMw==
+-----END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..eaa65daa
--- /dev/null
+++ b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,30 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: rh-certs-2015
+            mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
+            subPath: 2015-RH-IT-Root-CA.pem
+          - name: rh-certs-2022
+            mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
+            subPath: 2022-IT-Root-CA.pem
+      volumes:
+        - name: rh-certs-2015
+          configMap:
+            name: rh-certs-2015
+            items:
+              - key: 2015-RH-IT-Root-CA.pem
+                path: 2015-RH-IT-Root-CA.pem 
+        - name: rh-certs-2022
+          configMap:
+            name: rh-certs-2022
+            items:
+              - key: 2022-IT-Root-CA.pem
+                path: 2022-IT-Root-CA.pem
diff --git a/components/build-service/components/rh-certs/kustomization.yaml b/components/build-service/components/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..e961547c
--- /dev/null
+++ b/components/build-service/components/rh-certs/kustomization.yaml
@@ -0,0 +1,16 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+configMapGenerator:
+  - name: rh-certs-2015
+    files: 
+      - 2015-RH-IT-Root-CA.pem
+  - name: rh-certs-2022
+    files: 
+      - 2022-IT-Root-CA.pem
+namespace: build-service
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index ad662a9c..5cc8eaf6 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -33,3 +33,6 @@ patches:
       kind: Deployment
       name: build-service-controller-manager
     path: pac-webhook-insecure-ssl-patch.yaml
+
+components:
+  - ../components/rh-certs
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
index ed65afa8..6729e3f0 100644
--- a/components/build-service/staging/stone-stage-p01/kustomization.yaml
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -9,3 +9,5 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+components:
+  - ../../components/rh-certs 
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
<h3>1: Staging changes from 2fa20cf7 to b5da538c on Wed Jan 10 15:59:07 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
new file mode 100644
index 00000000..f306f00f
--- /dev/null
+++ b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
@@ -0,0 +1,25 @@
+-----BEGIN CERTIFICATE-----
+MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
+VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
+Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
+GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
+b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
+WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
+VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
+ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
+9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
+bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
+c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
+GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
+X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
+BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
+4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
+bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
+CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
+LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
+oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
+S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
+4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
+RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
+-----END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
new file mode 100644
index 00000000..dbe10450
--- /dev/null
+++ b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
@@ -0,0 +1,37 @@
+-----BEGIN CERTIFICATE-----
+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
+56vmq8fwQYIcazjrygWiaOnoep/SMw==
+-----END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..eaa65daa
--- /dev/null
+++ b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,30 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: rh-certs-2015
+            mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
+            subPath: 2015-RH-IT-Root-CA.pem
+          - name: rh-certs-2022
+            mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
+            subPath: 2022-IT-Root-CA.pem
+      volumes:
+        - name: rh-certs-2015
+          configMap:
+            name: rh-certs-2015
+            items:
+              - key: 2015-RH-IT-Root-CA.pem
+                path: 2015-RH-IT-Root-CA.pem 
+        - name: rh-certs-2022
+          configMap:
+            name: rh-certs-2022
+            items:
+              - key: 2022-IT-Root-CA.pem
+                path: 2022-IT-Root-CA.pem
diff --git a/components/build-service/components/rh-certs/kustomization.yaml b/components/build-service/components/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..e961547c
--- /dev/null
+++ b/components/build-service/components/rh-certs/kustomization.yaml
@@ -0,0 +1,16 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+configMapGenerator:
+  - name: rh-certs-2015
+    files: 
+      - 2015-RH-IT-Root-CA.pem
+  - name: rh-certs-2022
+    files: 
+      - 2022-IT-Root-CA.pem
+namespace: build-service
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index ad662a9c..5cc8eaf6 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -33,3 +33,6 @@ patches:
       kind: Deployment
       name: build-service-controller-manager
     path: pac-webhook-insecure-ssl-patch.yaml
+
+components:
+  - ../components/rh-certs
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
index ed65afa8..6729e3f0 100644
--- a/components/build-service/staging/stone-stage-p01/kustomization.yaml
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -9,3 +9,5 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+components:
+  - ../../components/rh-certs 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (102 lines)</summary>  

``` 
./commit-2fa20cf7/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
609,686d608
< data:
<   2015-RH-IT-Root-CA.pem: |
<     -----BEGIN CERTIFICATE-----
<     MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
<     VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
<     Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
<     GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
<     b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
<     WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
<     VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
<     ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
<     9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
<     ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
<     bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
<     c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
<     GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
<     X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
<     BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
<     4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
<     bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
<     CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
<     LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
<     oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
<     S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
<     4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
<     RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   name: rh-certs-2015-496kcdf4g7
<   namespace: build-service
< ---
< apiVersion: v1
< data:
<   2022-IT-Root-CA.pem: |
<     -----BEGIN CERTIFICATE-----
<     MIIGcjCCBFqgAwIBAgIFICIEEFwwDQYJKoZIhvcNAQEMBQAwgaMxCzAJBgNVBAYT
<     AlVTMRcwFQYDVQQIDA5Ob3J0aCBDYXJvbGluYTEQMA4GA1UEBwwHUmFsZWlnaDEW
<     MBQGA1UECgwNUmVkIEhhdCwgSW5jLjETMBEGA1UECwwKUmVkIEhhdCBJVDEZMBcG
<     A1UEAwwQSW50ZXJuYWwgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5mb3NlY0By
<     ZWRoYXQuY29tMCAXDTIzMDQwNTE4MzM0NFoYDzIwNTIwNDAyMTgzMzQ0WjCBozEL
<     MAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYDVQQHDAdS
<     YWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApSZWQgSGF0
<     IElUMRkwFwYDVQQDDBBJbnRlcm5hbCBSb290IENBMSEwHwYJKoZIhvcNAQkBFhJp
<     bmZvc2VjQHJlZGhhdC5jb20wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
<     AQCxuloEVglzWXZ9FFFUOSVdpRIB2jW5YBpwgMem2fPZeWIIvrVQ6PL9XNenDOXu
<     BHbShD/PApxi/ujSZyOIjLsNh7WDO+0NqpkfTyB9wUYAhx3GTIGY75RSoyZy1yKb
<     ZDTKv+rSfui9IlstAMz6L3OQLZES9zAYK8ICiDUwTeNZ7quA6qf0Kam2LyuBc/bl
<     BI7WFLOGGWY135P1OUXJgnJUsMhnYMTgvZQyJ2P7eLQpiR8TOr5ZI6CYapiyG64L
<     nkr/rsALjSxoUo09Yai1CVO66VFJ/XgMNt3mzQtLDMPXiKUuwsBsgvo4QvLjkXYI
<     ii+/YQyQaypsKctG8mefKkTT1kRDKj4LNdTRRgd5tco+b4+O/4upt8mIsx1+tbdM
<     LNGEz3Jqd0sj8Fl4Rzus+W+enzXmMfZH86X6bU5tMvueuFd5LV+M9XzliscaEQMK
<     EQ7CC72ldrOK2K12Gjb7bu8dKq+aSlNuWK+Gz1NvbwYpaCBYp0JoryvHEq5jrCLP
<     lTkuJQ3HaaAf+4LaBm8no9xK2VbDf6l/7Htb5I5LnAAZi0/5TzH07NhHoIeMSmTE
<     Ea07i/i5lbhM2qbx6pfLukg24HLCKTdi4Fo6/JqPWH6/3eI55NsoWSmoDdTiLg4v
<     1G/rgUVr2N6F36GTYMGqiITvvd4Qm3i9XOTQvsx8RJx4JQIDAQABo4GoMIGlMB0G
<     A1UdDgQWBBS1+o3lCnihCZXbTSGGlWpZT0nIizAfBgNVHSMEGDAWgBS1+o3lCnih
<     CZXbTSGGlWpZT0nIizAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAR
<     BglghkgBhvhCAQEEBAMCAQYwLwYDVR0fBCgwJjAkoCKgIIYeaHR0cDovL29jc3Au
<     cmVkaGF0LmNvbS9jcmwucGVtMA0GCSqGSIb3DQEBDAUAA4ICAQCDLaGTS0g2HmMS
<     g0i6Z0RVDC7sSnWFgEk2ZO1WUQj5WkFVS7gWxed/mXCzeL2EV1Pd22YKHM1eU1vo
<     6b03cbNRXlRGGFksmQeM9h2sVjbP0hRZxqqfI+UW223N8E+qK3wSa8m6nhOfIJie
<     DD9s8CdL1VT6l4qq2gR8mVBW7EZ+Ux5u+AMXpN4WPEkcLer2djbfhXoPsJ4r5CcX
<     vh7W5rCZbo+0oBI5hrTlG4Tjhv1atqLhMmssjn8NbRrnhrbGF7w8NxFts69GkKDB
<     UIXr1pWZSAuRELlIxmvh5ZSX5YTbFmDuTvmNx8RPPy6OY4W1v1BUKp0HyJTi07s2
<     8SN+n9htHPHX9XBZctQmOSFLiqhi15LIqI54tR2tSgwH3Z5moh4sy6MuApXstsu4
<     qtkII2KZk3SottI8MOS6zqKrU7jPou6ZE0fznNiu23Q3Ksuuj6mBkLVw3bQe68Vm
<     NUTDac1oVzc8d5NMbx5kVb4Lahq+SATVFC8NK9G/Pk1AiwO8WhKffySsLeO5nMib
<     4BOVq0qFoAi8YCFuJOl9FlH1dPW/TnqlTQMQNhXpzGjU3HV3lr/Mk+ghNgIYcLcz
<     pEBsiGwKOVW4nYKIqPLn/36Ao/kfXeAdJhaAZq1SkTbeqNiwHQm3KNHzNObmjD0f
<     56vmq8fwQYIcazjrygWiaOnoep/SMw==
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   name: rh-certs-2022-5fghf7b9tk
<   namespace: build-service
< ---
< apiVersion: v1
771,777d692
<         volumeMounts:
<         - mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
<           name: rh-certs-2015
<           subPath: 2015-RH-IT-Root-CA.pem
<         - mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
<           name: rh-certs-2022
<           subPath: 2022-IT-Root-CA.pem
805,817d719
<       volumes:
<       - configMap:
<           items:
<           - key: 2015-RH-IT-Root-CA.pem
<             path: 2015-RH-IT-Root-CA.pem
<           name: rh-certs-2015-496kcdf4g7
<         name: rh-certs-2015
<       - configMap:
<           items:
<           - key: 2022-IT-Root-CA.pem
<             path: 2022-IT-Root-CA.pem
<           name: rh-certs-2022-5fghf7b9tk
<         name: rh-certs-2022 
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
<h3>1: Development changes from 2fa20cf7 to b5da538c on Wed Jan 10 15:59:07 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
new file mode 100644
index 00000000..f306f00f
--- /dev/null
+++ b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
@@ -0,0 +1,25 @@
+-----BEGIN CERTIFICATE-----
+MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
+VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
+Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
+GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
+b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
+WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
+VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
+ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
+9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
+bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
+c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
+GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
+X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
+BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
+4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
+bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
+CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
+LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
+oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
+S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
+4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
+RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
+-----END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
new file mode 100644
index 00000000..dbe10450
--- /dev/null
+++ b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
@@ -0,0 +1,37 @@
+-----BEGIN CERTIFICATE-----
+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
+56vmq8fwQYIcazjrygWiaOnoep/SMw==
+-----END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..eaa65daa
--- /dev/null
+++ b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,30 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: rh-certs-2015
+            mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
+            subPath: 2015-RH-IT-Root-CA.pem
+          - name: rh-certs-2022
+            mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
+            subPath: 2022-IT-Root-CA.pem
+      volumes:
+        - name: rh-certs-2015
+          configMap:
+            name: rh-certs-2015
+            items:
+              - key: 2015-RH-IT-Root-CA.pem
+                path: 2015-RH-IT-Root-CA.pem 
+        - name: rh-certs-2022
+          configMap:
+            name: rh-certs-2022
+            items:
+              - key: 2022-IT-Root-CA.pem
+                path: 2022-IT-Root-CA.pem
diff --git a/components/build-service/components/rh-certs/kustomization.yaml b/components/build-service/components/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..e961547c
--- /dev/null
+++ b/components/build-service/components/rh-certs/kustomization.yaml
@@ -0,0 +1,16 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+configMapGenerator:
+  - name: rh-certs-2015
+    files: 
+      - 2015-RH-IT-Root-CA.pem
+  - name: rh-certs-2022
+    files: 
+      - 2022-IT-Root-CA.pem
+namespace: build-service
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index ad662a9c..5cc8eaf6 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -33,3 +33,6 @@ patches:
       kind: Deployment
       name: build-service-controller-manager
     path: pac-webhook-insecure-ssl-patch.yaml
+
+components:
+  - ../components/rh-certs
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
index ed65afa8..6729e3f0 100644
--- a/components/build-service/staging/stone-stage-p01/kustomization.yaml
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -9,3 +9,5 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+components:
+  - ../../components/rh-certs 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (106 lines)</summary>  

``` 
./commit-2fa20cf7/development/components/build-service/development/kustomize.out.yaml
609,690d608
< data:
<   2015-RH-IT-Root-CA.pem: |
<     -----BEGIN CERTIFICATE-----
<     MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
<     VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
<     Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
<     GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
<     b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
<     WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
<     VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
<     ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
<     9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
<     ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
<     bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
<     c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
<     GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
<     X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
<     BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
<     4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
<     bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
<     CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
<     LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
<     oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
<     S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
<     4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
<     RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: rh-certs-2015-496kcdf4g7
<   namespace: build-service
< ---
< apiVersion: v1
< data:
<   2022-IT-Root-CA.pem: |
<     -----BEGIN CERTIFICATE-----
<     MIIGcjCCBFqgAwIBAgIFICIEEFwwDQYJKoZIhvcNAQEMBQAwgaMxCzAJBgNVBAYT
<     AlVTMRcwFQYDVQQIDA5Ob3J0aCBDYXJvbGluYTEQMA4GA1UEBwwHUmFsZWlnaDEW
<     MBQGA1UECgwNUmVkIEhhdCwgSW5jLjETMBEGA1UECwwKUmVkIEhhdCBJVDEZMBcG
<     A1UEAwwQSW50ZXJuYWwgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5mb3NlY0By
<     ZWRoYXQuY29tMCAXDTIzMDQwNTE4MzM0NFoYDzIwNTIwNDAyMTgzMzQ0WjCBozEL
<     MAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYDVQQHDAdS
<     YWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApSZWQgSGF0
<     IElUMRkwFwYDVQQDDBBJbnRlcm5hbCBSb290IENBMSEwHwYJKoZIhvcNAQkBFhJp
<     bmZvc2VjQHJlZGhhdC5jb20wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
<     AQCxuloEVglzWXZ9FFFUOSVdpRIB2jW5YBpwgMem2fPZeWIIvrVQ6PL9XNenDOXu
<     BHbShD/PApxi/ujSZyOIjLsNh7WDO+0NqpkfTyB9wUYAhx3GTIGY75RSoyZy1yKb
<     ZDTKv+rSfui9IlstAMz6L3OQLZES9zAYK8ICiDUwTeNZ7quA6qf0Kam2LyuBc/bl
<     BI7WFLOGGWY135P1OUXJgnJUsMhnYMTgvZQyJ2P7eLQpiR8TOr5ZI6CYapiyG64L
<     nkr/rsALjSxoUo09Yai1CVO66VFJ/XgMNt3mzQtLDMPXiKUuwsBsgvo4QvLjkXYI
<     ii+/YQyQaypsKctG8mefKkTT1kRDKj4LNdTRRgd5tco+b4+O/4upt8mIsx1+tbdM
<     LNGEz3Jqd0sj8Fl4Rzus+W+enzXmMfZH86X6bU5tMvueuFd5LV+M9XzliscaEQMK
<     EQ7CC72ldrOK2K12Gjb7bu8dKq+aSlNuWK+Gz1NvbwYpaCBYp0JoryvHEq5jrCLP
<     lTkuJQ3HaaAf+4LaBm8no9xK2VbDf6l/7Htb5I5LnAAZi0/5TzH07NhHoIeMSmTE
<     Ea07i/i5lbhM2qbx6pfLukg24HLCKTdi4Fo6/JqPWH6/3eI55NsoWSmoDdTiLg4v
<     1G/rgUVr2N6F36GTYMGqiITvvd4Qm3i9XOTQvsx8RJx4JQIDAQABo4GoMIGlMB0G
<     A1UdDgQWBBS1+o3lCnihCZXbTSGGlWpZT0nIizAfBgNVHSMEGDAWgBS1+o3lCnih
<     CZXbTSGGlWpZT0nIizAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAR
<     BglghkgBhvhCAQEEBAMCAQYwLwYDVR0fBCgwJjAkoCKgIIYeaHR0cDovL29jc3Au
<     cmVkaGF0LmNvbS9jcmwucGVtMA0GCSqGSIb3DQEBDAUAA4ICAQCDLaGTS0g2HmMS
<     g0i6Z0RVDC7sSnWFgEk2ZO1WUQj5WkFVS7gWxed/mXCzeL2EV1Pd22YKHM1eU1vo
<     6b03cbNRXlRGGFksmQeM9h2sVjbP0hRZxqqfI+UW223N8E+qK3wSa8m6nhOfIJie
<     DD9s8CdL1VT6l4qq2gR8mVBW7EZ+Ux5u+AMXpN4WPEkcLer2djbfhXoPsJ4r5CcX
<     vh7W5rCZbo+0oBI5hrTlG4Tjhv1atqLhMmssjn8NbRrnhrbGF7w8NxFts69GkKDB
<     UIXr1pWZSAuRELlIxmvh5ZSX5YTbFmDuTvmNx8RPPy6OY4W1v1BUKp0HyJTi07s2
<     8SN+n9htHPHX9XBZctQmOSFLiqhi15LIqI54tR2tSgwH3Z5moh4sy6MuApXstsu4
<     qtkII2KZk3SottI8MOS6zqKrU7jPou6ZE0fznNiu23Q3Ksuuj6mBkLVw3bQe68Vm
<     NUTDac1oVzc8d5NMbx5kVb4Lahq+SATVFC8NK9G/Pk1AiwO8WhKffySsLeO5nMib
<     4BOVq0qFoAi8YCFuJOl9FlH1dPW/TnqlTQMQNhXpzGjU3HV3lr/Mk+ghNgIYcLcz
<     pEBsiGwKOVW4nYKIqPLn/36Ao/kfXeAdJhaAZq1SkTbeqNiwHQm3KNHzNObmjD0f
<     56vmq8fwQYIcazjrygWiaOnoep/SMw==
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: rh-certs-2022-5fghf7b9tk
<   namespace: build-service
< ---
< apiVersion: v1
781,787d698
<         volumeMounts:
<         - mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
<           name: rh-certs-2015
<           subPath: 2015-RH-IT-Root-CA.pem
<         - mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
<           name: rh-certs-2022
<           subPath: 2022-IT-Root-CA.pem
815,827d725
<       volumes:
<       - configMap:
<           items:
<           - key: 2015-RH-IT-Root-CA.pem
<             path: 2015-RH-IT-Root-CA.pem
<           name: rh-certs-2015-496kcdf4g7
<         name: rh-certs-2015
<       - configMap:
<           items:
<           - key: 2022-IT-Root-CA.pem
<             path: 2022-IT-Root-CA.pem
<           name: rh-certs-2022-5fghf7b9tk
<         name: rh-certs-2022 
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
<h3>2: Production changes from 954708c4 to 2fa20cf7 on Wed Jan 10 15:59:00 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 2c13e66b..e0be8861 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/sprayproxy/config?ref=8a03dffd427c35646ba6aca73ee17ec68fd356c2
+  - https://github.com/redhat-appstudio/sprayproxy/config?ref=c6f8bf26007c140d51326760e16eb52ae5072e3b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/redhat-appstudio/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 8a03dffd427c35646ba6aca73ee17ec68fd356c2
+    newTag: c6f8bf26007c140d51326760e16eb52ae5072e3b
 
 patches:
   - path: change-backends.yaml 
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
<h3>2: Staging changes from 954708c4 to 2fa20cf7 on Wed Jan 10 15:59:00 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 2c13e66b..e0be8861 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/sprayproxy/config?ref=8a03dffd427c35646ba6aca73ee17ec68fd356c2
+  - https://github.com/redhat-appstudio/sprayproxy/config?ref=c6f8bf26007c140d51326760e16eb52ae5072e3b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/redhat-appstudio/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 8a03dffd427c35646ba6aca73ee17ec68fd356c2
+    newTag: c6f8bf26007c140d51326760e16eb52ae5072e3b
 
 patches:
   - path: change-backends.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-954708c4/staging/components/sprayproxy/staging/kustomize.out.yaml
184c184
<         image: quay.io/redhat-appstudio/sprayproxy:c6f8bf26007c140d51326760e16eb52ae5072e3b
---
>         image: quay.io/redhat-appstudio/sprayproxy:8a03dffd427c35646ba6aca73ee17ec68fd356c2 
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
<h3>2: Development changes from 954708c4 to 2fa20cf7 on Wed Jan 10 15:59:00 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 2c13e66b..e0be8861 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/sprayproxy/config?ref=8a03dffd427c35646ba6aca73ee17ec68fd356c2
+  - https://github.com/redhat-appstudio/sprayproxy/config?ref=c6f8bf26007c140d51326760e16eb52ae5072e3b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/redhat-appstudio/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 8a03dffd427c35646ba6aca73ee17ec68fd356c2
+    newTag: c6f8bf26007c140d51326760e16eb52ae5072e3b
 
 patches:
   - path: change-backends.yaml 
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
<h3>3: Production changes from e8f19e73 to 954708c4 on Wed Jan 10 14:09:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/.tekton/tasks/verify-smoke-e2e.yaml b/.tekton/tasks/verify-smoke-e2e.yaml
index 0b6445c9..de9e2e5e 100644
--- a/.tekton/tasks/verify-smoke-e2e.yaml
+++ b/.tekton/tasks/verify-smoke-e2e.yaml
@@ -9,7 +9,7 @@ spec:
   params:
   - name: PLATFORM
     description: which environment the test is running on.
-    default: "stage"
+    default: "verify-stage"
   - name: TASK_RETRIES
     description: number of times the task will be rerun
     default: "0" 
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
<h3>3: Staging changes from e8f19e73 to 954708c4 on Wed Jan 10 14:09:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/.tekton/tasks/verify-smoke-e2e.yaml b/.tekton/tasks/verify-smoke-e2e.yaml
index 0b6445c9..de9e2e5e 100644
--- a/.tekton/tasks/verify-smoke-e2e.yaml
+++ b/.tekton/tasks/verify-smoke-e2e.yaml
@@ -9,7 +9,7 @@ spec:
   params:
   - name: PLATFORM
     description: which environment the test is running on.
-    default: "stage"
+    default: "verify-stage"
   - name: TASK_RETRIES
     description: number of times the task will be rerun
     default: "0" 
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
<h3>3: Development changes from e8f19e73 to 954708c4 on Wed Jan 10 14:09:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/.tekton/tasks/verify-smoke-e2e.yaml b/.tekton/tasks/verify-smoke-e2e.yaml
index 0b6445c9..de9e2e5e 100644
--- a/.tekton/tasks/verify-smoke-e2e.yaml
+++ b/.tekton/tasks/verify-smoke-e2e.yaml
@@ -9,7 +9,7 @@ spec:
   params:
   - name: PLATFORM
     description: which environment the test is running on.
-    default: "stage"
+    default: "verify-stage"
   - name: TASK_RETRIES
     description: number of times the task will be rerun
     default: "0" 
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
<h3>4: Production changes from ff62733e to e8f19e73 on Wed Jan 10 14:06:34 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 871b4848..485c7da1 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1881,11 +1881,11 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          application-name: Konflux Staging Internal
+          custom-console-name: Konflux Staging Internal
+          custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
   profile: all
   pruner:
     keep: 2
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index ad4b5a97..005a25ee 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -21,3 +21,7 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..d0e15f63
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Staging Internal
+    custom-console-name: Konflux Staging Internal
+    custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline 
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
<h3>4: Staging changes from ff62733e to e8f19e73 on Wed Jan 10 14:06:34 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 871b4848..485c7da1 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1881,11 +1881,11 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          application-name: Konflux Staging Internal
+          custom-console-name: Konflux Staging Internal
+          custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
   profile: all
   pruner:
     keep: 2
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index ad4b5a97..005a25ee 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -21,3 +21,7 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..d0e15f63
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Staging Internal
+    custom-console-name: Konflux Staging Internal
+    custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-ff62733e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1884,1888c1884,1888
<           application-name: Konflux Staging Internal
<           custom-console-name: Konflux Staging Internal
<           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
<           custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
<           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
---
>           application-name: RHTAP Staging
>           custom-console-name: RHTAP Staging
>           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline 
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
<h3>4: Development changes from ff62733e to e8f19e73 on Wed Jan 10 14:06:34 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 871b4848..485c7da1 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1881,11 +1881,11 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          application-name: Konflux Staging Internal
+          custom-console-name: Konflux Staging Internal
+          custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
   profile: all
   pruner:
     keep: 2
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index ad4b5a97..005a25ee 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -21,3 +21,7 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..d0e15f63
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Staging Internal
+    custom-console-name: Konflux Staging Internal
+    custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline 
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
