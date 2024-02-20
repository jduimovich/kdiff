# kustomize changes tracked by commits 
### This file generated at Tue Feb 20 20:04:08 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 40829c4e to cdbc78c1 on Tue Feb 20 19:10:49 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 752535da..53c7e512 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
+- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 0ba033ed..45b9f228 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 7494ce80..db18d93d 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 8915784f..529036d7 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/hack/preview.sh b/hack/preview.sh
index 26a07131..5631fc0c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -202,7 +202,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml 
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
<h3>1: Staging changes from 40829c4e to cdbc78c1 on Tue Feb 20 19:10:49 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 752535da..53c7e512 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
+- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 0ba033ed..45b9f228 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 7494ce80..db18d93d 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 8915784f..529036d7 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/hack/preview.sh b/hack/preview.sh
index 26a07131..5631fc0c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -202,7 +202,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml 
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
<h3>1: Development changes from 40829c4e to cdbc78c1 on Tue Feb 20 19:10:49 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 752535da..53c7e512 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
+- https://github.com/konflux-ci/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 0ba033ed..45b9f228 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_vault?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 7494ce80..db18d93d 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=a4bbfec9e7dcfa4515258146f3ef22404640b02e
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 8915784f..529036d7 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/overlays/openshift_aws?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
+  - https://github.com/konflux-ci/remote-secret/config/monitoring/prometheus?ref=68d500a6a5b5f1003e149f5c7f992edee6b66412
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 68d500a6a5b5f1003e149f5c7f992edee6b66412
+    newTag: a6a2d4d7a6179fa695aa615910f7b6073f9ee465
 
 patches:
   - target:
diff --git a/hack/preview.sh b/hack/preview.sh
index 26a07131..5631fc0c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -202,7 +202,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${REMOTE_SECRET_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newName=\"${REMOTE_SECRET_IMAGE_REPO}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
-[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
+[[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
 [ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
 [ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml 
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
<h3>2: Production changes from d1d51ce7 to 40829c4e on Tue Feb 20 17:48:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 83a000da..813d0b8c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,3 +14,7 @@ namespace: integration-service
 
 patches:
   - path: manager_resources_patch.yaml
+  - path: snapshotgc_inputs_patch.yaml
+    target:
+      kind: CronJob
+      name: snapshot-garbage-collector
diff --git a/components/integration/development/snapshotgc_inputs_patch.yaml b/components/integration/development/snapshotgc_inputs_patch.yaml
new file mode 100644
index 00000000..234e7d13
--- /dev/null
+++ b/components/integration/development/snapshotgc_inputs_patch.yaml
@@ -0,0 +1,5 @@
+- op: add
+  path: /spec/jobTemplate/spec/template/spec/containers/0/env
+  value:
+    - name: PR_SNAPSHOTS_TO_KEEP
+      value: "10" 
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
<h3>2: Staging changes from d1d51ce7 to 40829c4e on Tue Feb 20 17:48:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 83a000da..813d0b8c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,3 +14,7 @@ namespace: integration-service
 
 patches:
   - path: manager_resources_patch.yaml
+  - path: snapshotgc_inputs_patch.yaml
+    target:
+      kind: CronJob
+      name: snapshot-garbage-collector
diff --git a/components/integration/development/snapshotgc_inputs_patch.yaml b/components/integration/development/snapshotgc_inputs_patch.yaml
new file mode 100644
index 00000000..234e7d13
--- /dev/null
+++ b/components/integration/development/snapshotgc_inputs_patch.yaml
@@ -0,0 +1,5 @@
+- op: add
+  path: /spec/jobTemplate/spec/template/spec/containers/0/env
+  value:
+    - name: PR_SNAPSHOTS_TO_KEEP
+      value: "10" 
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
<h3>2: Development changes from d1d51ce7 to 40829c4e on Tue Feb 20 17:48:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 83a000da..813d0b8c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -14,3 +14,7 @@ namespace: integration-service
 
 patches:
   - path: manager_resources_patch.yaml
+  - path: snapshotgc_inputs_patch.yaml
+    target:
+      kind: CronJob
+      name: snapshot-garbage-collector
diff --git a/components/integration/development/snapshotgc_inputs_patch.yaml b/components/integration/development/snapshotgc_inputs_patch.yaml
new file mode 100644
index 00000000..234e7d13
--- /dev/null
+++ b/components/integration/development/snapshotgc_inputs_patch.yaml
@@ -0,0 +1,5 @@
+- op: add
+  path: /spec/jobTemplate/spec/template/spec/containers/0/env
+  value:
+    - name: PR_SNAPSHOTS_TO_KEEP
+      value: "10" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d1d51ce7/development/components/integration/development/kustomize.out.yaml
1257,1259d1256
<             env:
<             - name: PR_SNAPSHOTS_TO_KEEP
<               value: "10" 
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
<h3>3: Production changes from 349a2642 to d1d51ce7 on Tue Feb 20 14:38:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 66a93b6b..e4e6d515 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=53ae76d32a32be7babf32df376b89d0623e78726
+  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 53ae76d32a32be7babf32df376b89d0623e78726
+    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 349a2642 to d1d51ce7 on Tue Feb 20 14:38:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 66a93b6b..e4e6d515 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=53ae76d32a32be7babf32df376b89d0623e78726
+  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 53ae76d32a32be7babf32df376b89d0623e78726
+    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
 
 patches:
   - path: change-backends.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-349a2642/staging/components/sprayproxy/staging/kustomize.out.yaml
184c184
<         image: quay.io/redhat-appstudio/sprayproxy:2f488f7082df063350cc5a774b61ee3207481a9b
---
>         image: quay.io/redhat-appstudio/sprayproxy:53ae76d32a32be7babf32df376b89d0623e78726 
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
<h3>3: Development changes from 349a2642 to d1d51ce7 on Tue Feb 20 14:38:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 66a93b6b..e4e6d515 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=53ae76d32a32be7babf32df376b89d0623e78726
+  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 53ae76d32a32be7babf32df376b89d0623e78726
+    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
 
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
<h3>4: Production changes from 591296ea to 349a2642 on Tue Feb 20 13:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index b7dacd5f..0be3b7d8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-591296ea/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d 
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
<h3>4: Staging changes from 591296ea to 349a2642 on Tue Feb 20 13:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index b7dacd5f..0be3b7d8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-591296ea/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d 
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
<h3>4: Development changes from 591296ea to 349a2642 on Tue Feb 20 13:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index b7dacd5f..0be3b7d8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-591296ea/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d 
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
