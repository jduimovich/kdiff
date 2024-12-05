# kustomize changes tracked by commits 
### This file generated at Thu Dec  5 00:11:32 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 3e4e048b to 13b053d7 on Wed Dec 4 21:01:10 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88605502..b74a704a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-3e4e048b/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
./commit-3e4e048b/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590 
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
<h3>1: Staging changes from 3e4e048b to 13b053d7 on Wed Dec 4 21:01:10 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88605502..b74a704a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-3e4e048b/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590 
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
<h3>1: Development changes from 3e4e048b to 13b053d7 on Wed Dec 4 21:01:10 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88605502..b74a704a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-3e4e048b/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590 
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
<h3>2: Production changes from dd68d82d to 3e4e048b on Wed Dec 4 20:03:04 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index cf4045c8..c0546b7e 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -403,7 +403,7 @@ data:
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.vpc: "konflux-internal-ocp-art-vpc"
   dynamic.linux-s390x.key: "internal-prod-key"
   dynamic.linux-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
   dynamic.linux-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
@@ -418,7 +418,7 @@ data:
   dynamic.linux-large-s390x.type: ibmz
   dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-ocp-art-vpc"
   dynamic.linux-large-s390x.key: "internal-prod-key"
   dynamic.linux-large-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
   dynamic.linux-large-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d" 
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
<h3>2: Staging changes from dd68d82d to 3e4e048b on Wed Dec 4 20:03:04 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index cf4045c8..c0546b7e 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -403,7 +403,7 @@ data:
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.vpc: "konflux-internal-ocp-art-vpc"
   dynamic.linux-s390x.key: "internal-prod-key"
   dynamic.linux-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
   dynamic.linux-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
@@ -418,7 +418,7 @@ data:
   dynamic.linux-large-s390x.type: ibmz
   dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-ocp-art-vpc"
   dynamic.linux-large-s390x.key: "internal-prod-key"
   dynamic.linux-large-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
   dynamic.linux-large-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d" 
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
<h3>2: Development changes from dd68d82d to 3e4e048b on Wed Dec 4 20:03:04 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index cf4045c8..c0546b7e 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -403,7 +403,7 @@ data:
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.vpc: "konflux-internal-ocp-art-vpc"
   dynamic.linux-s390x.key: "internal-prod-key"
   dynamic.linux-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
   dynamic.linux-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
@@ -418,7 +418,7 @@ data:
   dynamic.linux-large-s390x.type: ibmz
   dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-ocp-art-vpc"
   dynamic.linux-large-s390x.key: "internal-prod-key"
   dynamic.linux-large-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
   dynamic.linux-large-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d" 
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
<h3>3: Production changes from 5b2db0af to dd68d82d on Wed Dec 4 18:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index f0ac8d12..cf4045c8 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -14,6 +14,7 @@ data:
   dynamic-platforms: "\
     linux/arm64,\
     linux/amd64,\
+    linux-d160/arm64,\
     linux-mlarge/amd64,\
     linux-mlarge/arm64,\
     linux-mxlarge/amd64,\
@@ -63,7 +64,20 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "160"
+
+   # same as default but with 160GB disk instead of default 40GB
+  dynamic.linux-d160-arm64.type: aws
+  dynamic.linux-d160-arm64.region: us-east-1
+  dynamic.linux-d160-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-d160-arm64.instance-type: m6g.large
+  dynamic.linux-d160-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-d160-arm64.aws-secret: aws-account
+  dynamic.linux-d160-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-d160-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-d160-arm64.max-instances: "100"
+  dynamic.linux-d160-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-d160-arm64.allocation-timeout: "1200"
+  dynamic.linux-d160-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +90,6 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +102,6 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +114,6 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +126,6 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +138,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "160"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>3: Staging changes from 5b2db0af to dd68d82d on Wed Dec 4 18:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index f0ac8d12..cf4045c8 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -14,6 +14,7 @@ data:
   dynamic-platforms: "\
     linux/arm64,\
     linux/amd64,\
+    linux-d160/arm64,\
     linux-mlarge/amd64,\
     linux-mlarge/arm64,\
     linux-mxlarge/amd64,\
@@ -63,7 +64,20 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "160"
+
+   # same as default but with 160GB disk instead of default 40GB
+  dynamic.linux-d160-arm64.type: aws
+  dynamic.linux-d160-arm64.region: us-east-1
+  dynamic.linux-d160-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-d160-arm64.instance-type: m6g.large
+  dynamic.linux-d160-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-d160-arm64.aws-secret: aws-account
+  dynamic.linux-d160-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-d160-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-d160-arm64.max-instances: "100"
+  dynamic.linux-d160-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-d160-arm64.allocation-timeout: "1200"
+  dynamic.linux-d160-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +90,6 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +102,6 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +114,6 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +126,6 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +138,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "160"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>3: Development changes from 5b2db0af to dd68d82d on Wed Dec 4 18:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index f0ac8d12..cf4045c8 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -14,6 +14,7 @@ data:
   dynamic-platforms: "\
     linux/arm64,\
     linux/amd64,\
+    linux-d160/arm64,\
     linux-mlarge/amd64,\
     linux-mlarge/arm64,\
     linux-mxlarge/amd64,\
@@ -63,7 +64,20 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "160"
+
+   # same as default but with 160GB disk instead of default 40GB
+  dynamic.linux-d160-arm64.type: aws
+  dynamic.linux-d160-arm64.region: us-east-1
+  dynamic.linux-d160-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-d160-arm64.instance-type: m6g.large
+  dynamic.linux-d160-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-d160-arm64.aws-secret: aws-account
+  dynamic.linux-d160-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-d160-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-d160-arm64.max-instances: "100"
+  dynamic.linux-d160-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-d160-arm64.allocation-timeout: "1200"
+  dynamic.linux-d160-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +90,6 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +102,6 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +114,6 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +126,6 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +138,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "160"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>4: Production changes from 00af08ba to 5b2db0af on Wed Dec 4 16:29:53 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index e07c2fc0..1ad513fc 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/konflux-ci/internal-services/config/crd?ref=15c778d385429e0f30a61796f4afee58bdb78873
+- https://github.com/konflux-ci/internal-services/config/crd?ref=76d6f4a06be38811c5161ebbe7909ecdf44eea51
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
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
<h3>4: Staging changes from 00af08ba to 5b2db0af on Wed Dec 4 16:29:53 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index e07c2fc0..1ad513fc 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/konflux-ci/internal-services/config/crd?ref=15c778d385429e0f30a61796f4afee58bdb78873
+- https://github.com/konflux-ci/internal-services/config/crd?ref=76d6f4a06be38811c5161ebbe7909ecdf44eea51
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
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
<h3>4: Development changes from 00af08ba to 5b2db0af on Wed Dec 4 16:29:53 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index e07c2fc0..1ad513fc 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/konflux-ci/internal-services/config/crd?ref=15c778d385429e0f30a61796f4afee58bdb78873
+- https://github.com/konflux-ci/internal-services/config/crd?ref=76d6f4a06be38811c5161ebbe7909ecdf44eea51
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
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
