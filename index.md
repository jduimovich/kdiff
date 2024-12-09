# kustomize changes tracked by commits 
### This file generated at Mon Dec  9 12:07:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6ff28774 to 43343074 on Mon Dec 9 11:32:48 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c2e07bd0..86488ceb 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -500,17 +500,17 @@ data:
   host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-8.concurrency: "1"
 
-  host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  host.sysz-rhtap-prod-9.user: "root"
-  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-9.concurrency: "2"
-
-  host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  host.sysz-rhtap-prod-10.user: "root"
-  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-10.concurrency: "2"
+  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-9.user: "root"
+  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-9.concurrency: "2"
+
+  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-10.user: "root"
+  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-10.concurrency: "2"
 
   # dynamic.linux-s390x.type: ibmz
   # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-6ff28774/production/components/multi-platform-controller/production/kustomize.out.yaml
704a705,714
>   host.sysz-rhtap-prod-9.address: 169.63.184.30
>   host.sysz-rhtap-prod-9.concurrency: "2"
>   host.sysz-rhtap-prod-9.platform: linux/s390x
>   host.sysz-rhtap-prod-9.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-9.user: root
>   host.sysz-rhtap-prod-10.address: 169.59.164.141
>   host.sysz-rhtap-prod-10.concurrency: "2"
>   host.sysz-rhtap-prod-10.platform: linux/s390x
>   host.sysz-rhtap-prod-10.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-10.user: root 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 6ff28774 to 43343074 on Mon Dec 9 11:32:48 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c2e07bd0..86488ceb 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -500,17 +500,17 @@ data:
   host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-8.concurrency: "1"
 
-  host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  host.sysz-rhtap-prod-9.user: "root"
-  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-9.concurrency: "2"
-
-  host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  host.sysz-rhtap-prod-10.user: "root"
-  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-10.concurrency: "2"
+  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-9.user: "root"
+  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-9.concurrency: "2"
+
+  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-10.user: "root"
+  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-10.concurrency: "2"
 
   # dynamic.linux-s390x.type: ibmz
   # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key" 
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
<h3>1: Development changes from 6ff28774 to 43343074 on Mon Dec 9 11:32:48 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c2e07bd0..86488ceb 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -500,17 +500,17 @@ data:
   host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-8.concurrency: "1"
 
-  host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  host.sysz-rhtap-prod-9.user: "root"
-  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-9.concurrency: "2"
-
-  host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  host.sysz-rhtap-prod-10.user: "root"
-  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-10.concurrency: "2"
+  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-9.user: "root"
+  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-9.concurrency: "2"
+
+  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-10.user: "root"
+  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-10.concurrency: "2"
 
   # dynamic.linux-s390x.type: ibmz
   # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 9d2407fe to 6ff28774 on Mon Dec 9 10:25:06 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 65b85519..cad1d781 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1799,7 +1799,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index df6c6a65..61fe6e7f 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1751,7 +1751,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8b3bbc79..51be8ec8 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1740,7 +1740,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 61aeefc8..27299c20 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1740,7 +1740,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9d2407fe to 6ff28774 on Mon Dec 9 10:25:06 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 65b85519..cad1d781 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1799,7 +1799,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index df6c6a65..61fe6e7f 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1751,7 +1751,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8b3bbc79..51be8ec8 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1740,7 +1740,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 61aeefc8..27299c20 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1740,7 +1740,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-9d2407fe/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1739c1739
<               extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
---
>               extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
./commit-9d2407fe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1739c1739
<               extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
---
>               extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines" 
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
<h3>2: Development changes from 9d2407fe to 6ff28774 on Mon Dec 9 10:25:06 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 65b85519..cad1d781 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1799,7 +1799,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index df6c6a65..61fe6e7f 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1751,7 +1751,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8b3bbc79..51be8ec8 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1740,7 +1740,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 61aeefc8..27299c20 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1740,7 +1740,7 @@ spec:
               rotate_wait_secs: 5
               glob_minimum_cooldown_ms: 15000
               auto_partial_merge: true
-              extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines"
+              extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
             internal_metrics:
               type: internal_metrics
           transforms: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9d2407fe/development/components/pipeline-service/development/kustomize.out.yaml
1667c1667
<               extra_label_selector: "app.kubernetes.io/managed-by in (tekton-pipelines,pipelinesascode.tekton.dev)"
---
>               extra_label_selector: "app.kubernetes.io/managed-by=tekton-pipelines" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 7e560ecd to 9d2407fe on Mon Dec 9 09:29:55 2024 </h3>  
 
