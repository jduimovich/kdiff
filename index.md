# kustomize changes tracked by commits 
### This file generated at Sun Sep  1 20:03:33 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8b941608 to 10c00192 on Sun Sep 1 06:49:32 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 8781e43e..a9dbe730 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=d37a36651f991ecd854d90fd2cfd4375342f1afc
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=aee532b40eea0d5752024510c81d95b96efebdd3 
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
<h3>1: Staging changes from 8b941608 to 10c00192 on Sun Sep 1 06:49:32 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 8781e43e..a9dbe730 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=d37a36651f991ecd854d90fd2cfd4375342f1afc
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=aee532b40eea0d5752024510c81d95b96efebdd3 
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
<h3>1: Development changes from 8b941608 to 10c00192 on Sun Sep 1 06:49:32 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 8781e43e..a9dbe730 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=d37a36651f991ecd854d90fd2cfd4375342f1afc
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=aee532b40eea0d5752024510c81d95b96efebdd3 
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
<h3>2: Production changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..5be05762 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,6 +60,9 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
+## Enterprise contract changes
+export EC_DISABLE_DOWNLOAD_SERVICE=
+
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index 8db3077f..4da413a0 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,6 +137,10 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
+if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
+  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\ 
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
<h3>2: Staging changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..5be05762 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,6 +60,9 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
+## Enterprise contract changes
+export EC_DISABLE_DOWNLOAD_SERVICE=
+
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index 8db3077f..4da413a0 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,6 +137,10 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
+if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
+  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\ 
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
<h3>2: Development changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..5be05762 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,6 +60,9 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
+## Enterprise contract changes
+export EC_DISABLE_DOWNLOAD_SERVICE=
+
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index 8db3077f..4da413a0 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,6 +137,10 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
+if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
+  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\ 
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
<h3>3: Production changes from 1a25ff56 to 21673ab9 on Fri Aug 30 17:47:33 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b55379ed..987f7f0f 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -56,7 +56,7 @@ http {
             # workspaces expects requests under the traditional API paths for
             # kubernetes api servers, so we need to strip /api/k8s from them
             rewrite ^/api/k8s/(.*)$ /$1 break;
-            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
         }
 
         location /api/k8s/ { 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-1a25ff56/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
100c100
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
---
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
126c126
<   name: proxy-72bg6c8d24
---
>   name: proxy-fg6f8t7bm6
631c631
<           name: proxy-72bg6c8d24
---
>           name: proxy-fg6f8t7bm6
./commit-1a25ff56/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
100c100
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
---
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
126c126
<   name: proxy-72bg6c8d24
---
>   name: proxy-fg6f8t7bm6
631c631
<           name: proxy-72bg6c8d24
---
>           name: proxy-fg6f8t7bm6 
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
<h3>3: Staging changes from 1a25ff56 to 21673ab9 on Fri Aug 30 17:47:33 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b55379ed..987f7f0f 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -56,7 +56,7 @@ http {
             # workspaces expects requests under the traditional API paths for
             # kubernetes api servers, so we need to strip /api/k8s from them
             rewrite ^/api/k8s/(.*)$ /$1 break;
-            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
         }
 
         location /api/k8s/ { 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-1a25ff56/staging/components/ui/staging/kustomize.out.yaml
100c100
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
---
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
126c126
<   name: proxy-72bg6c8d24
---
>   name: proxy-fg6f8t7bm6
631c631
<           name: proxy-72bg6c8d24
---
>           name: proxy-fg6f8t7bm6 
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
<h3>3: Development changes from 1a25ff56 to 21673ab9 on Fri Aug 30 17:47:33 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b55379ed..987f7f0f 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -56,7 +56,7 @@ http {
             # workspaces expects requests under the traditional API paths for
             # kubernetes api servers, so we need to strip /api/k8s from them
             rewrite ^/api/k8s/(.*)$ /$1 break;
-            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
         }
 
         location /api/k8s/ { 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-1a25ff56/development/components/ui/development/kustomize.out.yaml
100c100
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local:8000/;
---
>                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
126c126
<   name: proxy-72bg6c8d24
---
>   name: proxy-fg6f8t7bm6
631c631
<           name: proxy-72bg6c8d24
---
>           name: proxy-fg6f8t7bm6 
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
<h3>4: Production changes from 0fbc74f0 to 1a25ff56 on Fri Aug 30 16:47:02 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 691ba054..54647f25 100644
--- a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -30,7 +30,7 @@ spec:
           helm:
             parameters:
               - name: "image.repository"
-                value: otel/opentelemetry-collector-k8s
+                value: "quay.io/konflux-ci/opentelemetry-collector-k8s"
               - name: "mode"
                 value: deployment
               - name: "fullnameOverride"
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 506f0652..6a15128d 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -79,5 +79,5 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1"
 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index dedfeb67..9fbbb79e 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -83,4 +83,4 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1"
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index f467fc17..f41b07d5 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -83,4 +83,4 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1" 
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
<h3>4: Staging changes from 0fbc74f0 to 1a25ff56 on Fri Aug 30 16:47:02 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 691ba054..54647f25 100644
--- a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -30,7 +30,7 @@ spec:
           helm:
             parameters:
               - name: "image.repository"
-                value: otel/opentelemetry-collector-k8s
+                value: "quay.io/konflux-ci/opentelemetry-collector-k8s"
               - name: "mode"
                 value: deployment
               - name: "fullnameOverride"
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 506f0652..6a15128d 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -79,5 +79,5 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1"
 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index dedfeb67..9fbbb79e 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -83,4 +83,4 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1"
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index f467fc17..f41b07d5 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -83,4 +83,4 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1" 
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
<h3>4: Development changes from 0fbc74f0 to 1a25ff56 on Fri Aug 30 16:47:02 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 691ba054..54647f25 100644
--- a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -30,7 +30,7 @@ spec:
           helm:
             parameters:
               - name: "image.repository"
-                value: otel/opentelemetry-collector-k8s
+                value: "quay.io/konflux-ci/opentelemetry-collector-k8s"
               - name: "mode"
                 value: deployment
               - name: "fullnameOverride"
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 506f0652..6a15128d 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -79,5 +79,5 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1"
 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index dedfeb67..9fbbb79e 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -83,4 +83,4 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1"
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index f467fc17..f41b07d5 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -83,4 +83,4 @@ image:
   repository: quay.io/konflux-ci/opentelemetry-collector-k8s
   pullPolicy: Always
   # Overrides the image tag whose default is the chart appVersion.
-  tag: "0.106.0"
+  tag: "0.106.1" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0fbc74f0/development/app-of-apps-development.yaml
1284c1284
<             value: quay.io/konflux-ci/opentelemetry-collector-k8s
---
>             value: otel/opentelemetry-collector-k8s 
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
