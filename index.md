# kustomize changes tracked by commits 
### This file generated at Sun May 19 08:02:07 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from dff49232 to 274651e8 on Sat May 18 13:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 2f9d9991..016ac7c1 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b5cac44c..ce088aff 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
+  - https://github.com/konflux-ci/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
 
 images:
   - name: quay.io/redhat-appstudio/release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index d6313ff7..0c6f60a8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 48e5570b..d6c24021 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
diff --git a/hack/preview.sh b/hack/preview.sh
index 9e4248bf..82fa9b2e 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -191,7 +191,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
-[[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
+[[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from dff49232 to 274651e8 on Sat May 18 13:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 2f9d9991..016ac7c1 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b5cac44c..ce088aff 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
+  - https://github.com/konflux-ci/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
 
 images:
   - name: quay.io/redhat-appstudio/release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index d6313ff7..0c6f60a8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 48e5570b..d6c24021 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
diff --git a/hack/preview.sh b/hack/preview.sh
index 9e4248bf..82fa9b2e 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -191,7 +191,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
-[[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
+[[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from dff49232 to 274651e8 on Sat May 18 13:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 2f9d9991..016ac7c1 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b5cac44c..ce088aff 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
+  - https://github.com/konflux-ci/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
 
 images:
   - name: quay.io/redhat-appstudio/release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index d6313ff7..0c6f60a8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 48e5570b..d6c24021 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 components:
   - ../k-components/manager-resources-patch
diff --git a/hack/preview.sh b/hack/preview.sh
index 9e4248bf..82fa9b2e 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -191,7 +191,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
-[[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
+[[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${SPI_OPERATOR_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newName=\"${SPI_OPERATOR_IMAGE_REPO}\"" $ROOT/components/spi/overlays/development/kustomization.yaml
 [ -n "${SPI_OPERATOR_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-operator\")) |=.newTag=\"${SPI_OPERATOR_IMAGE_TAG}\"" $ROOT/components/spi/overlays/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ff067139 to dff49232 on Fri May 17 09:56:23 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 4614123a..cb637b99 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ff067139/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:616d3e7f8ea781e745dbdfc3158229fafd17d417
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:616d3e7f8ea781e745dbdfc3158229fafd17d417
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ff067139 to dff49232 on Fri May 17 09:56:23 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 4614123a..cb637b99 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ff067139/staging/components/multi-platform-controller/staging/kustomize.out.yaml
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:616d3e7f8ea781e745dbdfc3158229fafd17d417
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
293c293
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:616d3e7f8ea781e745dbdfc3158229fafd17d417
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from ff067139 to dff49232 on Fri May 17 09:56:23 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 4614123a..cb637b99 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ff067139/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:616d3e7f8ea781e745dbdfc3158229fafd17d417
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:616d3e7f8ea781e745dbdfc3158229fafd17d417
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 04f41ba2 to ff067139 on Fri May 17 07:16:12 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 491c9783..4614123a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1e40facc..7e9d47aa 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -17,7 +17,8 @@ data:
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
@@ -29,7 +30,8 @@ data:
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-04f41ba2/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 04f41ba2 to ff067139 on Fri May 17 07:16:12 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 491c9783..4614123a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1e40facc..7e9d47aa 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -17,7 +17,8 @@ data:
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
@@ -29,7 +30,8 @@ data:
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-04f41ba2/staging/components/multi-platform-controller/staging/kustomize.out.yaml
144c144
<   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
---
>   dynamic.linux-amd64.security-group: multi-arch-build-sg
155c155
<   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
---
>   dynamic.linux-arm64.security-group: multi-arch-build-sg
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
293c293
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 04f41ba2 to ff067139 on Fri May 17 07:16:12 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 491c9783..4614123a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1e40facc..7e9d47aa 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -17,7 +17,8 @@ data:
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
@@ -29,7 +30,8 @@ data:
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-04f41ba2/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 5276b56f to 04f41ba2 on Fri May 17 03:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9e95d91c..5eb9a3bd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dd00cd44..26e4154f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index e8f744ab..f49f1fbf 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f2d29e3f..90ecb33f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-5276b56f/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
---
>         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
978d977
<     - components/status 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 5276b56f to 04f41ba2 on Fri May 17 03:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9e95d91c..5eb9a3bd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dd00cd44..26e4154f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index e8f744ab..f49f1fbf 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f2d29e3f..90ecb33f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-5276b56f/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
---
>         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
1005d1004
<     - components/status 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 5276b56f to 04f41ba2 on Fri May 17 03:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9e95d91c..5eb9a3bd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dd00cd44..26e4154f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index e8f744ab..f49f1fbf 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f2d29e3f..90ecb33f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-5276b56f/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
---
>         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
897d896
<     - components/status 
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
```
 
</details> 
<br> 


</div>