<details> 
<summary>Git Diff (1400 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 82c45934..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1282,69 +1191,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index f92c41dd..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 48661c16..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -177,37 +169,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -227,27 +188,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -739,22 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -771,21 +695,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1697,69 +1606,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1a9129d8..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5bbba8fb..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 13a07379..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 8af51969..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (644 lines)</summary>  

``` 
./commit-7e560ecd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
669a730,745
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
684a761,775
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1574a1666,1728
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 200m
>                 memory: 200Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-7e560ecd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
669a730,745
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
684a761,775
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1574a1666,1728
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 200m
>                 memory: 200Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-7e560ecd/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
669a730,745
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
684a761,775
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1574a1666,1728
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 200m
>                 memory: 200Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-7e560ecd/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
669a730,745
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
684a761,775
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1574a1666,1728
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 200m
>                 memory: 200Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 7e560ecd to 9d2407fe on Mon Dec 9 09:29:55 2024 </h3>  
 
<details> 
<summary>Git Diff (1400 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 82c45934..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1282,69 +1191,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index f92c41dd..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 48661c16..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -177,37 +169,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -227,27 +188,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -739,22 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -771,21 +695,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1697,69 +1606,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1a9129d8..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5bbba8fb..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 13a07379..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 8af51969..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
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
<h3>3: Development changes from 7e560ecd to 9d2407fe on Mon Dec 9 09:29:55 2024 </h3>  
 
<details> 
<summary>Git Diff (1400 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 82c45934..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1282,69 +1191,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index f92c41dd..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 48661c16..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -177,37 +169,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -227,27 +188,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -739,22 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -771,21 +695,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1697,69 +1606,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1a9129d8..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5bbba8fb..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 13a07379..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 8af51969..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -723,22 +663,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -755,21 +679,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1666,69 +1575,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 200m
-                memory: 200Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from cd213d4c to 7e560ecd on Mon Dec 9 08:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 369bdce8..48661c16 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -122,6 +122,22 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-runner
+rules:
+- apiGroups:
+  - security.openshift.io
+  resourceNames:
+  - appstudio-pipelines-scc
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - use
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -833,6 +849,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-konflux-scc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
index f3296b8e..4e58ded0 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
+  - scc-rbac.yaml
 patches:
   - path: tekton-chains-public-key-path.yaml
     target:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml
new file mode 100644
index 00000000..8d34cb07
--- /dev/null
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml
@@ -0,0 +1,31 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: appstudio-pipelines-runner
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - security.openshift.io
+  resourceNames:
+  - appstudio-pipelines-scc
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - use
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: tekton-pipelines-controller-konflux-scc
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from cd213d4c to 7e560ecd on Mon Dec 9 08:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 369bdce8..48661c16 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -122,6 +122,22 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-runner
+rules:
+- apiGroups:
+  - security.openshift.io
+  resourceNames:
+  - appstudio-pipelines-scc
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - use
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -833,6 +849,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-konflux-scc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
index f3296b8e..4e58ded0 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
+  - scc-rbac.yaml
 patches:
   - path: tekton-chains-public-key-path.yaml
     target:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml
new file mode 100644
index 00000000..8d34cb07
--- /dev/null
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml
@@ -0,0 +1,31 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: appstudio-pipelines-runner
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - security.openshift.io
+  resourceNames:
+  - appstudio-pipelines-scc
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - use
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: tekton-pipelines-controller-konflux-scc
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner 
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
<h3>4: Development changes from cd213d4c to 7e560ecd on Mon Dec 9 08:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 369bdce8..48661c16 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -122,6 +122,22 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-runner
+rules:
+- apiGroups:
+  - security.openshift.io
+  resourceNames:
+  - appstudio-pipelines-scc
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - use
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -833,6 +849,21 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-konflux-scc
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
index f3296b8e..4e58ded0 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
+  - scc-rbac.yaml
 patches:
   - path: tekton-chains-public-key-path.yaml
     target:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml
new file mode 100644
index 00000000..8d34cb07
--- /dev/null
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/scc-rbac.yaml
@@ -0,0 +1,31 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: appstudio-pipelines-runner
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - security.openshift.io
+  resourceNames:
+  - appstudio-pipelines-scc
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - use
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: tekton-pipelines-controller-konflux-scc
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: appstudio-pipelines-runner 
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
```
 
</details> 
<br> 


</div>
