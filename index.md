# kustomize changes tracked by commits 
### This file generated at Mon May 13 16:07:54 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2ae512e6 to 3377ae9e on Mon May 13 15:29:58 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index ccd456e5..498dadb6 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
+  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (102 lines)</summary>  

``` 
./commit-2ae512e6/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
487,488c487,491
<     def get_quay_tags(quay_token: str, namespace: str, name: str) -> List[ImageRepo]:
<         next_page = None
---
>     def get_quay_repo(quay_token: str, namespace: str, name: str) -> ImageRepo:
>         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}"
>         request = Request(api_url, headers={
>             "Authorization": f"Bearer {quay_token}",
>         })
490,501c493
< 
<         all_tags = []
<         while True:
<             query_args = {"limit": 100, "onlyActiveTags": True}
<             if next_page is not None:
<                 query_args["page"] = next_page
< 
<             api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/?{urlencode(query_args)}"
<             request = Request(api_url, headers={
<                 "Authorization": f"Bearer {quay_token}",
<             })
< 
---
>         try:
505,512c497
<                 json_data = json.loads(resp.read())
< 
<             tags = json_data.get("tags", [])
<             all_tags.extend(tags)
< 
<             if not tags:
<                 LOGGER.debug("No tags found.")
<                 break
---
>                 return json.loads(resp.read())
514,518c499,502
<             page = json_data.get("page", None)
<             additional = json_data.get("has_additional", False)
< 
<             if additional:
<                 next_page = page + 1
---
>         except HTTPError as ex:
>             # ignore if not found
>             if ex.status != 404:
>                 raise(ex)
520,522c504
<                 break
< 
<         return all_tags
---
>                 return {}
542,543c524,525
<     def remove_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
<         image_digests = [image["manifest_digest"] for image in tags]
---
>     def remove_tags(tags: Dict[str, Any], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
>         image_digests = [image["manifest_digest"] for image in tags.values()]
547c529
<             if (match := tag_regex.match(tag["name"])) is not None:
---
>             if (match := tag_regex.match(tag)) is not None:
550c532
<                         LOGGER.info("Tag %s from %s/%s should be removed", tag["name"], namespace, name)
---
>                         LOGGER.info("Image %s from %s/%s should be removed", tag, namespace, name)
552,553c534,535
<                         LOGGER.info("Removing tag %s from %s/%s", tag["name"], namespace, name)
<                         delete_image_tag(quay_token, namespace, name, tag["name"])
---
>                         LOGGER.info("Removing image %s from %s/%s", tag, namespace, name)
>                         delete_image_tag(quay_token, namespace, name, tag)
555c537
<                 LOGGER.debug("%s is not an tag with suffix .att or .sbom", tag["name"])
---
>                 LOGGER.debug("%s is not an image with suffix .att or .sbom", tag)
563c545
<             all_tags = get_quay_tags(quay_token, namespace, name)
---
>             repo_info = get_quay_repo(quay_token, namespace, name)
565c547
<             if not all_tags:
---
>             if not repo_info:
568c550,551
<             remove_tags(all_tags, quay_token, namespace, name, dry_run=dry_run)
---
>             if (tags := repo_info.get("tags")) is not None:
>                 remove_tags(tags, quay_token, namespace, name, dry_run=dry_run)
623c606
<   name: image-controller-image-pruner-configmap-9b7d58f6g5
---
>   name: image-controller-image-pruner-configmap-dgh4mm9256
909c892
<         image: quay.io/redhat-appstudio/image-controller:8bf9b5eb11f41ecbca1fc5131f803744c519f826
---
>         image: quay.io/redhat-appstudio/image-controller:e5a29db5772c85b84d3246597e5b39f229d2925a
1023c1006
<               name: image-controller-image-pruner-configmap-9b7d58f6g5
---
>               name: image-controller-image-pruner-configmap-dgh4mm9256 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 2ae512e6 to 3377ae9e on Mon May 13 15:29:58 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index ccd456e5..498dadb6 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
+  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 2ae512e6 to 3377ae9e on Mon May 13 15:29:58 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index ccd456e5..498dadb6 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
+  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 0bfa2e61 to 2ae512e6 on Mon May 13 13:53:07 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/integration/README.md b/components/integration/README.md
index 5bc0a0d3..e778633f 100644
--- a/components/integration/README.md
+++ b/components/integration/README.md
@@ -22,4 +22,4 @@ resources:
 * [Integration Service Architecture](https://github.com/redhat-appstudio/book/blob/main/diagrams/integration-service/integration-service-data-flow.jpg)
 * [Book of RHTAP](https://redhat-appstudio.github.io/book/book/integration-service.html)
 * [API](https://redhat-appstudio.github.io/book/ref/integration-service.html)
-* [Integration Service GitHub Organization](https://github.com/redhat-appstudio/integration-service/)
+* [Integration Service GitHub Organization](https://github.com/konflux-ci/integration-service/)
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ae759bcb..3b6aaf7c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 9ff866c0..1aa18c68 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 11af4b1b..49861db3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 0076bab6..303a433d 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  - https://github.com/konflux-ci/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
diff --git a/hack/preview.sh b/hack/preview.sh
index 2b06a836..7db495d2 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -187,7 +187,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
-[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
+[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 0bfa2e61 to 2ae512e6 on Mon May 13 13:53:07 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/integration/README.md b/components/integration/README.md
index 5bc0a0d3..e778633f 100644
--- a/components/integration/README.md
+++ b/components/integration/README.md
@@ -22,4 +22,4 @@ resources:
 * [Integration Service Architecture](https://github.com/redhat-appstudio/book/blob/main/diagrams/integration-service/integration-service-data-flow.jpg)
 * [Book of RHTAP](https://redhat-appstudio.github.io/book/book/integration-service.html)
 * [API](https://redhat-appstudio.github.io/book/ref/integration-service.html)
-* [Integration Service GitHub Organization](https://github.com/redhat-appstudio/integration-service/)
+* [Integration Service GitHub Organization](https://github.com/konflux-ci/integration-service/)
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ae759bcb..3b6aaf7c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 9ff866c0..1aa18c68 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 11af4b1b..49861db3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 0076bab6..303a433d 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  - https://github.com/konflux-ci/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
diff --git a/hack/preview.sh b/hack/preview.sh
index 2b06a836..7db495d2 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -187,7 +187,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
-[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
+[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml 
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
<h3>2: Development changes from 0bfa2e61 to 2ae512e6 on Mon May 13 13:53:07 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/integration/README.md b/components/integration/README.md
index 5bc0a0d3..e778633f 100644
--- a/components/integration/README.md
+++ b/components/integration/README.md
@@ -22,4 +22,4 @@ resources:
 * [Integration Service Architecture](https://github.com/redhat-appstudio/book/blob/main/diagrams/integration-service/integration-service-data-flow.jpg)
 * [Book of RHTAP](https://redhat-appstudio.github.io/book/book/integration-service.html)
 * [API](https://redhat-appstudio.github.io/book/ref/integration-service.html)
-* [Integration Service GitHub Organization](https://github.com/redhat-appstudio/integration-service/)
+* [Integration Service GitHub Organization](https://github.com/konflux-ci/integration-service/)
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ae759bcb..3b6aaf7c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 9ff866c0..1aa18c68 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 11af4b1b..49861db3 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/default?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=e21bfe97779abdab5a936d610fe23dc809e7ffec
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 0076bab6..303a433d 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  - https://github.com/konflux-ci/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
diff --git a/hack/preview.sh b/hack/preview.sh
index 2b06a836..7db495d2 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -187,7 +187,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
-[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
+[[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
 [ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 572ba86f to 0bfa2e61 on Mon May 13 12:32:40 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4c6f6326..21484446 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -12,6 +12,12 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
   - ../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3428b6be..4cfe32dd 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -14,6 +14,12 @@ resources:
   - ../../base/testing
   - ../../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   # - path: scale-down-exporter.yaml
   #   target:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index dcbbf3bc..e6818a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -14,6 +14,12 @@ resources:
   - ../../base/testing
   - ../../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 572ba86f to 0bfa2e61 on Mon May 13 12:32:40 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4c6f6326..21484446 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -12,6 +12,12 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
   - ../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3428b6be..4cfe32dd 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -14,6 +14,12 @@ resources:
   - ../../base/testing
   - ../../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   # - path: scale-down-exporter.yaml
   #   target:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index dcbbf3bc..e6818a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -14,6 +14,12 @@ resources:
   - ../../base/testing
   - ../../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target: 
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
<h3>3: Development changes from 572ba86f to 0bfa2e61 on Mon May 13 12:32:40 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4c6f6326..21484446 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -12,6 +12,12 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
   - ../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3428b6be..4cfe32dd 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -14,6 +14,12 @@ resources:
   - ../../base/testing
   - ../../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   # - path: scale-down-exporter.yaml
   #   target:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index dcbbf3bc..e6818a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -14,6 +14,12 @@ resources:
   - ../../base/testing
   - ../../base/rbac
 
+images:
+  - name: quay.io/redhat-appstudio/tekton-results-api
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+  - name: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from c3722aae to 572ba86f on Mon May 13 10:53:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index a5e6e732..18db12b5 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -1435,7 +1435,7 @@ spec:
     users:
       - credentials:
           - type: password
-            value: user1
+            value: user2
         email: user1@user.us
         emailVerified: true
         enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c3722aae/production/components/dev-sso/kustomize.out.yaml
1460c1460
<         value: user2
---
>         value: user1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c3722aae to 572ba86f on Mon May 13 10:53:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index a5e6e732..18db12b5 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -1435,7 +1435,7 @@ spec:
     users:
       - credentials:
           - type: password
-            value: user1
+            value: user2
         email: user1@user.us
         emailVerified: true
         enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c3722aae/staging/components/dev-sso/kustomize.out.yaml
1460c1460
<         value: user2
---
>         value: user1 
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
<h3>4: Development changes from c3722aae to 572ba86f on Mon May 13 10:53:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index a5e6e732..18db12b5 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -1435,7 +1435,7 @@ spec:
     users:
       - credentials:
           - type: password
-            value: user1
+            value: user2
         email: user1@user.us
         emailVerified: true
         enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c3722aae/development/components/dev-sso/kustomize.out.yaml
1460c1460
<         value: user2
---
>         value: user1 
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
```
 
</details> 
<br> 


</div>
