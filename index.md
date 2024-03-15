# kustomize changes tracked by commits 
### This file generated at Fri Mar 15 16:05:15 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c6c634f7 to e67a54b4 on Fri Mar 15 15:40:32 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a073f8f9..5ce8b54e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
+  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9a47b350..c368749b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
+  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from c6c634f7 to e67a54b4 on Fri Mar 15 15:40:32 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a073f8f9..5ce8b54e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
+  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9a47b350..c368749b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
+  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c6c634f7/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1199c1199
<         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
---
>         image: quay.io/redhat-appstudio/integration-service:55b2bae85419df8cd8b9e633d212826a7b9567ee
1290c1290
<             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
---
>             image: quay.io/redhat-appstudio/integration-service:55b2bae85419df8cd8b9e633d212826a7b9567ee 
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
<h3>1: Development changes from c6c634f7 to e67a54b4 on Fri Mar 15 15:40:32 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index a073f8f9..5ce8b54e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
+  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9a47b350..c368749b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55b2bae85419df8cd8b9e633d212826a7b9567ee
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
+  newTag: 0766dfb1c84bd0ad954a2f2c65fec1980f095f40
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c6c634f7/development/components/integration/development/kustomize.out.yaml
1198c1198
<         image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
---
>         image: quay.io/redhat-appstudio/integration-service:55b2bae85419df8cd8b9e633d212826a7b9567ee
1292c1292
<             image: quay.io/redhat-appstudio/integration-service:0766dfb1c84bd0ad954a2f2c65fec1980f095f40
---
>             image: quay.io/redhat-appstudio/integration-service:55b2bae85419df8cd8b9e633d212826a7b9567ee 
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
<h3>2: Production changes from 7f92afaa to c6c634f7 on Fri Mar 15 14:23:43 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index f87c8fea..d9ef0e81 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -27,10 +27,11 @@ spec:
                   PATH="/bin:/usr/bin:/usr/local/bin"
                   MAX_PROCS=5
                   EXPIRED_RELEASES_FILE="/var/tmp/releases-to-be-deleted"
+                  KUBECTL_OUTPUT=$(mktemp -p /var/tmp)
                   NOW=$(date +%s)
                   kubectl get release --all-namespaces \
                   --sort-by=.status.expirationTime \
-                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > /tmp/kubectl-out
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > $KUBECTL_OUTPUT
                   awk -v now=${NOW} '{
                        # parsing the expirationTime and converting it to epoch
                        # so we can calculate easier the expired Releases
@@ -43,7 +44,7 @@ spec:
                          args="%s:%s"
                          printf(args, $1, $2)
                        } 
-                    }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE
+                    }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE
                   # The deleteAndLog will run the Release deletion and save the operation in a structured way that        
                   # can be read easily by kubectl or journalctl                                                           
                   function deleteAndLog() { 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-7f92afaa/production/components/release/production/kustomize.out.yaml
1868,1871c1868,1871
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nNOW=$(date +%s)\nkubectl get release --all-namespaces
<               \\\n--sort-by=.status.expirationTime \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v now=${NOW} '{\n     # parsing the expirationTime
---
>             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nNOW=$(date
>               +%s)\nkubectl get release --all-namespaces \\\n--sort-by=.status.expirationTime
>               \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
>               > /tmp/kubectl-out\nawk -v now=${NOW} '{\n     # parsing the expirationTime
1877,1879c1877,1880
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE\n# The deleteAndLog
<               will run the Release deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
---
>               $2)\n     } \n  }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE\n#
>               The deleteAndLog will run the Release deletion and save the operation
>               in a structured way that        \n# can be read easily by kubectl or
>               journalctl                                                           \nfunction 
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
<h3>2: Staging changes from 7f92afaa to c6c634f7 on Fri Mar 15 14:23:43 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index f87c8fea..d9ef0e81 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -27,10 +27,11 @@ spec:
                   PATH="/bin:/usr/bin:/usr/local/bin"
                   MAX_PROCS=5
                   EXPIRED_RELEASES_FILE="/var/tmp/releases-to-be-deleted"
+                  KUBECTL_OUTPUT=$(mktemp -p /var/tmp)
                   NOW=$(date +%s)
                   kubectl get release --all-namespaces \
                   --sort-by=.status.expirationTime \
-                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > /tmp/kubectl-out
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > $KUBECTL_OUTPUT
                   awk -v now=${NOW} '{
                        # parsing the expirationTime and converting it to epoch
                        # so we can calculate easier the expired Releases
@@ -43,7 +44,7 @@ spec:
                          args="%s:%s"
                          printf(args, $1, $2)
                        } 
-                    }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE
+                    }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE
                   # The deleteAndLog will run the Release deletion and save the operation in a structured way that        
                   # can be read easily by kubectl or journalctl                                                           
                   function deleteAndLog() { 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-7f92afaa/staging/components/release/staging/kustomize.out.yaml
1868,1871c1868,1871
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nNOW=$(date +%s)\nkubectl get release --all-namespaces
<               \\\n--sort-by=.status.expirationTime \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v now=${NOW} '{\n     # parsing the expirationTime
---
>             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nNOW=$(date
>               +%s)\nkubectl get release --all-namespaces \\\n--sort-by=.status.expirationTime
>               \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
>               > /tmp/kubectl-out\nawk -v now=${NOW} '{\n     # parsing the expirationTime
1877,1879c1877,1880
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE\n# The deleteAndLog
<               will run the Release deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
---
>               $2)\n     } \n  }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE\n#
>               The deleteAndLog will run the Release deletion and save the operation
>               in a structured way that        \n# can be read easily by kubectl or
>               journalctl                                                           \nfunction 
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
<h3>2: Development changes from 7f92afaa to c6c634f7 on Fri Mar 15 14:23:43 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index f87c8fea..d9ef0e81 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -27,10 +27,11 @@ spec:
                   PATH="/bin:/usr/bin:/usr/local/bin"
                   MAX_PROCS=5
                   EXPIRED_RELEASES_FILE="/var/tmp/releases-to-be-deleted"
