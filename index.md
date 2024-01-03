# kustomize changes tracked by commits 
### This file generated at Wed Jan  3 08:03:34 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 02570b31 to 9b26ed39 on Wed Jan 3 07:11:41 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-02570b31/production/components/multi-platform-controller/production/kustomize.out.yaml
155c155
<   host.power-rhtap-prod-1.address: 52.117.38.109
---
>   host.power-rhtap-prod-1.address: 150.240.147.196
158c158
<   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
---
>   host.power-rhtap-prod-1.secret: ibm-ssh-key
160c160
<   host.power-rhtap-prod-2.address: 52.117.38.109
---
>   host.power-rhtap-prod-2.address: 150.240.147.194
163c163
<   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
---
>   host.power-rhtap-prod-2.secret: ibm-ssh-key
165c165
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
---
>   host.sysz-rhtap-prod-1.address: 169.59.160.96
168c168
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
---
>   host.sysz-rhtap-prod-1.secret: ibm-ssh-key
170c170
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
---
>   host.sysz-rhtap-prod-2.address: 169.63.178.13
173c173
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
---
>   host.sysz-rhtap-prod-2.secret: ibm-ssh-key 
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

./commit-9b26ed39/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9b26ed39/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 02570b31 to 9b26ed39 on Wed Jan 3 07:11:41 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>1: Development changes from 02570b31 to 9b26ed39 on Wed Jan 3 07:11:41 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>2: Production changes from e8e4c65a to 02570b31 on Wed Jan 3 02:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 29b84887..23780cfe 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=ca9a3f0ff5a690f12c718041118f51c11466a005
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=691f94a16298f295d99e7aa6c573269cd96338c0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca9a3f0ff5a690f12c718041118f51c11466a005
+  newTag: 691f94a16298f295d99e7aa6c573269cd96338c0
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 201edd2a..ea357998 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=ca9a3f0ff5a690f12c718041118f51c11466a005
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=691f94a16298f295d99e7aa6c573269cd96338c0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca9a3f0ff5a690f12c718041118f51c11466a005
+  newTag: 691f94a16298f295d99e7aa6c573269cd96338c0
 
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

./commit-02570b31/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-02570b31/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from e8e4c65a to 02570b31 on Wed Jan 3 02:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 29b84887..23780cfe 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=ca9a3f0ff5a690f12c718041118f51c11466a005
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=691f94a16298f295d99e7aa6c573269cd96338c0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca9a3f0ff5a690f12c718041118f51c11466a005
+  newTag: 691f94a16298f295d99e7aa6c573269cd96338c0
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 201edd2a..ea357998 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=ca9a3f0ff5a690f12c718041118f51c11466a005
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=691f94a16298f295d99e7aa6c573269cd96338c0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca9a3f0ff5a690f12c718041118f51c11466a005
+  newTag: 691f94a16298f295d99e7aa6c573269cd96338c0
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e8e4c65a/staging/components/integration/staging/kustomize.out.yaml
1102c1102
<         image: quay.io/redhat-appstudio/integration-service:691f94a16298f295d99e7aa6c573269cd96338c0
---
>         image: quay.io/redhat-appstudio/integration-service:ca9a3f0ff5a690f12c718041118f51c11466a005 
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
<h3>2: Development changes from e8e4c65a to 02570b31 on Wed Jan 3 02:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 29b84887..23780cfe 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=ca9a3f0ff5a690f12c718041118f51c11466a005
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=691f94a16298f295d99e7aa6c573269cd96338c0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca9a3f0ff5a690f12c718041118f51c11466a005
+  newTag: 691f94a16298f295d99e7aa6c573269cd96338c0
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 201edd2a..ea357998 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=ca9a3f0ff5a690f12c718041118f51c11466a005
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=691f94a16298f295d99e7aa6c573269cd96338c0
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ca9a3f0ff5a690f12c718041118f51c11466a005
+  newTag: 691f94a16298f295d99e7aa6c573269cd96338c0
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e8e4c65a/development/components/integration/development/kustomize.out.yaml
1102c1102
<         image: quay.io/redhat-appstudio/integration-service:691f94a16298f295d99e7aa6c573269cd96338c0
---
>         image: quay.io/redhat-appstudio/integration-service:ca9a3f0ff5a690f12c718041118f51c11466a005 
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
<h3>3: Production changes from 93e323eb to e8e4c65a on Tue Jan 2 20:25:14 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 563c8f0f..f353b53f 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 960d9e50d604b482553698c5ae376c90b3e1c24a
+    newTag: 5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index b1220ac6..7046dfc8 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 960d9e50d604b482553698c5ae376c90b3e1c24a
+    newTag: 5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
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

./commit-e8e4c65a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-e8e4c65a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 93e323eb to e8e4c65a on Tue Jan 2 20:25:14 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 563c8f0f..f353b53f 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 960d9e50d604b482553698c5ae376c90b3e1c24a
+    newTag: 5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index b1220ac6..7046dfc8 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 960d9e50d604b482553698c5ae376c90b3e1c24a
+    newTag: 5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
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
<h3>3: Development changes from 93e323eb to e8e4c65a on Tue Jan 2 20:25:14 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 563c8f0f..f353b53f 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 960d9e50d604b482553698c5ae376c90b3e1c24a
+    newTag: 5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index b1220ac6..7046dfc8 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=960d9e50d604b482553698c5ae376c90b3e1c24a
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 960d9e50d604b482553698c5ae376c90b3e1c24a
+    newTag: 5bff9cb9bf7021ec395d2b725eaaa6629f1e6b7a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 55b075d5 to 93e323eb on Tue Jan 2 16:56:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index da2c9211..3f9bf44b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=95e19e23e0cc82add555414245f1895a80b798c1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index fc8de995..212e0b40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=95e19e23e0cc82add555414245f1895a80b798c1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 95e19e23e0cc82add555414245f1895a80b798c1
+    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
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

./commit-93e323eb/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-93e323eb/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 55b075d5 to 93e323eb on Tue Jan 2 16:56:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index da2c9211..3f9bf44b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=95e19e23e0cc82add555414245f1895a80b798c1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index fc8de995..212e0b40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=95e19e23e0cc82add555414245f1895a80b798c1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 95e19e23e0cc82add555414245f1895a80b798c1
+    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
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
<h3>4: Development changes from 55b075d5 to 93e323eb on Tue Jan 2 16:56:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index da2c9211..3f9bf44b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=95e19e23e0cc82add555414245f1895a80b798c1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index fc8de995..212e0b40 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=95e19e23e0cc82add555414245f1895a80b798c1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 95e19e23e0cc82add555414245f1895a80b798c1
+    newTag: 41348779fa69738f8cf36ef7a5eaa7597dcff9e1
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-55b075d5/development/components/release/development/kustomize.out.yaml
1677c1677
<         image: quay.io/redhat-appstudio/release-service:41348779fa69738f8cf36ef7a5eaa7597dcff9e1
---
>         image: quay.io/redhat-appstudio/release-service:95e19e23e0cc82add555414245f1895a80b798c1 
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
