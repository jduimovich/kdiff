# kustomize changes tracked by commits 
### This file generated at Sat Aug 31 12:03:05 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
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
<h3>1: Staging changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
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
<h3>1: Development changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
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
<h3>2: Production changes from 1a25ff56 to 21673ab9 on Fri Aug 30 17:47:33 2024 </h3>  
 
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
<h3>2: Staging changes from 1a25ff56 to 21673ab9 on Fri Aug 30 17:47:33 2024 </h3>  
 
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
<h3>2: Development changes from 1a25ff56 to 21673ab9 on Fri Aug 30 17:47:33 2024 </h3>  
 
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
<h3>3: Production changes from 0fbc74f0 to 1a25ff56 on Fri Aug 30 16:47:02 2024 </h3>  
 
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
<h3>3: Staging changes from 0fbc74f0 to 1a25ff56 on Fri Aug 30 16:47:02 2024 </h3>  
 
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
<h3>3: Development changes from 0fbc74f0 to 1a25ff56 on Fri Aug 30 16:47:02 2024 </h3>  
 
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

<div>
<h3>4: Production changes from 77f99a39 to 0fbc74f0 on Fri Aug 30 15:54:48 2024 </h3>  
 
<details> 
<summary>Git Diff (1276 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 9ae3bac1..6aa6f3c6 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -14,6 +14,7 @@ resources:
 - performance/
 - pipeline-service/
 - generic-dashboards/
+- power-monitoring/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
new file mode 100644
index 00000000..1cff92fd
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-power-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-power-monitoring
+    key: kepler.json
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
new file mode 100644
index 00000000..edde47c9
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
@@ -0,0 +1,1224 @@
+{
+    "annotations": {
+      "list": [
+        {
+          "builtIn": 1,
+          "datasource": {
+            "type": "grafana",
+            "uid": "-- Grafana --"
+          },
+          "enable": true,
+          "hide": true,
+          "iconColor": "rgba(0, 211, 255, 1)",
+          "name": "Annotations & Alerts",
+          "target": {
+            "limit": 100,
+            "matchAny": false,
+            "tags": [],
+            "type": "dashboard"
+          },
+          "type": "dashboard"
+        }
+      ]
+    },
+    "description": "Dashboard for Kepler Exporter",
+    "editable": true,
+    "fiscalYearStartMonth": 0,
+    "graphTooltip": 0,
+    "id": 2,
+    "iteration": 1694154532971,
+    "links": [],
+    "liveNow": false,
+    "panels": [
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 0
+        },
+        "id": 33,
+        "panels": [],
+        "title": "Power Consumption / Overview",
+        "type": "row"
+      },
+      {
+        "description": "CPU architecture & Power source determined by Kepler",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "center",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 0,
+          "y": 1
+        },
+        "id": 29,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "enablePagination": false,
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count ( label_replace( kepler_node_info{container=\"kepler\"}, \"zz_components_power_source\", \"$1\", \"components_power_source\", \"(.+)\") ) by (cpu_architecture, zz_components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Node - CPU Architecture & Power Source",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "Value": "Number of nodes",
+                "cpu_architecture": "CPU architecture",
+                "platform_power_source": "Platform Source",
+                "zz_components_power_source": "Component Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "description": "Total Energy Consumption (kWh) - Last 24 hours",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 12,
+          "y": 1
+        },
+        "id": 31,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "colorMode": "value",
+          "graphMode": "area",
+          "justifyMode": "center",
+          "orientation": "auto",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "values": false
+          },
+          "textMode": "auto"
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "expr": "kepler:kepler:container_joules_total:consumed:24h:all * $watt_per_second_to_kWh",
+            "refId": "A"
+          }
+        ],
+        "title": "Total Energy Consumption (kWh) - Last 24 hours",
+        "type": "stat"
+      },
+      {
+        "description": "Total Power Consumption for Top 10 Namespaces (kWh per day)",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 12,
+          "w": 24,
+          "x": 0,
+          "y": 8
+        },
+        "id": 18,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "displayMode": "gradient",
+          "minVizHeight": 10,
+          "minVizWidth": 0,
+          "orientation": "horizontal",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "limit": 10,
+            "values": true
+          },
+          "showUnfilled": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "topk(10, kepler:kepler:container_joules_total:consumed:24h:by_ns) * $watt_per_second_to_kWh",
+            "format": "table",
+            "instant": true,
+            "interval": "",
+            "legendFormat": "{{container_namespace}}",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Top 10 Energy Consuming Namespaces (kWh) in Last 24 hours",
+        "transformations": [
+          {
+            "id": "groupBy",
+            "options": {
+              "fields": {
+                "Value": {
+                  "aggregations": [
+                    "lastNotNull"
+                  ],
+                  "operation": "aggregate"
+                },
+                "container_namespace": {
+                  "aggregations": [],
+                  "operation": "groupby"
+                }
+              }
+            }
+          },
+          {
+            "id": "sortBy",
+            "options": {
+              "fields": {},
+              "sort": [
+                {
+                  "desc": true,
+                  "field": "Value (lastNotNull)"
+                }
+              ]
+            }
+          }
+        ],
+        "type": "bargauge"
+      },
+      {
+        "description": "Architecture, Component and Power source per Instance",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "auto",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                },
+                {
+                  "color": "red",
+                  "value": 80
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 35,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count (label_replace( kepler_node_info{container=\"kepler\"}, \"aa_instance\", \"$1\", \"instance\", \"(.+)\")) by (aa_instance, cpu_architecture, components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Detailed Node Information",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "Value": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "aa_instance": "Instance",
+                "components_power_source": "Component Power Source",
+                "cpu_architecture": "CPU Architecture",
+                "platform_power_source": "Platform Power Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 8,
+        "panels": [],
+        "title": "Power Consumption / Namespace",
+        "type": "row"
+      },
+      {
+        "description": "Total Power Consumption (W) in Namespace",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 0,
+          "y": 21
+        },
+        "id": 2,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom"
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Power Consumption (W) in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "Total Energy Consumption in Namespace (kWh) - Last 1 hour",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 12,
+          "y": 21
+        },
+        "id": 17,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom",
+            "sortBy": "Max",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG (CORE + UNCORE)",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_other_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_gpu_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Energy Consumption in $namespace (kWh) - Last 1 hour",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in PKG by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 29
+        },
+        "id": 16,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "PKG Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in DRAM by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 29
+        },
+        "id": 23,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "B"
+          }
+        ],
+        "title": "DRAM Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in OTHER by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 39
+        },
+        "id": 26,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "OTHER Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in GPU by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 39
+        },
+        "id": 27,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "GPU Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      }
+    ],
+    "refresh": "",
+    "schemaVersion": 36,
+    "style": "dark",
+    "tags": [],
+    "templating": {
+      "list": [
+        {
+          "current": {
+            "selected": true,
+            "text": "Prometheus",
+            "value": "Prometheus"
+          },
+          "hide": 0,
+          "includeAll": false,
+          "multi": false,
+          "name": "datasource",
+          "options": [],
+          "query": "prometheus",
+          "queryValue": "",
+          "refresh": 1,
+          "regex": ".*-(appstudio)-.*",
+          "skipUrlSync": false,
+          "type": "datasource"
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": false,
+            "text": "kepler-operator",
+            "value": "kepler-operator"
+          },
+          "definition": "label_values(kepler_container_package_joules_total, container_namespace)",
+          "description": "Namespace for pods to choose",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Namespace",
+          "multi": false,
+          "name": "namespace",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total, container_namespace)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": true,
+            "text": "All",
+            "value": "$__all"
+          },
+          "definition": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+          "description": "Number of pods inside namespace",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Pod",
+          "multi": false,
+          "name": "pod",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "description": "1W*s = 1J and 1J = (1/3600000)kWh",
+          "hide": 2,
+          "label": "",
+          "name": "watt_per_second_to_kWh",
+          "query": "0.000000277777777777778",
+          "skipUrlSync": false,
+          "type": "constant"
+        }
+      ]
+    },
+    "time": {
+      "from": "now-15m",
+      "to": "now"
+    },
+    "timepicker": {},
+    "timezone": "browser",
+    "title": "Kepler Exporter Dashboard",
+    "uid": "381ef848417532a1ef945494449453a41fdabaa7",
+    "version": 1,
+    "weekStart": ""
+  }
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..24d85e0f
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-power-monitoring
+    files:
+      - kepler.json 
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
<h3>4: Staging changes from 77f99a39 to 0fbc74f0 on Fri Aug 30 15:54:48 2024 </h3>  
 