+                  KUBECTL_OUTPUT=$(mktemp -p /var/tmp)
                   NOW=$(date +%s)
                   kubectl get release --all-namespaces \
                   --sort-by=.status.expirationTime \
-                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > /tmp/kubectl-out
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.expirationTime}}{{"\n"}}{{end}}' > $KUBECTL_OUTPUT
                   awk -v now=${NOW} '{
                        # parsing the expirationTime and converting it to epoch
                        # so we can calculate easier the expired Releases
@@ -43,7 +44,7 @@ spec:
                          args="%s:%s"
                          printf(args, $1, $2)
                        } 
-                    }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE
+                    }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE
                   # The deleteAndLog will run the Release deletion and save the operation in a structured way that        
                   # can be read easily by kubectl or journalctl                                                           
                   function deleteAndLog() { 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-7f92afaa/development/components/release/development/kustomize.out.yaml
1868,1871c1868,1871
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nNOW=$(date +%s)\nkubectl get release --all-namespaces
<               \\\n--sort-by=.status.expirationTime \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v now=${NOW} '{\n     # parsing the expirationTime
---
>             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nEXPIRED_RELEASES_FILE=\"/var/tmp/releases-to-be-deleted\"\nNOW=$(date
>               +%s)\nkubectl get release --all-namespaces \\\n--sort-by=.status.expirationTime
>               \\\n--template '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.expirationTime}}{{\"\\n\"}}{{end}}'
>               > /tmp/kubectl-out\nawk -v now=${NOW} '{\n     # parsing the expirationTime
1877,1879c1877,1880
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE\n# The deleteAndLog
<               will run the Release deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
---
>               $2)\n     } \n  }' /var/tmp/kubectl-out > $EXPIRED_RELEASES_FILE\n#
>               The deleteAndLog will run the Release deletion and save the operation
>               in a structured way that        \n# can be read easily by kubectl or
>               journalctl                                                           \nfunction 
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
<h3>3: Production changes from 3de51c94 to 7f92afaa on Fri Mar 15 13:06:33 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 1143aa48..5aa4bd20 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
+  - https://github.com/konflux-ci/sprayproxy/config?ref=f1afe07688592565986ded70ca912d80629c04a0
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
-    newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
+    newName: quay.io/konflux-ci/sprayproxy
+    newTag: f1afe07688592565986ded70ca912d80629c04a0
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 3de51c94 to 7f92afaa on Fri Mar 15 13:06:33 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 1143aa48..5aa4bd20 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
+  - https://github.com/konflux-ci/sprayproxy/config?ref=f1afe07688592565986ded70ca912d80629c04a0
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
-    newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
+    newName: quay.io/konflux-ci/sprayproxy
+    newTag: f1afe07688592565986ded70ca912d80629c04a0
 
 patches:
   - path: change-backends.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3de51c94/staging/components/sprayproxy/staging/kustomize.out.yaml
197c197
<         image: quay.io/konflux-ci/sprayproxy:f1afe07688592565986ded70ca912d80629c04a0
---
>         image: quay.io/redhat-appstudio/sprayproxy:2f488f7082df063350cc5a774b61ee3207481a9b 
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
<h3>3: Development changes from 3de51c94 to 7f92afaa on Fri Mar 15 13:06:33 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 1143aa48..5aa4bd20 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
+  - https://github.com/konflux-ci/sprayproxy/config?ref=f1afe07688592565986ded70ca912d80629c04a0
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
-    newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
+    newName: quay.io/konflux-ci/sprayproxy
+    newTag: f1afe07688592565986ded70ca912d80629c04a0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from aeabac35 to 3de51c94 on Fri Mar 15 07:47:29 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 8de64a0a..12dac8cb 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -110,3 +110,10 @@ metadata:
   name: infra-deployments
 spec:
   url: "https://github.com/redhat-appstudio/infra-deployments"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: quality-dashboard
+spec:
+  url: "https://github.com/redhat-appstudio/quality-dashboard" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-aeabac35/production/components/tekton-ci/production/kustomize.out.yaml
409,417d408
<   name: quality-dashboard
< spec:
<   url: https://github.com/redhat-appstudio/quality-dashboard
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Staging changes from aeabac35 to 3de51c94 on Fri Mar 15 07:47:29 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 8de64a0a..12dac8cb 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -110,3 +110,10 @@ metadata:
   name: infra-deployments
 spec:
   url: "https://github.com/redhat-appstudio/infra-deployments"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: quality-dashboard
+spec:
+  url: "https://github.com/redhat-appstudio/quality-dashboard" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-aeabac35/staging/components/tekton-ci/staging/kustomize.out.yaml
369,377d368
<   name: quality-dashboard
< spec:
<   url: https://github.com/redhat-appstudio/quality-dashboard
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Development changes from aeabac35 to 3de51c94 on Fri Mar 15 07:47:29 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 8de64a0a..12dac8cb 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -110,3 +110,10 @@ metadata:
   name: infra-deployments
 spec:
   url: "https://github.com/redhat-appstudio/infra-deployments"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: quality-dashboard
+spec:
+  url: "https://github.com/redhat-appstudio/quality-dashboard" 
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
