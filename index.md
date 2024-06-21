# kustomize changes tracked by commits 
### This file generated at Fri Jun 21 12:12:45 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 3fbb77ae to 0de62426 on Fri Jun 21 11:55:38 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
deleted file mode 100644
index 918316c7..00000000
--- a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
index 613c6cbf..eea75eca 100644
--- a/components/mintmaker/production/kustomization.yaml
+++ b/components/mintmaker/production/kustomization.yaml
@@ -4,9 +4,6 @@ resources:
   - ../base
   - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
 
-components:
-  - ../k-components/manager-resources-patch
-
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 02c7dd78..1277723d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -14,3 +14,6 @@ images:
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/mintmaker/staging/base/manager_resources_patch.yaml
similarity index 83%
rename from components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
rename to components/mintmaker/staging/base/manager_resources_patch.yaml
index 8ae7e5d3..3fa41ce9 100644
--- a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/mintmaker/staging/base/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 1024Mi
+            memory: 2048Mi
           requests:
             cpu: 100m
-            memory: 20Mi
+            memory: 256Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-3fbb77ae/production/components/mintmaker/production/kustomize.out.yaml
447,470d446
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       - args:
492a469,492
>             memory: 1024Mi
>           requests:
>             cpu: 100m
>             memory: 20Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
495c495
<             cpu: 10m
---
>             cpu: 5m 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 3fbb77ae to 0de62426 on Fri Jun 21 11:55:38 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
deleted file mode 100644
index 918316c7..00000000
--- a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
index 613c6cbf..eea75eca 100644
--- a/components/mintmaker/production/kustomization.yaml
+++ b/components/mintmaker/production/kustomization.yaml
@@ -4,9 +4,6 @@ resources:
   - ../base
   - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
 
-components:
-  - ../k-components/manager-resources-patch
-
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 02c7dd78..1277723d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -14,3 +14,6 @@ images:
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/mintmaker/staging/base/manager_resources_patch.yaml
similarity index 83%
rename from components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
rename to components/mintmaker/staging/base/manager_resources_patch.yaml
index 8ae7e5d3..3fa41ce9 100644
--- a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/mintmaker/staging/base/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 1024Mi
+            memory: 2048Mi
           requests:
             cpu: 100m
-            memory: 20Mi
+            memory: 256Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-3fbb77ae/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
509c509
<             memory: 2048Mi
---
>             memory: 512Mi
511c511
<             cpu: 100m
---
>             cpu: 10m 
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
<h3>1: Development changes from 3fbb77ae to 0de62426 on Fri Jun 21 11:55:38 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml b/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
deleted file mode 100644
index 918316c7..00000000
--- a/components/mintmaker/k-components/manager-resources-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
index 613c6cbf..eea75eca 100644
--- a/components/mintmaker/production/kustomization.yaml
+++ b/components/mintmaker/production/kustomization.yaml
@@ -4,9 +4,6 @@ resources:
   - ../base
   - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
 
-components:
-  - ../k-components/manager-resources-patch
-
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 02c7dd78..1277723d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -14,3 +14,6 @@ images:
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml b/components/mintmaker/staging/base/manager_resources_patch.yaml
similarity index 83%
rename from components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
rename to components/mintmaker/staging/base/manager_resources_patch.yaml
index 8ae7e5d3..3fa41ce9 100644
--- a/components/mintmaker/k-components/manager-resources-patch/manager_resources_patch.yaml
+++ b/components/mintmaker/staging/base/manager_resources_patch.yaml
@@ -11,7 +11,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 1024Mi
+            memory: 2048Mi
           requests:
             cpu: 100m