<details> 
<summary>Git Diff (1276 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 9ae3bac1..6aa6f3c6 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -14,6 +14,7 @@ resources:
 - performance/
 - pipeline-service/
 - generic-dashboards/
+- power-monitoring/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
new file mode 100644
index 00000000..1cff92fd
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-power-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-power-monitoring
+    key: kepler.json
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
new file mode 100644
index 00000000..edde47c9
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
@@ -0,0 +1,1224 @@
+{
+    "annotations": {
+      "list": [
+        {
+          "builtIn": 1,
+          "datasource": {
+            "type": "grafana",
+            "uid": "-- Grafana --"
+          },
+          "enable": true,
+          "hide": true,
+          "iconColor": "rgba(0, 211, 255, 1)",
+          "name": "Annotations & Alerts",
+          "target": {
+            "limit": 100,
+            "matchAny": false,
+            "tags": [],
+            "type": "dashboard"
+          },
+          "type": "dashboard"
+        }
+      ]
+    },
+    "description": "Dashboard for Kepler Exporter",
+    "editable": true,
+    "fiscalYearStartMonth": 0,
+    "graphTooltip": 0,
+    "id": 2,
+    "iteration": 1694154532971,
+    "links": [],
+    "liveNow": false,
+    "panels": [
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 0
+        },
+        "id": 33,
+        "panels": [],
+        "title": "Power Consumption / Overview",
+        "type": "row"
+      },
+      {
+        "description": "CPU architecture & Power source determined by Kepler",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "center",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 0,
+          "y": 1
+        },
+        "id": 29,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "enablePagination": false,
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count ( label_replace( kepler_node_info{container=\"kepler\"}, \"zz_components_power_source\", \"$1\", \"components_power_source\", \"(.+)\") ) by (cpu_architecture, zz_components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Node - CPU Architecture & Power Source",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "Value": "Number of nodes",
+                "cpu_architecture": "CPU architecture",
+                "platform_power_source": "Platform Source",
+                "zz_components_power_source": "Component Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "description": "Total Energy Consumption (kWh) - Last 24 hours",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 12,
+          "y": 1
+        },
+        "id": 31,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "colorMode": "value",
+          "graphMode": "area",
+          "justifyMode": "center",
+          "orientation": "auto",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "values": false
+          },
+          "textMode": "auto"
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "expr": "kepler:kepler:container_joules_total:consumed:24h:all * $watt_per_second_to_kWh",
+            "refId": "A"
+          }
+        ],
+        "title": "Total Energy Consumption (kWh) - Last 24 hours",
+        "type": "stat"
+      },
+      {
+        "description": "Total Power Consumption for Top 10 Namespaces (kWh per day)",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 12,
+          "w": 24,
+          "x": 0,
+          "y": 8
+        },
+        "id": 18,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "displayMode": "gradient",
+          "minVizHeight": 10,
+          "minVizWidth": 0,
+          "orientation": "horizontal",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "limit": 10,
+            "values": true
+          },
+          "showUnfilled": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "topk(10, kepler:kepler:container_joules_total:consumed:24h:by_ns) * $watt_per_second_to_kWh",
+            "format": "table",
+            "instant": true,
+            "interval": "",
+            "legendFormat": "{{container_namespace}}",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Top 10 Energy Consuming Namespaces (kWh) in Last 24 hours",
+        "transformations": [
+          {
+            "id": "groupBy",
+            "options": {
+              "fields": {
+                "Value": {
+                  "aggregations": [
+                    "lastNotNull"
+                  ],
+                  "operation": "aggregate"
+                },
+                "container_namespace": {
+                  "aggregations": [],
+                  "operation": "groupby"
+                }
+              }
+            }
+          },
+          {
+            "id": "sortBy",
+            "options": {
+              "fields": {},
+              "sort": [
+                {
+                  "desc": true,
+                  "field": "Value (lastNotNull)"
+                }
+              ]
+            }
+          }
+        ],
+        "type": "bargauge"
+      },
+      {
+        "description": "Architecture, Component and Power source per Instance",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "auto",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                },
+                {
+                  "color": "red",
+                  "value": 80
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 35,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count (label_replace( kepler_node_info{container=\"kepler\"}, \"aa_instance\", \"$1\", \"instance\", \"(.+)\")) by (aa_instance, cpu_architecture, components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Detailed Node Information",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "Value": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "aa_instance": "Instance",
+                "components_power_source": "Component Power Source",
+                "cpu_architecture": "CPU Architecture",
+                "platform_power_source": "Platform Power Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 8,
+        "panels": [],
+        "title": "Power Consumption / Namespace",
+        "type": "row"
+      },
+      {
+        "description": "Total Power Consumption (W) in Namespace",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 0,
+          "y": 21
+        },
+        "id": 2,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom"
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Power Consumption (W) in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "Total Energy Consumption in Namespace (kWh) - Last 1 hour",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 12,
+          "y": 21
+        },
+        "id": 17,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom",
+            "sortBy": "Max",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG (CORE + UNCORE)",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_other_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_gpu_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Energy Consumption in $namespace (kWh) - Last 1 hour",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in PKG by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 29
+        },
+        "id": 16,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "PKG Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in DRAM by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 29
+        },
+        "id": 23,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "B"
+          }
+        ],
+        "title": "DRAM Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in OTHER by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 39
+        },
+        "id": 26,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "OTHER Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in GPU by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 39
+        },
+        "id": 27,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "GPU Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      }
+    ],
+    "refresh": "",
+    "schemaVersion": 36,
+    "style": "dark",
+    "tags": [],
+    "templating": {
+      "list": [
+        {
+          "current": {
+            "selected": true,
+            "text": "Prometheus",
+            "value": "Prometheus"
+          },
+          "hide": 0,
+          "includeAll": false,
+          "multi": false,
+          "name": "datasource",
+          "options": [],
+          "query": "prometheus",
+          "queryValue": "",
+          "refresh": 1,
+          "regex": ".*-(appstudio)-.*",
+          "skipUrlSync": false,
+          "type": "datasource"
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": false,
+            "text": "kepler-operator",
+            "value": "kepler-operator"
+          },
+          "definition": "label_values(kepler_container_package_joules_total, container_namespace)",
+          "description": "Namespace for pods to choose",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Namespace",
+          "multi": false,
+          "name": "namespace",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total, container_namespace)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": true,
+            "text": "All",
+            "value": "$__all"
+          },
+          "definition": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+          "description": "Number of pods inside namespace",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Pod",
+          "multi": false,
+          "name": "pod",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "description": "1W*s = 1J and 1J = (1/3600000)kWh",
+          "hide": 2,
+          "label": "",
+          "name": "watt_per_second_to_kWh",
+          "query": "0.000000277777777777778",
+          "skipUrlSync": false,
+          "type": "constant"
+        }
+      ]
+    },
+    "time": {
+      "from": "now-15m",
+      "to": "now"
+    },
+    "timepicker": {},
+    "timezone": "browser",
+    "title": "Kepler Exporter Dashboard",
+    "uid": "381ef848417532a1ef945494449453a41fdabaa7",
+    "version": 1,
+    "weekStart": ""
+  }
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..24d85e0f
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-power-monitoring
+    files:
+      - kepler.json 
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
<h3>4: Development changes from 77f99a39 to 0fbc74f0 on Fri Aug 30 15:54:48 2024 </h3>  
 
