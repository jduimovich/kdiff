# kustomize changes tracked by commits 
### This file generated at Wed Jul 10 00:06:22 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from dbf72fb7 to 57e872c5 on Tue Jul 9 15:21:39 2024 </h3>  
 
<details> 
<summary>Git Diff (795 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5012b8c9..c8813222 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,15 +8,14 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=706387e06fde062c3c8fc23531ea9fe8a62a372f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
+  - ../../base/certificates
 
 images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 2ad0a9ad..546dbff6 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index fcf97172..8a7466e1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2a431d27..2fcef0e8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 98dd6d74..2476bad4 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1157,6 +1291,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1341,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1328,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1369,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1377,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
@@ -2051,7 +2197,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (633 lines)</summary>  

``` 
./commit-dbf72fb7/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
900,1033d899
<   tekton-results-db-ca.pem: |-
<     -----BEGIN CERTIFICATE-----
<     MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
<     VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
<     MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
<     em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
<     ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
<     BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
<     biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
<     BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
<     AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
<     oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
<     0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
<     6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
<     O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
<     McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
<     BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
<     pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
<     AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
<     ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
<     NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
<     cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
<     0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
<     zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
<     MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
<     DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
<     MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
<     NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
<     aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
<     ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
<     ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
<     InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
<     i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
<     XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
<     QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
<     glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
<     AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
<     RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
<     DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
<     PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
<     E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
<     0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
<     h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
<     MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
<     gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
<     bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
<     QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
<     DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
<     MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
<     EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
<     b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
<     dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
<     5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
<     bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
<     QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
<     6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
<     DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
<     lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
<     AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
<     jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
<     g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
<     p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
<     QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
<     E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
<     lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
<     Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
<     bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
<     B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
<     CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
<     MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
<     biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
<     dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
<     L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
<     JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
<     yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
<     VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
<     ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
<     bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
<     U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
<     S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
<     oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
<     LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
<     AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
<     HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
<     BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
<     pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
<     KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
<     76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
<     n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
<     jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
<     OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
<     z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
<     9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
<     iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
<     y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
<     0Ws=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
<     CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
<     MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
<     VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
<     A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
<     RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
<     MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
<     EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
<     BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
<     A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
<     KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
<     jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
<     OGh9pTYPVkUbBiKPA7lVVhre
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: rds-root-crt
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1040,1041c906,907
<     DB_SSLMODE=verify-full
<     DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
---
>     DB_SSLMODE=disable
>     DB_SSLROOTCERT=
1471c1337
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1512,1514d1377
<         - mountPath: /etc/tls/db
<           name: db-tls-ca
<           readOnly: true
1523,1525d1385
<       - configMap:
<           name: rds-root-crt
<         name: db-tls-ca
./commit-dbf72fb7/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
900,1033d899
<   tekton-results-db-ca.pem: |-
<     -----BEGIN CERTIFICATE-----
<     MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
<     VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
<     MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
<     em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
<     ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
<     BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
<     biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
<     BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
<     AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
<     oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
<     0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
<     6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
<     O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
<     McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
<     BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
<     pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
<     AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
<     ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
<     NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
<     cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
<     0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
<     zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
<     MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
<     DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
<     MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
<     NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
<     aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
<     ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
<     ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
<     InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
<     i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
<     XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
<     QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
<     glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
<     AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
<     RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
<     DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
<     PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
<     E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
<     0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
<     h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
<     MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
<     gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
<     bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
<     QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
<     DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
<     MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
<     EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
<     b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
<     dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
<     5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
<     bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
<     QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
<     6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
<     DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
<     lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
<     AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
<     jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
<     g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
<     p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
<     QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
<     E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
<     lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
<     Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
<     bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
<     B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
<     CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
<     MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
<     biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
<     dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
<     L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
<     JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
<     yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
<     VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
<     ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
<     bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
<     U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
<     S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
<     oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
<     LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
<     AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
<     HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
<     BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
<     pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
<     KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
<     76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
<     n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
<     jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
<     OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
<     z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
<     9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
<     iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
<     y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
<     0Ws=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
<     CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
<     MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
<     VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
<     A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
<     RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
<     MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
<     EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
<     BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
<     A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
<     KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
<     jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
<     OGh9pTYPVkUbBiKPA7lVVhre
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: rds-root-crt
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1040,1041c906,907
<     DB_SSLMODE=verify-full
<     DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
---
>     DB_SSLMODE=disable
>     DB_SSLROOTCERT=
1471c1337
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1512,1514d1377
<         - mountPath: /etc/tls/db
<           name: db-tls-ca
<           readOnly: true
1523,1525d1385
<       - configMap:
<           name: rds-root-crt
<         name: db-tls-ca
./commit-dbf72fb7/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
900,1033d899
<   tekton-results-db-ca.pem: |-
<     -----BEGIN CERTIFICATE-----
<     MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
<     VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
<     MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
<     em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
<     ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
<     BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
<     biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
<     BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
<     AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
<     oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
<     0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
<     6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
<     O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
<     McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
<     BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
<     pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
<     AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
<     ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
<     NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
<     cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
<     0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
<     zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
<     MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
<     DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
<     MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
<     NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
<     aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
<     ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
<     ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
<     InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
<     i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
<     XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
<     QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
<     glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
<     AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
<     RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
<     DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
<     PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
<     E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
<     0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
<     h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
<     MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
<     gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
<     bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
<     QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
<     DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
<     MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
<     EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
<     b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
<     dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
<     5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
<     bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
<     QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
<     6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
<     DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
<     lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
<     AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
<     jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
<     g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
<     p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
<     QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
<     E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
<     lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
<     Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
<     bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
<     B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
<     CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
<     MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
<     biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
<     dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
<     L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
<     JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
<     yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
<     VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
<     ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
<     bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
<     U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
<     S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
<     oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
<     LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
<     AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
<     HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
<     BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
<     pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
<     KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
<     76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
<     n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
<     jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
<     OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
<     z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
<     9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
<     iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
<     y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
<     0Ws=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
<     CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
<     MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
<     VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
<     A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
<     RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
<     MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
<     EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
<     BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
<     A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
<     KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
<     jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
<     OGh9pTYPVkUbBiKPA7lVVhre
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: rds-root-crt
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1040,1041c906,907
<     DB_SSLMODE=verify-full
<     DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
---
>     DB_SSLMODE=disable
>     DB_SSLROOTCERT=
1471c1337
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1512,1514d1377
<         - mountPath: /etc/tls/db
<           name: db-tls-ca
<           readOnly: true
1523,1525d1385
<       - configMap:
<           name: rds-root-crt
<         name: db-tls-ca
./commit-dbf72fb7/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
900,1033d899
<   tekton-results-db-ca.pem: |-
<     -----BEGIN CERTIFICATE-----
<     MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
<     VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
<     MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
<     em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
<     ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
<     BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
<     biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
<     BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
<     AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
<     oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
<     0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
<     6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
<     O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
<     McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
<     BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
<     pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
<     AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
<     ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
<     NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
<     cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
<     0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
<     zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
<     MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
<     DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
<     MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
<     NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
<     aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
<     ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
<     ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
<     InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
<     i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
<     XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
<     QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
<     glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
<     AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
<     RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
<     DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
<     PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
<     E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
<     0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
<     h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
<     MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
<     gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
<     bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
<     QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
<     DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
<     MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
<     EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
<     b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
<     dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
<     5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
<     bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
<     QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
<     6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
<     DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
<     lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
<     AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
<     jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
<     g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
<     p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
<     QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
<     E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
<     lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
<     Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
<     bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
<     B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
<     CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
<     MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
<     biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
<     dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
<     L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
<     JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
<     yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
<     VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
<     ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
<     bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
<     U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
<     S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
<     oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
<     LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
<     AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
<     HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
<     BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
<     pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
<     KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
<     76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
<     n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
<     jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
<     OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
<     z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
<     9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
<     iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
<     y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
<     0Ws=
<     -----END CERTIFICATE-----
<     -----BEGIN CERTIFICATE-----
<     MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
<     CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
<     MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
<     em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
<     YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
<     VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
<     A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
<     RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
<     MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
<     EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
<     BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
<     A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
<     KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
<     jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
<     OGh9pTYPVkUbBiKPA7lVVhre
<     -----END CERTIFICATE-----
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: rds-root-crt
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1040,1041c906,907
<     DB_SSLMODE=verify-full
<     DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
---
>     DB_SSLMODE=disable
>     DB_SSLROOTCERT=
1294,1297d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1344,1347c1206,1207
<       - args:
<         - -pprof-address
<         - "6060"
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>       - args: []
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
1471c1331
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1512,1514d1371
<         - mountPath: /etc/tls/db
<           name: db-tls-ca
<           readOnly: true
1524,1526d1380
<           name: rds-root-crt
<         name: db-tls-ca
<       - configMap:
2200c2054
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from dbf72fb7 to 57e872c5 on Tue Jul 9 15:21:39 2024 </h3>  
 
<details> 
<summary>Git Diff (795 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5012b8c9..c8813222 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,15 +8,14 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=706387e06fde062c3c8fc23531ea9fe8a62a372f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
+  - ../../base/certificates
 
 images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 2ad0a9ad..546dbff6 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index fcf97172..8a7466e1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2a431d27..2fcef0e8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 98dd6d74..2476bad4 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1157,6 +1291,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1341,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1328,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1369,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1377,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
@@ -2051,7 +2197,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from dbf72fb7 to 57e872c5 on Tue Jul 9 15:21:39 2024 </h3>  
 
<details> 
<summary>Git Diff (795 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5012b8c9..c8813222 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,15 +8,14 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=706387e06fde062c3c8fc23531ea9fe8a62a372f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
+  - ../../base/certificates
 
 images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 2ad0a9ad..546dbff6 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
+    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
+    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
+    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
+    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
+    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
+    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
+    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
+    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
+    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
+    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
+    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
+    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
+    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
+    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
+    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
+    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
+    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
+    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
+    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
+    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
+    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
+    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
+    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
+    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
+    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
+    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
+    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
+    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
+    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
+    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
+    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index fcf97172..8a7466e1 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2a431d27..2fcef0e8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1334,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1375,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1383,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 98dd6d74..2476bad4 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -896,6 +896,140 @@ subjects:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    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
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   config.env: |
     DB_USER=
@@ -903,8 +1037,8 @@ data:
     DB_HOST=
     DB_PORT=5432
     DB_NAME=
-    DB_SSLMODE=disable
-    DB_SSLROOTCERT=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
     DB_ENABLE_AUTO_MIGRATION=true
     SERVER_PORT=8080
     PROMETHEUS_PORT=9090
@@ -1157,6 +1291,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1203,8 +1341,10 @@ spec:
         app: pipeline-metrics-exporter
     spec:
       containers:
-      - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1328,7 +1468,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1369,6 +1509,9 @@ spec:
           initialDelaySeconds: 5
           periodSeconds: 10
         volumeMounts:
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
         - mountPath: /etc/tekton/results
           name: config
           readOnly: true
@@ -1377,6 +1520,9 @@ spec:
           readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
       - configMap:
           name: tekton-results-api-config
         name: config
@@ -2051,7 +2197,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 838eb833 to dbf72fb7 on Tue Jul 9 15:10:47 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index be131214..0fd075ba 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
+- https://github.com/konflux-ci/project-controller/config/default?ref=c731e776e1b1f090a90bbcc691153aeb407783cb
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: ec423153412b89820fb284a60f4de713730f4373
+  newTag: c731e776e1b1f090a90bbcc691153aeb407783cb
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 1015bf58..0fd9129f 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
+  - https://github.com/konflux-ci/project-controller/config/default?ref=c731e776e1b1f090a90bbcc691153aeb407783cb
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: ec423153412b89820fb284a60f4de713730f4373
+  newTag: c731e776e1b1f090a90bbcc691153aeb407783cb
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 838eb833 to dbf72fb7 on Tue Jul 9 15:10:47 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index be131214..0fd075ba 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
+- https://github.com/konflux-ci/project-controller/config/default?ref=c731e776e1b1f090a90bbcc691153aeb407783cb
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: ec423153412b89820fb284a60f4de713730f4373
+  newTag: c731e776e1b1f090a90bbcc691153aeb407783cb
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 1015bf58..0fd9129f 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
+  - https://github.com/konflux-ci/project-controller/config/default?ref=c731e776e1b1f090a90bbcc691153aeb407783cb
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: ec423153412b89820fb284a60f4de713730f4373
+  newTag: c731e776e1b1f090a90bbcc691153aeb407783cb
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-838eb833/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:c731e776e1b1f090a90bbcc691153aeb407783cb
---
>         image: quay.io/redhat-appstudio/project-controller:ec423153412b89820fb284a60f4de713730f4373 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 838eb833 to dbf72fb7 on Tue Jul 9 15:10:47 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index be131214..0fd075ba 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
+- https://github.com/konflux-ci/project-controller/config/default?ref=c731e776e1b1f090a90bbcc691153aeb407783cb
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: ec423153412b89820fb284a60f4de713730f4373
+  newTag: c731e776e1b1f090a90bbcc691153aeb407783cb
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 1015bf58..0fd9129f 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
+  - https://github.com/konflux-ci/project-controller/config/default?ref=c731e776e1b1f090a90bbcc691153aeb407783cb
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: ec423153412b89820fb284a60f4de713730f4373
+  newTag: c731e776e1b1f090a90bbcc691153aeb407783cb
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-838eb833/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:c731e776e1b1f090a90bbcc691153aeb407783cb
---
>         image: quay.io/redhat-appstudio/project-controller:ec423153412b89820fb284a60f4de713730f4373 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 2ccf3dc0 to 838eb833 on Tue Jul 9 15:10:40 2024 </h3>  
 
<details> 
<summary>Git Diff (657 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 70b71e74..c626b90a 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,9 +7,10 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-prod
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
@@ -17,22 +18,197 @@ data:
   dynamic.linux-arm64.key-name: konflux-prod-int-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-arm64.max-instances: "10"
-  
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index cbe30aa7..b21cacd2 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,9 +7,10 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
@@ -17,22 +18,197 @@ data:
   dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-arm64.max-instances: "10"
-  
+  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 778a619e..64145c2f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,13 +7,14 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-int-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
@@ -21,10 +22,54 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-int-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
@@ -32,6 +77,139 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (171 lines)</summary>  

``` 
./commit-2ccf3dc0/production/components/multi-platform-controller/production/kustomize.out.yaml
176c176
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
179c179
<   dynamic.linux-amd64.instance-type: m6a.large
---
>   dynamic.linux-amd64.instance-type: m5.large
197,276d196
<   dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
<   dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c2xlarge-amd64.max-instances: "10"
<   dynamic.linux-c2xlarge-amd64.region: us-east-1
<   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c2xlarge-amd64.type: aws
<   dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
<   dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c2xlarge-arm64.max-instances: "10"
<   dynamic.linux-c2xlarge-arm64.region: us-east-1
<   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c2xlarge-arm64.type: aws
<   dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
<   dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c4xlarge-amd64.max-instances: "10"
<   dynamic.linux-c4xlarge-amd64.region: us-east-1
<   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c4xlarge-amd64.type: aws
<   dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
<   dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c4xlarge-arm64.max-instances: "10"
<   dynamic.linux-c4xlarge-arm64.region: us-east-1
<   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c4xlarge-arm64.type: aws
<   dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
<   dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c8xlarge-amd64.max-instances: "10"
<   dynamic.linux-c8xlarge-amd64.region: us-east-1
<   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c8xlarge-amd64.type: aws
<   dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
<   dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-c8xlarge-arm64.max-instances: "10"
<   dynamic.linux-c8xlarge-arm64.region: us-east-1
<   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-c8xlarge-arm64.type: aws
<   dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
<   dynamic.linux-cxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-cxlarge-amd64.max-instances: "10"
<   dynamic.linux-cxlarge-amd64.region: us-east-1
<   dynamic.linux-cxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-cxlarge-amd64.type: aws
<   dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
<   dynamic.linux-cxlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-cxlarge-arm64.max-instances: "10"
<   dynamic.linux-cxlarge-arm64.region: us-east-1
<   dynamic.linux-cxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-cxlarge-arm64.type: aws
299,378d218
<   dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
<   dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m2xlarge-amd64.max-instances: "10"
<   dynamic.linux-m2xlarge-amd64.region: us-east-1
<   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m2xlarge-amd64.type: aws
<   dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
<   dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m2xlarge-arm64.max-instances: "10"
<   dynamic.linux-m2xlarge-arm64.region: us-east-1
<   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m2xlarge-arm64.type: aws
<   dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
<   dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m4xlarge-amd64.max-instances: "10"
<   dynamic.linux-m4xlarge-amd64.region: us-east-1
<   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m4xlarge-amd64.type: aws
<   dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
<   dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m4xlarge-arm64.max-instances: "10"
<   dynamic.linux-m4xlarge-arm64.region: us-east-1
<   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m4xlarge-arm64.type: aws
<   dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
<   dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m8xlarge-amd64.max-instances: "10"
<   dynamic.linux-m8xlarge-amd64.region: us-east-1
<   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m8xlarge-amd64.type: aws
<   dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
<   dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-m8xlarge-arm64.max-instances: "10"
<   dynamic.linux-m8xlarge-arm64.region: us-east-1
<   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-m8xlarge-arm64.type: aws
<   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
<   dynamic.linux-mxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mxlarge-amd64.max-instances: "10"
<   dynamic.linux-mxlarge-amd64.region: us-east-1
<   dynamic.linux-mxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mxlarge-amd64.type: aws
<   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
<   dynamic.linux-mxlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mxlarge-arm64.max-instances: "10"
<   dynamic.linux-mxlarge-arm64.region: us-east-1
<   dynamic.linux-mxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mxlarge-arm64.type: aws 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 2ccf3dc0 to 838eb833 on Tue Jul 9 15:10:40 2024 </h3>  
 
<details> 
<summary>Git Diff (657 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 70b71e74..c626b90a 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,9 +7,10 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-prod
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
@@ -17,22 +18,197 @@ data:
   dynamic.linux-arm64.key-name: konflux-prod-int-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-arm64.max-instances: "10"
-  
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index cbe30aa7..b21cacd2 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,9 +7,10 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
@@ -17,22 +18,197 @@ data:
   dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-arm64.max-instances: "10"
-  
+  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 778a619e..64145c2f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,13 +7,14 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-int-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
@@ -21,10 +22,54 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-int-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
@@ -32,6 +77,139 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 2ccf3dc0 to 838eb833 on Tue Jul 9 15:10:40 2024 </h3>  
 
<details> 
<summary>Git Diff (657 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 70b71e74..c626b90a 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,9 +7,10 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-prod
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
@@ -17,22 +18,197 @@ data:
   dynamic.linux-arm64.key-name: konflux-prod-int-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-arm64.max-instances: "10"
-  
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index cbe30aa7..b21cacd2 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,9 +7,10 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
@@ -17,22 +18,197 @@ data:
   dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-arm64.max-instances: "10"
-  
+  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
 
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 778a619e..64145c2f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,13 +7,14 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-int-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
@@ -21,10 +22,54 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-int-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
@@ -32,6 +77,139 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2e631e1a to 2ccf3dc0 on Tue Jul 9 14:21:06 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 89931492..5a62fa39 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=47821cbcae7e2252e259332378516b308ecf46f0
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=47821cbcae7e2252e259332378516b308ecf46f0
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-2e631e1a/production/components/multi-platform-controller/production/kustomize.out.yaml
5a6
>     openshift.io/cluster-monitoring: "true"
418c419
<         image: quay.io/konflux-ci/multi-platform-controller:47821cbcae7e2252e259332378516b308ecf46f0
---
>         image: quay.io/konflux-ci/multi-platform-controller:3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
460c461
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:47821cbcae7e2252e259332378516b308ecf46f0
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 2e631e1a to 2ccf3dc0 on Tue Jul 9 14:21:06 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 89931492..5a62fa39 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=47821cbcae7e2252e259332378516b308ecf46f0
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=47821cbcae7e2252e259332378516b308ecf46f0
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-2e631e1a/staging/components/multi-platform-controller/staging/kustomize.out.yaml
5a6
>     openshift.io/cluster-monitoring: "true"
481c482
<         image: quay.io/konflux-ci/multi-platform-controller:47821cbcae7e2252e259332378516b308ecf46f0
---
>         image: quay.io/konflux-ci/multi-platform-controller:3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
523c524
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:47821cbcae7e2252e259332378516b308ecf46f0
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 2e631e1a to 2ccf3dc0 on Tue Jul 9 14:21:06 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 89931492..5a62fa39 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=47821cbcae7e2252e259332378516b308ecf46f0
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=47821cbcae7e2252e259332378516b308ecf46f0
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
+  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-2e631e1a/development/components/multi-platform-controller/development/kustomize.out.yaml
5a6
>     openshift.io/cluster-monitoring: "true"
257c258
<         image: quay.io/konflux-ci/multi-platform-controller:47821cbcae7e2252e259332378516b308ecf46f0
---
>         image: quay.io/konflux-ci/multi-platform-controller:3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50
299c300
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:47821cbcae7e2252e259332378516b308ecf46f0
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3a6fa5f72ac3ffa4acd018427b3b9cb0f900ca50 
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
```
 
</details> 
<br> 


</div>