-            memory: 20Mi
+            memory: 256Mi 
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
<h3>2: Production changes from 62b4839a to 3fbb77ae on Fri Jun 21 11:03:57 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index c7563a3f..318e0223 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -130,9 +130,9 @@ data:
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-prod-key"
-  dynamic.linux-s390x.subnet: "internal-a-expansion"
+  dynamic.linux-s390x.subnet: "internal-a"
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-3"
+  dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
@@ -162,3 +162,9 @@ data:
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
+
+  host.ibm-gpu-amd64.address: "10.130.81.14"
+  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  host.ibm-gpu-amd64.user: "root"
+  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 62b4839a to 3fbb77ae on Fri Jun 21 11:03:57 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index c7563a3f..318e0223 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -130,9 +130,9 @@ data:
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-prod-key"
-  dynamic.linux-s390x.subnet: "internal-a-expansion"
+  dynamic.linux-s390x.subnet: "internal-a"
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-3"
+  dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
@@ -162,3 +162,9 @@ data:
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
+
+  host.ibm-gpu-amd64.address: "10.130.81.14"
+  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  host.ibm-gpu-amd64.user: "root"
+  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.concurrency: "4" 
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
<h3>2: Development changes from 62b4839a to 3fbb77ae on Fri Jun 21 11:03:57 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index c7563a3f..318e0223 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -130,9 +130,9 @@ data:
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-prod-key"
-  dynamic.linux-s390x.subnet: "internal-a-expansion"
+  dynamic.linux-s390x.subnet: "internal-a"
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-3"
+  dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
@@ -162,3 +162,9 @@ data:
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
+
+  host.ibm-gpu-amd64.address: "10.130.81.14"
+  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  host.ibm-gpu-amd64.user: "root"
+  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.concurrency: "4" 
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
<h3>3: Production changes from 549a05d2 to 62b4839a on Fri Jun 21 10:52:22 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d2db4940..80723fd0 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
+- https://github.com/konflux-ci/build-service/config/default?ref=463f4e01eb8ab92cac71da97294072463b8ac49b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
+  newTag: 463f4e01eb8ab92cac71da97294072463b8ac49b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2356dd62..ee445c48 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
+- https://github.com/konflux-ci/build-service/config/default?ref=463f4e01eb8ab92cac71da97294072463b8ac49b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
+  newTag: 463f4e01eb8ab92cac71da97294072463b8ac49b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 549a05d2 to 62b4839a on Fri Jun 21 10:52:22 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d2db4940..80723fd0 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
+- https://github.com/konflux-ci/build-service/config/default?ref=463f4e01eb8ab92cac71da97294072463b8ac49b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
+  newTag: 463f4e01eb8ab92cac71da97294072463b8ac49b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2356dd62..ee445c48 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
+- https://github.com/konflux-ci/build-service/config/default?ref=463f4e01eb8ab92cac71da97294072463b8ac49b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
+  newTag: 463f4e01eb8ab92cac71da97294072463b8ac49b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-549a05d2/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
112a113,133
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: build-service-manager-role
>   namespace: build-service
> rules:
> - apiGroups:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
201a223
>   - deletecollection
221a244
>   - deletecollection
351c374
<   name: manager-role
---
>   name: build-service-manager-role
548c571
<         image: quay.io/konflux-ci/build-service:463f4e01eb8ab92cac71da97294072463b8ac49b
---
>         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa 
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
<h3>3: Development changes from 549a05d2 to 62b4839a on Fri Jun 21 10:52:22 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d2db4940..80723fd0 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
+- https://github.com/konflux-ci/build-service/config/default?ref=463f4e01eb8ab92cac71da97294072463b8ac49b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
+  newTag: 463f4e01eb8ab92cac71da97294072463b8ac49b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2356dd62..ee445c48 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=a3200482f3df51ff1df2ef367bc45d83a7358caa
+- https://github.com/konflux-ci/build-service/config/default?ref=463f4e01eb8ab92cac71da97294072463b8ac49b
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: a3200482f3df51ff1df2ef367bc45d83a7358caa
+  newTag: 463f4e01eb8ab92cac71da97294072463b8ac49b
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-549a05d2/development/components/build-service/development/kustomize.out.yaml
112a113,133
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   creationTimestamp: null
>   name: build-service-manager-role
>   namespace: build-service
> rules:
> - apiGroups:
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
> ---
> apiVersion: rbac.authorization.k8s.io/v1
201a223
>   - deletecollection
221a244
>   - deletecollection
351c374
<   name: manager-role
---
>   name: build-service-manager-role
543c566
<         image: quay.io/konflux-ci/build-service:463f4e01eb8ab92cac71da97294072463b8ac49b
---
>         image: quay.io/konflux-ci/build-service:a3200482f3df51ff1df2ef367bc45d83a7358caa 
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
<h3>4: Production changes from 377da7db to 549a05d2 on Fri Jun 21 08:56:44 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index f61e4ce2..778a619e 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -63,9 +63,9 @@ data:
   dynamic.linux-s390x.secret: "internal-stage-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-stage-key"
-  dynamic.linux-s390x.subnet: "internal-a-expansion"
+  dynamic.linux-s390x.subnet: "internal-b"
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-3"
+  dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
@@ -89,3 +89,9 @@ data:
   host.ppc1.user: "root"
   host.ppc1.secret: "internal-stage-ibm-ssh-key"
   host.ppc1.concurrency: "4"
+
+  host.ibm-gpu-amd64.address: "10.130.81.14"
+  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  host.ibm-gpu-amd64.user: "root"
+  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 377da7db to 549a05d2 on Fri Jun 21 08:56:44 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index f61e4ce2..778a619e 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -63,9 +63,9 @@ data:
   dynamic.linux-s390x.secret: "internal-stage-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-stage-key"
-  dynamic.linux-s390x.subnet: "internal-a-expansion"
+  dynamic.linux-s390x.subnet: "internal-b"
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-3"
+  dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
@@ -89,3 +89,9 @@ data:
   host.ppc1.user: "root"
   host.ppc1.secret: "internal-stage-ibm-ssh-key"
   host.ppc1.concurrency: "4"
+
+  host.ibm-gpu-amd64.address: "10.130.81.14"
+  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  host.ibm-gpu-amd64.user: "root"
+  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.concurrency: "4" 
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
<h3>4: Development changes from 377da7db to 549a05d2 on Fri Jun 21 08:56:44 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index f61e4ce2..778a619e 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -63,9 +63,9 @@ data:
   dynamic.linux-s390x.secret: "internal-stage-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-stage-key"
-  dynamic.linux-s390x.subnet: "internal-a-expansion"
+  dynamic.linux-s390x.subnet: "internal-b"
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-3"
+  dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
@@ -89,3 +89,9 @@ data:
   host.ppc1.user: "root"
   host.ppc1.secret: "internal-stage-ibm-ssh-key"
   host.ppc1.concurrency: "4"
+
+  host.ibm-gpu-amd64.address: "10.130.81.14"
+  host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
+  host.ibm-gpu-amd64.user: "root"
+  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.concurrency: "4" 
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
