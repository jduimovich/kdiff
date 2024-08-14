# kustomize changes tracked by commits 
### This file generated at Wed Aug 14 00:13:29 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b4fe9580 to a1860a6a on Tue Aug 13 23:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/hack/sandbox-development-mode.sh b/hack/sandbox-development-mode.sh
index 7a00041d..77128ed6 100755
--- a/hack/sandbox-development-mode.sh
+++ b/hack/sandbox-development-mode.sh
@@ -10,4 +10,5 @@ echo
 echo "Installing the Toolchain (Sandbox) operators in dev environment:"
 rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
-make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup"
+CGO_ENABLED=0 go install github.com/kubesaw/ksctl/cmd/ksctl@master
+make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup" USE_INSTALLED_KSCTL=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b4fe9580 to a1860a6a on Tue Aug 13 23:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/hack/sandbox-development-mode.sh b/hack/sandbox-development-mode.sh
index 7a00041d..77128ed6 100755
--- a/hack/sandbox-development-mode.sh
+++ b/hack/sandbox-development-mode.sh
@@ -10,4 +10,5 @@ echo
 echo "Installing the Toolchain (Sandbox) operators in dev environment:"
 rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
-make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup"
+CGO_ENABLED=0 go install github.com/kubesaw/ksctl/cmd/ksctl@master
+make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup" USE_INSTALLED_KSCTL=true 
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
<h3>1: Development changes from b4fe9580 to a1860a6a on Tue Aug 13 23:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/hack/sandbox-development-mode.sh b/hack/sandbox-development-mode.sh
index 7a00041d..77128ed6 100755
--- a/hack/sandbox-development-mode.sh
+++ b/hack/sandbox-development-mode.sh
@@ -10,4 +10,5 @@ echo
 echo "Installing the Toolchain (Sandbox) operators in dev environment:"
 rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
-make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup"
+CGO_ENABLED=0 go install github.com/kubesaw/ksctl/cmd/ksctl@master
+make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup" USE_INSTALLED_KSCTL=true 
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
<h3>2: Production changes from 6cdb8f0f to b4fe9580 on Tue Aug 13 20:08:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 2533234a..d573683f 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-6cdb8f0f/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:78e19fa5f3d283b3d265f4652f59ce74f81083f4
---
>         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a
./commit-6cdb8f0f/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:78e19fa5f3d283b3d265f4652f59ce74f81083f4
---
>         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6cdb8f0f to b4fe9580 on Tue Aug 13 20:08:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 2533234a..d573683f 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6cdb8f0f to b4fe9580 on Tue Aug 13 20:08:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 2533234a..d573683f 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d2b74c3e to 6cdb8f0f on Tue Aug 13 20:06:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index a4ba75f3..6aef4f1a 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 4491a5ee..50e6d408 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from d2b74c3e to 6cdb8f0f on Tue Aug 13 20:06:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index a4ba75f3..6aef4f1a 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 4491a5ee..50e6d408 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d2b74c3e/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:78e19fa5f3d283b3d265f4652f59ce74f81083f4
---
>         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a 
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
<h3>3: Development changes from d2b74c3e to 6cdb8f0f on Tue Aug 13 20:06:16 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index a4ba75f3..6aef4f1a 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 4491a5ee..50e6d408 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d2b74c3e/development/components/build-service/development/kustomize.out.yaml
545c545
<         image: quay.io/konflux-ci/build-service:78e19fa5f3d283b3d265f4652f59ce74f81083f4
---
>         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a 
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
<h3>4: Production changes from 79d59631 to d2b74c3e on Tue Aug 13 18:39:23 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 3630946c..e6053a01 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,11 @@
 approvers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
 
 reviewers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 48214e46..07cdae0f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
@@ -67,17 +93,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8c021990..8618c0d7 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g4xlarge/amd64,'
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -66,17 +92,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 79d59631 to d2b74c3e on Tue Aug 13 18:39:23 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 3630946c..e6053a01 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,11 @@
 approvers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
 
 reviewers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 48214e46..07cdae0f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
@@ -67,17 +93,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8c021990..8618c0d7 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g4xlarge/amd64,'
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -66,17 +92,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-79d59631/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188,189c188,198
<   dynamic-platforms: linux/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,'
<     linux-root/arm64,linux-root/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
>   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-amd64.aws-secret: aws-account
>   dynamic.linux-amd64.instance-type: m6a.large
>   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
>   dynamic.linux-amd64.max-instances: "10"
>   dynamic.linux-amd64.region: us-east-1
>   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
>   dynamic.linux-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
>   dynamic.linux-amd64.type: aws
405d413
<   local-platforms: linux/amd64,linux/x86_64,local,localhost, 
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
<h3>4: Development changes from 79d59631 to d2b74c3e on Tue Aug 13 18:39:23 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 3630946c..e6053a01 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,11 @@
 approvers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
 
 reviewers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 48214e46..07cdae0f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
@@ -67,17 +93,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8c021990..8618c0d7 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g4xlarge/amd64,'
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -66,17 +92,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
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