<details> 
<summary>Git Diff (1276 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 9ae3bac1..6aa6f3c6 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -14,6 +14,7 @@ resources:
 - performance/
 - pipeline-service/
 - generic-dashboards/
+- power-monitoring/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
new file mode 100644
index 00000000..1cff92fd
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-power-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-power-monitoring
+    key: kepler.json
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
new file mode 100644
index 00000000..edde47c9
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
@@ -0,0 +1,1224 @@
+{
+    "annotations": {
+      "list": [
+        {
+          "builtIn": 1,
+          "datasource": {
+            "type": "grafana",
+            "uid": "-- Grafana --"
+          },
+          "enable": true,
+          "hide": true,
+          "iconColor": "rgba(0, 211, 255, 1)",
+          "name": "Annotations & Alerts",
+          "target": {
+            "limit": 100,
+            "matchAny": false,
+            "tags": [],
+            "type": "dashboard"
+          },
+          "type": "dashboard"
+        }
+      ]
+    },
+    "description": "Dashboard for Kepler Exporter",
+    "editable": true,
+    "fiscalYearStartMonth": 0,
+    "graphTooltip": 0,
+    "id": 2,
+    "iteration": 1694154532971,
+    "links": [],
+    "liveNow": false,
+    "panels": [
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 0
+        },
+        "id": 33,
+        "panels": [],
+        "title": "Power Consumption / Overview",
+        "type": "row"
+      },
+      {
+        "description": "CPU architecture & Power source determined by Kepler",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "center",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 0,
+          "y": 1
+        },
+        "id": 29,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "enablePagination": false,
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count ( label_replace( kepler_node_info{container=\"kepler\"}, \"zz_components_power_source\", \"$1\", \"components_power_source\", \"(.+)\") ) by (cpu_architecture, zz_components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Node - CPU Architecture & Power Source",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "Value": "Number of nodes",
+                "cpu_architecture": "CPU architecture",
+                "platform_power_source": "Platform Source",
+                "zz_components_power_source": "Component Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "description": "Total Energy Consumption (kWh) - Last 24 hours",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 12,
+          "y": 1
+        },
+        "id": 31,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "colorMode": "value",
+          "graphMode": "area",
+          "justifyMode": "center",
+          "orientation": "auto",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "values": false
+          },
+          "textMode": "auto"
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "expr": "kepler:kepler:container_joules_total:consumed:24h:all * $watt_per_second_to_kWh",
+            "refId": "A"
+          }
+        ],
+        "title": "Total Energy Consumption (kWh) - Last 24 hours",
+        "type": "stat"
+      },
+      {
+        "description": "Total Power Consumption for Top 10 Namespaces (kWh per day)",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 12,
+          "w": 24,
+          "x": 0,
+          "y": 8
+        },
+        "id": 18,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "displayMode": "gradient",
+          "minVizHeight": 10,
+          "minVizWidth": 0,
+          "orientation": "horizontal",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "limit": 10,
+            "values": true
+          },
+          "showUnfilled": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "topk(10, kepler:kepler:container_joules_total:consumed:24h:by_ns) * $watt_per_second_to_kWh",
+            "format": "table",
+            "instant": true,
+            "interval": "",
+            "legendFormat": "{{container_namespace}}",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Top 10 Energy Consuming Namespaces (kWh) in Last 24 hours",
+        "transformations": [
+          {
+            "id": "groupBy",
+            "options": {
+              "fields": {
+                "Value": {
+                  "aggregations": [
+                    "lastNotNull"
+                  ],
+                  "operation": "aggregate"
+                },
+                "container_namespace": {
+                  "aggregations": [],
+                  "operation": "groupby"
+                }
+              }
+            }
+          },
+          {
+            "id": "sortBy",
+            "options": {
+              "fields": {},
+              "sort": [
+                {
+                  "desc": true,
+                  "field": "Value (lastNotNull)"
+                }
+              ]
+            }
+          }
+        ],
+        "type": "bargauge"
+      },
+      {
+        "description": "Architecture, Component and Power source per Instance",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "auto",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                },
+                {
+                  "color": "red",
+                  "value": 80
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 35,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count (label_replace( kepler_node_info{container=\"kepler\"}, \"aa_instance\", \"$1\", \"instance\", \"(.+)\")) by (aa_instance, cpu_architecture, components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Detailed Node Information",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "Value": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "aa_instance": "Instance",
+                "components_power_source": "Component Power Source",
+                "cpu_architecture": "CPU Architecture",
+                "platform_power_source": "Platform Power Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 8,
+        "panels": [],
+        "title": "Power Consumption / Namespace",
+        "type": "row"
+      },
+      {
+        "description": "Total Power Consumption (W) in Namespace",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 0,
+          "y": 21
+        },
+        "id": 2,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom"
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Power Consumption (W) in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "Total Energy Consumption in Namespace (kWh) - Last 1 hour",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 12,
+          "y": 21
+        },
+        "id": 17,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom",
+            "sortBy": "Max",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG (CORE + UNCORE)",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_other_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_gpu_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Energy Consumption in $namespace (kWh) - Last 1 hour",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in PKG by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 29
+        },
+        "id": 16,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "PKG Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in DRAM by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 29
+        },
+        "id": 23,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "B"
+          }
+        ],
+        "title": "DRAM Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in OTHER by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 39
+        },
+        "id": 26,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "OTHER Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in GPU by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 39
+        },
+        "id": 27,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "GPU Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      }
+    ],
+    "refresh": "",
+    "schemaVersion": 36,
+    "style": "dark",
+    "tags": [],
+    "templating": {
+      "list": [
+        {
+          "current": {
+            "selected": true,
+            "text": "Prometheus",
+            "value": "Prometheus"
+          },
+          "hide": 0,
+          "includeAll": false,
+          "multi": false,
+          "name": "datasource",
+          "options": [],
+          "query": "prometheus",
+          "queryValue": "",
+          "refresh": 1,
+          "regex": ".*-(appstudio)-.*",
+          "skipUrlSync": false,
+          "type": "datasource"
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": false,
+            "text": "kepler-operator",
+            "value": "kepler-operator"
+          },
+          "definition": "label_values(kepler_container_package_joules_total, container_namespace)",
+          "description": "Namespace for pods to choose",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Namespace",
+          "multi": false,
+          "name": "namespace",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total, container_namespace)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": true,
+            "text": "All",
+            "value": "$__all"
+          },
+          "definition": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+          "description": "Number of pods inside namespace",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Pod",
+          "multi": false,
+          "name": "pod",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "description": "1W*s = 1J and 1J = (1/3600000)kWh",
+          "hide": 2,
+          "label": "",
+          "name": "watt_per_second_to_kWh",
+          "query": "0.000000277777777777778",
+          "skipUrlSync": false,
+          "type": "constant"
+        }
+      ]
+    },
+    "time": {
+      "from": "now-15m",
+      "to": "now"
+    },
+    "timepicker": {},
+    "timezone": "browser",
+    "title": "Kepler Exporter Dashboard",
+    "uid": "381ef848417532a1ef945494449453a41fdabaa7",
+    "version": 1,
+    "weekStart": ""
+  }
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..24d85e0f
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-power-monitoring
+    files:
+      - kepler.json 
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
