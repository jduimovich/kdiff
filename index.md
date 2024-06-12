# kustomize changes tracked by commits 
### This file generated at Wed Jun 12 20:06:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c59b83c8 to 3e7ffee8 on Wed Jun 12 19:30:57 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index b183e62c..08ed1a23 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ resources:
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c59b83c8/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
985c985
<         image: quay.io/konflux-ci/image-controller:4375ea0fae7ba37b7ebc471a166bfc1790cc0745
---
>         image: quay.io/konflux-ci/image-controller:103df04d173a93937ca20c4c0baa8571242b28e2 
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
<h3>1: Staging changes from c59b83c8 to 3e7ffee8 on Wed Jun 12 19:30:57 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index b183e62c..08ed1a23 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ resources:
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
  
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
<h3>1: Development changes from c59b83c8 to 3e7ffee8 on Wed Jun 12 19:30:57 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index b183e62c..08ed1a23 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ resources:
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
+  newTag: 4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 namespace: image-controller
  
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
<h3>2: Production changes from b1481022 to c59b83c8 on Wed Jun 12 19:12:57 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index d5e05770..b183e62c 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (148 lines)</summary>  

``` 
./commit-b1481022/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
78,105d77
<               notifications:
<                 description: Notifications defines configuration for image repository
<                   notifications.
<                 items:
<                   properties:
<                     config:
<                       properties:
<                         email:
<                           description: Email is the email address to send notifications
<                             to.
<                           type: string
<                         url:
<                           description: Webhook is the URL to send notifications to.
<                           type: string
<                       type: object
<                     event:
<                       enum:
<                       - repo_push
<                       type: string
<                     method:
<                       enum:
<                       - email
<                       - webhook
<                       type: string
<                     title:
<                       type: string
<                   type: object
<                 type: array
118a91,95
>                   pull-remote-secret:
>                     description: PullRemoteSecretName is present only if ImageRepository
>                       has labels that connect it to Application and Component. Holds
>                       the name of the RemoteSecret object that manages pull Secret.
>                     type: string
132a110,114
>                   push-remote-secret:
>                     description: PushRemoteSecretName holds name of RemoteSecret object
>                       that manages push Secret and its linking to appstudio-pipeline
>                       Service Account.
>                     type: string
167,178d148
<               notifications:
<                 description: Notifications shows the status of the notifications configuration.
<                 items:
<                   description: NotificationStatus shows the status of the notification
<                     configuration.
<                   properties:
<                     title:
<                       type: string
<                     uuid:
<                       type: string
<                   type: object
<                 type: array
321,330d290
<   - ""
<   resources:
<   - serviceaccounts
<   verbs:
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
365a326,334
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - remotesecrets
>   verbs:
>   - create
>   - get
>   - list
>   - watch
573,593d541
<     def manifest_exists(quay_token: str, namespace: str, name: str, manifest: str) -> bool:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/manifest/{manifest}"
<         request = Request(api_url, headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         manifest_exists = True
<         try:
<             with urlopen(request) as resp:
<                 if resp.status != 200 and resp.status != 204:
<                     raise RuntimeError(resp.reason)
< 
<         except HTTPError as ex:
<             if ex.status != 404:
<                 raise(ex)
<             else:
<                 manifest_exists = False
< 
<         return manifest_exists
< 
< 
596d543
<         tags_map = {tag_info["name"]: tag_info for tag_info in tags}
598d544
<         manifests_checked = {}
603,629c549,553
<                     # verify that manifest really doesn't exist, because if tag was removed, it won't be in tag list, but may still be in the registry
<                     manifest_existence = manifests_checked.get(f"sha256:{match.group(1)}")
<                     if manifest_existence is None:
<                         manifest_existence = manifest_exists(quay_token, namespace, name, f"sha256:{match.group(1)}")
<                         manifests_checked[f"sha256:{match.group(1)}"] = manifest_existence
< 
<                     if not manifest_existence:
<                         if dry_run:
<                             LOGGER.info("Tag %s from %s/%s should be removed", tag["name"], namespace, name)
<                         else:
<                             LOGGER.info("Removing tag %s from %s/%s", tag["name"], namespace, name)
<                             delete_image_tag(quay_token, namespace, name, tag["name"])
< 
<             elif tag["name"].endswith(".src"):
<                 to_delete = False
< 
<                 binary_tag = tag["name"].removesuffix(".src")
<                 if binary_tag not in tags_map:
<                     to_delete = True
<                 else:
<                     manifest_digest = tags_map[binary_tag]["manifest_digest"]
<                     new_src_tag = f"{manifest_digest.replace(':', '-')}.src"
<                     to_delete = new_src_tag in tags_map
< 
<                 if to_delete:
<                     LOGGER.info("Removing deprecated tag %s", tag["name"])
<                     delete_image_tag(quay_token, namespace, name, tag["name"])
---
>                     if dry_run:
>                         LOGGER.info("Tag %s from %s/%s should be removed", tag["name"], namespace, name)
>                     else:
>                         LOGGER.info("Removing tag %s from %s/%s", tag["name"], namespace, name)
>                         delete_image_tag(quay_token, namespace, name, tag["name"])
631c555
<                 LOGGER.debug("%s is not in a known type to be deleted.", tag["name"])
---
>                 LOGGER.debug("%s is not an tag with suffix .att or .sbom", tag["name"])
699c623
<   name: image-controller-image-pruner-configmap-g7h295gd6b
---
>   name: image-controller-image-pruner-configmap-9b7d58f6g5
1099c1023
<               name: image-controller-image-pruner-configmap-g7h295gd6b
---
>               name: image-controller-image-pruner-configmap-9b7d58f6g5 
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
<h3>2: Staging changes from b1481022 to c59b83c8 on Wed Jun 12 19:12:57 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index d5e05770..b183e62c 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller 
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
<h3>2: Development changes from b1481022 to c59b83c8 on Wed Jun 12 19:12:57 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index d5e05770..b183e62c 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
+- https://github.com/konflux-ci/image-controller/config/default?ref=4375ea0fae7ba37b7ebc471a166bfc1790cc0745
 
 images:
 - name: quay.io/konflux-ci/image-controller 
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
<h3>3: Production changes from 78876780 to b1481022 on Wed Jun 12 15:54:54 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 016ac7c1..e680bc2e 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=758a1d48d0020e8d9356c63924507d970411ebea
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0e8aa0ad..829e27ed 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
+  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
 
 images:
   - name: quay.io/redhat-appstudio/release-service 
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
<h3>3: Staging changes from 78876780 to b1481022 on Wed Jun 12 15:54:54 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 016ac7c1..e680bc2e 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=758a1d48d0020e8d9356c63924507d970411ebea
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0e8aa0ad..829e27ed 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
+  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
 
 images:
   - name: quay.io/redhat-appstudio/release-service 
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
<h3>3: Development changes from 78876780 to b1481022 on Wed Jun 12 15:54:54 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 016ac7c1..e680bc2e 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=aaf11b05c47af248a392612700b87d29107479b2
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=758a1d48d0020e8d9356c63924507d970411ebea
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0e8aa0ad..829e27ed 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=aaf11b05c47af248a392612700b87d29107479b2
+  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
 
 images:
   - name: quay.io/redhat-appstudio/release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (479 lines)</summary>  

``` 
./commit-78876780/development/components/release/development/kustomize.out.yaml
12c12,13
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
39,43c40,42
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
46,51c45,47
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
156,164c152,159
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
167,169c162,165
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
173,175c169,170
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
179,182c174,178
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
187,191c183,187
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
205,210c201,205
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
244a240,245
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
250c251,252
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
276,280c278,280
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
283,288c283,285
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
305,307c302,304
<               pipeline:
<                 description: Pipeline contains all the information about the tenant
<                   Pipeline
---
>               pipelineRef:
>                 description: PipelineRef is an optional reference to a Pipeline that
>                   would be executed before the managed Release Pipeline
326,357c323,325
<                   pipelineRef:
<                     description: PipelineRef is the reference to the Pipeline
<                     properties:
<                       params:
<                         description: Params is a slice of parameters for a given resolver
<                         items:
<                           description: Param defines the parameters for a given resolver
<                             in PipelineRef
<                           properties:
<                             name:
<                               description: Name is the name of the parameter
<                               type: string
<                             value:
<                               description: Value is the value of the parameter
<                               type: string
<                           required:
<                           - name
<                           - value
<                           type: object
<                         type: array
<                       resolver:
<                         description: Resolver is the name of a Tekton resolver to
<                           be used (e.g. git)
<                         type: string
<                     required:
<                     - params
<                     - resolver
<                     type: object
<                   serviceAccountName:
<                     description: ServiceAccount is the ServiceAccount to use during
<                       the execution of the Pipeline
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
---
>                   resolver:
>                     description: Resolver is the name of a Tekton resolver to be used
>                       (e.g. git)
359,376d326
<                   timeouts:
<                     description: Timeouts defines the different Timeouts to use in
<                       the PipelineRun execution
<                     properties:
<                       finally:
<                         description: Finally sets the maximum allowed duration of
<                           this pipeline's finally
<                         type: string
<                       pipeline:
<                         description: Pipeline sets the maximum allowed duration for
<                           execution of the entire pipeline. The sum of individual
<                           timeouts for tasks and finally must not exceed this value.
<                         type: string
<                       tasks:
<                         description: Tasks sets the maximum allowed duration of this
<                           pipeline's tasks
<                         type: string
<                     type: object
378c328,329
<                 - pipelineRef
---
>                 - params
>                 - resolver
382,384c333,334
<                 description: |-
<                   ReleaseGracePeriodDays is the number of days a Release should be kept
<                   This value is used to define the Release ExpirationTime
---
>                 description: ReleaseGracePeriodDays is the number of days a Release
>                   should be kept This value is used to define the Release ExpirationTime
385a336,340
>               serviceAccount:
>                 description: ServiceAccount is the name of the service account to
>                   use in the Pipeline to gain elevated privileges
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
391a347
>             - target
401,409c357,364
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
412,414c367,370
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
418,420c374,375
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
424,427c379,383
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
432,436c388,392
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
450,455c406,410
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
468,470c423,424
<                 description: |-
<                   ReleasePlanAdmission contains the information of the releasePlanAdmission this ReleasePlan is
<                   matched to
---
>                 description: ReleasePlanAdmission contains the information of the
>                   releasePlanAdmission this ReleasePlan is matched to
485a440,445
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
491c451,452
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
523,527c484,486
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
530,535c489,491
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
548,550c504,505
<                 description: |-
<                   GracePeriodDays is the number of days a Release should be kept
<                   This value is used to define the Release ExpirationTime
---
>                 description: GracePeriodDays is the number of days a Release should
>                   be kept This value is used to define the Release ExpirationTime
567,571d521
<               artifacts:
<                 description: Artifacts is an unstructured key used for storing all
<                   the artifacts generated by the managed Release Pipeline
<                 type: object
<                 x-kubernetes-preserve-unknown-fields: true
598,606c548,555
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
609,611c558,561
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
615,617c565,566
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
621,624c570,574
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
629,633c579,583
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
647,652c597,601
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
697,699c646,648
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
---
>                     description: RoleBinding contains the namespaced name of the roleBinding
>                       created for the managed Release PipelineRun executed as part
>                       of this release
735a685,690
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
741c696,697
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
761,765c717,719
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
768,773c722,724
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
785,787c736,737
<                 description: |-
<                   Debug is the boolean that specifies whether or not the Release Service should run
<                   in debug mode
---
>                 description: Debug is the boolean that specifies whether or not the
>                   Release Service should run in debug mode
790,792c740,742
<                 description: |-
<                   DefaultTimeouts contain the default Tekton timeouts to be used in case they are
<                   not specified in the ReleasePlanAdmission resource.
---
>                 description: DefaultTimeouts contain the default Tekton timeouts to
>                   be used in case they are not specified in the ReleasePlanAdmission
>                   resource.
817a768,773
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
998a955
>   creationTimestamp: null
2010a1968
>   creationTimestamp: null
2096a2055
>   creationTimestamp: null 
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
<h3>4: Production changes from a0502729 to 78876780 on Wed Jun 12 08:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 67d693f4..bc578308 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -49,6 +49,35 @@ data:
   dynamic.linux-root-arm64.iops: "16000"
   dynamic.linux-root-arm64.throughput: "1000"
 
+
+  dynamic.linux-fast-amd64.type: aws
+  dynamic.linux-fast-amd64.region: us-east-1
+  dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
+  dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-fast-amd64.aws-secret: aws-account
+  dynamic.linux-fast-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-fast-amd64.max-instances: "10"
+  dynamic.linux-fast-amd64.disk: "200"
+  dynamic.linux-fast-amd64.iops: "16000"
+  dynamic.linux-fast-amd64.throughput: "1000"
+
+  dynamic.linux-extra-fast-amd64.type: aws
+  dynamic.linux-extra-fast-amd64.region: us-east-1
+  dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
+  dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-extra-fast-amd64.aws-secret: aws-account
+  dynamic.linux-extra-fast-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-extra-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-extra-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-extra-fast-amd64.max-instances: "10"
+  dynamic.linux-extra-fast-amd64.disk: "200"
+  dynamic.linux-extra-fast-amd64.iops: "16000"
+  dynamic.linux-extra-fast-amd64.throughput: "1000"
+
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-a0502729/production/components/multi-platform-controller/production/kustomize.out.yaml
148c148
<   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
169,194d168
<   dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-extra-fast-amd64.aws-secret: aws-account
<   dynamic.linux-extra-fast-amd64.disk: "200"
<   dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
<   dynamic.linux-extra-fast-amd64.iops: "16000"
<   dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-extra-fast-amd64.max-instances: "10"
<   dynamic.linux-extra-fast-amd64.region: us-east-1
<   dynamic.linux-extra-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-extra-fast-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-extra-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-extra-fast-amd64.throughput: "1000"
<   dynamic.linux-extra-fast-amd64.type: aws
<   dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-fast-amd64.aws-secret: aws-account
<   dynamic.linux-fast-amd64.disk: "200"
<   dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
<   dynamic.linux-fast-amd64.iops: "16000"
<   dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-fast-amd64.max-instances: "10"
<   dynamic.linux-fast-amd64.region: us-east-1
<   dynamic.linux-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-fast-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-fast-amd64.throughput: "1000"
<   dynamic.linux-fast-amd64.type: aws 
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
<h3>4: Staging changes from a0502729 to 78876780 on Wed Jun 12 08:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 67d693f4..bc578308 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -49,6 +49,35 @@ data:
   dynamic.linux-root-arm64.iops: "16000"
   dynamic.linux-root-arm64.throughput: "1000"
 
+
+  dynamic.linux-fast-amd64.type: aws
+  dynamic.linux-fast-amd64.region: us-east-1
+  dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
+  dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-fast-amd64.aws-secret: aws-account
+  dynamic.linux-fast-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-fast-amd64.max-instances: "10"
+  dynamic.linux-fast-amd64.disk: "200"
+  dynamic.linux-fast-amd64.iops: "16000"
+  dynamic.linux-fast-amd64.throughput: "1000"
+
+  dynamic.linux-extra-fast-amd64.type: aws
+  dynamic.linux-extra-fast-amd64.region: us-east-1
+  dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
+  dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-extra-fast-amd64.aws-secret: aws-account
+  dynamic.linux-extra-fast-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-extra-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-extra-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-extra-fast-amd64.max-instances: "10"
+  dynamic.linux-extra-fast-amd64.disk: "200"
+  dynamic.linux-extra-fast-amd64.iops: "16000"
+  dynamic.linux-extra-fast-amd64.throughput: "1000"
+
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2 
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
<h3>4: Development changes from a0502729 to 78876780 on Wed Jun 12 08:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 67d693f4..bc578308 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -49,6 +49,35 @@ data:
   dynamic.linux-root-arm64.iops: "16000"
   dynamic.linux-root-arm64.throughput: "1000"
 
+
+  dynamic.linux-fast-amd64.type: aws
+  dynamic.linux-fast-amd64.region: us-east-1
+  dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
+  dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-fast-amd64.aws-secret: aws-account
+  dynamic.linux-fast-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-fast-amd64.max-instances: "10"
+  dynamic.linux-fast-amd64.disk: "200"
+  dynamic.linux-fast-amd64.iops: "16000"
+  dynamic.linux-fast-amd64.throughput: "1000"
+
+  dynamic.linux-extra-fast-amd64.type: aws
+  dynamic.linux-extra-fast-amd64.region: us-east-1
+  dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
+  dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-extra-fast-amd64.aws-secret: aws-account
+  dynamic.linux-extra-fast-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-extra-fast-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-extra-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-extra-fast-amd64.max-instances: "10"
+  dynamic.linux-extra-fast-amd64.disk: "200"
+  dynamic.linux-extra-fast-amd64.iops: "16000"
+  dynamic.linux-extra-fast-amd64.throughput: "1000"
+
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2 
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
