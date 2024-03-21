# kustomize changes tracked by commits 
### This file generated at Thu Mar 21 16:06:16 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f502561d to e07712cb on Thu Mar 21 14:47:37 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 945c417d..50ac1661 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9751e5af..1d3f5405 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
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
<h3>1: Staging changes from f502561d to e07712cb on Thu Mar 21 14:47:37 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 945c417d..50ac1661 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9751e5af..1d3f5405 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-f502561d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
684c684
<         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213
---
>         image: quay.io/redhat-appstudio/build-service:29b09e5d8350f75c92d5796fbbf62647fe28610b
701c701
<             memory: 512Mi
---
>             memory: 256Mi 
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
<h3>1: Development changes from f502561d to e07712cb on Thu Mar 21 14:47:37 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 945c417d..50ac1661 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9751e5af..1d3f5405 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-f502561d/development/components/build-service/development/kustomize.out.yaml
689c689
<         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213
---
>         image: quay.io/redhat-appstudio/build-service:29b09e5d8350f75c92d5796fbbf62647fe28610b
706c706
<             memory: 512Mi
---
>             memory: 256Mi 
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
<h3>2: Production changes from c96989f2 to f502561d on Thu Mar 21 12:44:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 7094d370..38fba437 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
+  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (189 lines)</summary>  

``` 
./commit-c96989f2/production/components/image-controller/production/kustomize.out.yaml
462,464d461
<     import itertools
<     import json
<     import logging
465a463
>     import logging
467,472c465
< 
<     from collections.abc import Iterator
<     from http.client import HTTPResponse
<     from typing import Any, Dict, List
<     from urllib.parse import urlencode
<     from urllib.request import Request, urlopen
---
>     import requests
480,481c473
<     processed_repos_counter = itertools.count()
< 
---
>     PROCESSED_REPOS = 0
483d474
<     ImageRepo = Dict[str, Any]
485,515c476,482
< 
<     def get_quay_repo(quay_token: str, namespace: str, name: str) -> ImageRepo:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}"
<         request = Request(api_url, headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         with urlopen(request) as resp:
<             if resp.status != 200:
<                 raise RuntimeError(resp.reason)
<             return json.loads(resp.read())
< 
< 
<     def delete_image_tag(quay_token: str, namespace: str, name: str, tag: str) -> None:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/{tag}"
<         request = Request(api_url, method="DELETE", headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         with urlopen(request) as resp:
<             if resp.status != 200 and resp.status != 204:
<                 raise RuntimeError(resp.reason)
< 
< 
<     def remove_tags(tags: Dict[str, Any], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
<         image_digests = [image["manifest_digest"] for image in tags.values()]
<         tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src)$")
<         for tag in tags:
<             # attestation or sbom image
<             if (match := tag_regex.match(tag)) is not None:
<                 if f"sha256:{match.group(1)}" not in image_digests:
---
>     def remove_images(images, session, repository, dry_run=False):
>         image_digests = [image["manifest_digest"] for image in images.values()]
>         for image in images:
>             # attribute or sbom image
>             if image.endswith(".att") or image.endswith(".sbom"):
>                 sha = re.search("sha256-(.*)(.sbom|.att)", image).group(1)
>                 if f"sha256:{sha}" not in image_digests:
517c484
<                         LOGGER.info("Image %s from %s/%s should be removed", tag, namespace, name)
---
>                         LOGGER.info("Image %s from %s should be removed", image, repository)
519,561c486,510
<                         LOGGER.info("Removing image %s from %s/%s", tag, namespace, name)
<                         delete_image_tag(quay_token, namespace, name, tag)
<             else:
<                 LOGGER.debug("%s is not an image with suffix .att or .sbom", tag)
< 
< 
<     def process_repositories(repos: List[ImageRepo], quay_token: str, dry_run: bool = False) -> None:
<         for repo in repos:
<             namespace = repo["namespace"]
<             name = repo["name"]
<             LOGGER.info("Processing repository %s: %s/%s", next(processed_repos_counter), namespace, name)
<             repo_info = get_quay_repo(quay_token, namespace, name)
<             if (tags := repo_info.get("tags")) is not None:
<                 remove_tags(tags, quay_token, namespace, name, dry_run=dry_run)
< 
< 
<     def fetch_image_repos(access_token: str, namespace: str) -> Iterator[List[ImageRepo]]:
<         next_page = None
<         resp: HTTPResponse
<         while True:
<             query_args = {"namespace": namespace}
<             if next_page is not None:
<                 query_args["next_page"] = next_page
< 
<             api_url = f"{QUAY_API_URL}/repository?{urlencode(query_args)}"
<             request = Request(api_url, headers={
<                 "Authorization": f"Bearer {access_token}",
<             })
< 
<             with urlopen(request) as resp:
<                 if resp.status != 200:
<                     raise RuntimeError(resp.reason)
<                 json_data = json.loads(resp.read())
< 
<             repos = json_data.get("repositories", [])
<             if not repos:
<                 LOGGER.debug("No image repository is found.")
<                 break
< 
<             yield repos
< 
<             if (next_page := json_data.get("next_page", None)) is None:
<                 break
---
>                         LOGGER.info("Removing image %s from %s", image, repository)
>                         delete_image_endpoint = (
>                             f"{QUAY_API_URL}/repository/{repository}/tag/{image}"
>                         )
>                         response = session.delete(delete_image_endpoint)
>                         response.raise_for_status()
> 
> 
>     def process_repositories(repositories, session, dry_run=False):
>         global PROCESSED_REPOS
> 
>         for repo in repositories:
>             repository = f"{repo['namespace']}/{repo['name']}"
> 
>             PROCESSED_REPOS += 1
>             LOGGER.info("Processing repository %s: %s", PROCESSED_REPOS, repository)
> 
>             repository_endpoint = f"{QUAY_API_URL}/repository/{repository}"
>             response = session.get(repository_endpoint)
>             response.raise_for_status()
>             repository_json = response.json()
> 
>             images = repository_json.get("tags")
>             if images:
>                 remove_images(images, session, repository, dry_run=dry_run)
571,572c520,542
<         for image_repos in fetch_image_repos(token, args.namespace):
<             process_repositories(image_repos, token, dry_run=args.dry_run)
---
>         session = requests.Session()
>         session.headers = {"Authorization": f"Bearer {token}"}
>         session.params = {"namespace": args.namespace}
>         repositories_endpoint = f"{QUAY_API_URL}/repository"
> 
>         response = session.get(repositories_endpoint)
>         response.raise_for_status()
>         resp_json = response.json()
> 
>         repositories = resp_json.get("repositories")
>         next_page = resp_json.get("next_page")
> 
>         if repositories:
>             process_repositories(repositories, session, dry_run=args.dry_run)
> 
>         while next_page:
>             response = session.get(repositories_endpoint, params={"next_page": next_page})
>             response.raise_for_status()
>             resp_json = response.json()
> 
>             repositories = resp_json.get("repositories")
>             next_page = resp_json.get("next_page")
>             process_repositories(repositories, session, dry_run=args.dry_run)
584a555
>   requirements.txt: requests
587c558
<   name: image-controller-image-pruner-configmap-h7dftck666
---
>   name: image-controller-image-pruner-configmap-8d96cbt85m
668c639
<         image: quay.io/redhat-appstudio/image-controller:143d709ff49d94e2b7f489da2fdb9708d38f466c
---
>         image: quay.io/redhat-appstudio/image-controller:88e3b1cede3a4cb6871b75d92bd4da408122d991
737a709,710
>   annotations:
>     ignore-check.kube-linter.io/no-read-only-root-fs: image pruner writes to disk
750c723,724
<             - python /image-pruner/prune_images.py --namespace $(NAMESPACE)
---
>             - pip install -r /image-pruner/requirements.txt && python /image-pruner/prune_images.py
>               --namespace $(NAMESPACE)
772,773d745
<             securityContext:
<               readOnlyRootFilesystem: true
782c754
<               name: image-controller-image-pruner-configmap-h7dftck666
---
>               name: image-controller-image-pruner-configmap-8d96cbt85m 
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
<h3>2: Staging changes from c96989f2 to f502561d on Thu Mar 21 12:44:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 7094d370..38fba437 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
+  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c96989f2 to f502561d on Thu Mar 21 12:44:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 7094d370..38fba437 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
+  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 49c63616 to c96989f2 on Thu Mar 21 09:58:39 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 0fce2b32..22dc7187 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../staging
+  - ../konflux-public-staging
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index f4d7d6c3..e34383c3 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -1,7 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: argocd-staging
 resources:
-  - ../staging
+  - ../konflux-public-staging
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
deleted file mode 100644
index aa17ccbc..00000000
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/host
-  - ../../base/member
-  - ../../base/all-clusters
-patches:
-  - path: migration.patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
diff --git a/argo-cd-apps/overlays/staging/migration.patch.yaml b/argo-cd-apps/overlays/staging/migration.patch.yaml
deleted file mode 100644
index a60ffc01..00000000
--- a/argo-cd-apps/overlays/staging/migration.patch.yaml
+++ /dev/null
@@ -1,2 +0,0 @@
-- op: remove
-  path: /spec/template/spec/syncPolicy 
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
<h3>3: Staging changes from 49c63616 to c96989f2 on Thu Mar 21 09:58:39 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 0fce2b32..22dc7187 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../staging
+  - ../konflux-public-staging
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index f4d7d6c3..e34383c3 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -1,7 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: argocd-staging
 resources:
-  - ../staging
+  - ../konflux-public-staging
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
deleted file mode 100644
index aa17ccbc..00000000
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/host
-  - ../../base/member
-  - ../../base/all-clusters
-patches:
-  - path: migration.patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
diff --git a/argo-cd-apps/overlays/staging/migration.patch.yaml b/argo-cd-apps/overlays/staging/migration.patch.yaml
deleted file mode 100644
index a60ffc01..00000000
--- a/argo-cd-apps/overlays/staging/migration.patch.yaml
+++ /dev/null
@@ -1,2 +0,0 @@
-- op: remove
-  path: /spec/template/spec/syncPolicy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1246 lines)</summary>  

``` 
./commit-49c63616/staging/app-of-apps-staging.yaml
0a1,1244
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: application-api
>   namespace: argocd-staging
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: application-api-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-api
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/application-api
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: authentication
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/authentication
>       - list:
>           elements:
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: authentication-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: backup
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             environment: staging
>             sourceRoot: components/backup
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: backup-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{nameNormalized}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: build-service
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/build-service
>       - list:
>           elements:
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: build-templates
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/build-templates
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-templates-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       ignoreDifferences:
>       - group: ""
>         jqPathExpressions:
>         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
>         kind: ServiceAccount
>         name: appstudio-pipeline
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: cluster-secret-store
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/cluster-secret-store
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: cluster-secret-store-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: disable-csvcopy
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: configs/disable-csvcopy-for-all-cluster
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: disable-csvcopy-{{nameNormalized}}
>     spec:
>       destination:
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/disable-csvcopy-for-all-cluster
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: dora-metrics
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/dora-metrics
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: dora-metrics-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: dora-metrics
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: enable-dvo
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: configs/enable-dvo-for-all-cluster
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: enable-dvo-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: deployment-validation-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/enable-dvo-for-all-cluster
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: enterprise-contract
>   namespace: argocd-staging
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: enterprise-contract-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: enterprise-contract-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/enterprise-contract
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: external-secrets-operator
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/external-secrets-operator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: external-secrets-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: external-secrets-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: gitops
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/gitops
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: gitops-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: gitops
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: has
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/has
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: has-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: image-controller
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/image-controller
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: image-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: ingresscontroller
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: ""
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: ingresscontroller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: openshift-ingress-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/ingresscontroller
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: integration
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/integration
>       - list:
>           elements:
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: integration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: integration-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: internal-services
>   namespace: argocd-staging
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: internal-services-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: internal-services
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/internal-services
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: jvm-build-service
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/jvm-build-service
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: jvm-build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: monitoring-workload-grafana
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/monitoring/grafana
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-grafana-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-grafana
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: monitoring-workload-logging
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/monitoring/logging
>       - list:
>           elements:
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-logging-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-workload-monitoring
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: monitoring-workload-prometheus
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/monitoring/prometheus
>       - list:
>           elements:
>           - nameNormalized: stone-stg-host
>             values.clusterDir: stone-stg-host
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-host1
>             values.clusterDir: stone-prd-host1
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-prometheus-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-workload-monitoring
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: multi-platform-controller
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/multi-platform-controller
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: multi-platform-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: perf-team-prometheus-reader
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/perf-team-prometheus-reader
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: perf-team-prometheus-reader-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: perf-team-prometheus-reader
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: pipeline-service
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/pipeline-service
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: pipeline-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: release
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/release
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: release-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: release-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: remote-secret-controller
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/remote-secret-controller/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: remote-secret-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: remotesecret
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: segment-bridge-host
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/segment-bridge
>       - list:
>           elements:
>           - nameNormalized: stone-stg-host
>             values.clusterDir: stone-stg-host
>           - nameNormalized: stone-prd-host1
>             values.clusterDir: stone-prd-host1
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: segment-bridge-host-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: segment-bridge
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: segment-bridge-member
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/segment-bridge
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: segment-bridge-member-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: segment-bridge
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: smee
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/smee
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: smee-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: smee
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: spi
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: staging
>             sourceRoot: components/spi/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: spi-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: spi-system
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: sprayproxy
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/sprayproxy
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: sprayproxy-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: sprayproxy
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: toolchain-host-operator
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/sandbox/toolchain-host-operator
>       - list:
>           elements:
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-stg-host
>             values.clusterDir: stone-stg-host
>           - nameNormalized: stone-prd-host1
>             values.clusterDir: stone-prd-host1
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: toolchain-host-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: toolchain-host-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: toolchain-member-operator
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/sandbox/toolchain-member-operator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: toolchain-member-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: toolchain-member-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main 
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
<h3>3: Development changes from 49c63616 to c96989f2 on Thu Mar 21 09:58:39 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 0fce2b32..22dc7187 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../staging
+  - ../konflux-public-staging
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index f4d7d6c3..e34383c3 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -1,7 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: argocd-staging
 resources:
-  - ../staging
+  - ../konflux-public-staging
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging/kustomization.yaml b/argo-cd-apps/overlays/staging/kustomization.yaml
deleted file mode 100644
index aa17ccbc..00000000
--- a/argo-cd-apps/overlays/staging/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/host
-  - ../../base/member
-  - ../../base/all-clusters
-patches:
-  - path: migration.patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
diff --git a/argo-cd-apps/overlays/staging/migration.patch.yaml b/argo-cd-apps/overlays/staging/migration.patch.yaml
deleted file mode 100644
index a60ffc01..00000000
--- a/argo-cd-apps/overlays/staging/migration.patch.yaml
+++ /dev/null
@@ -1,2 +0,0 @@
-- op: remove
-  path: /spec/template/spec/syncPolicy 
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
<h3>4: Production changes from 9e40caaa to 49c63616 on Thu Mar 21 07:38:35 2024 </h3>  
 
<details> 
<summary>Git Diff (328 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
new file mode 100644
index 00000000..60103775
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: hugares
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index c6a0f35a..ad6c92c2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
+- hugares.yaml
 - mjobanek.yaml
 - pdave.yaml
 - ralphbean.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
new file mode 100644
index 00000000..73038f03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
new file mode 100644
index 00000000..ee680784
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
new file mode 100644
index 00000000..82164f79
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
new file mode 100644
index 00000000..c6f0676c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index ff5d860f..fce428df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - approve-user-ergonzal-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
+- approve-user-hugares-host.yaml
 - approve-user-mjobanek-host.yaml
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
@@ -29,6 +30,7 @@ resources:
 - clusterrole-view-ergonzal-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
+- clusterrole-view-hugares-host.yaml
 - clusterrole-view-mjobanek-host.yaml
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
@@ -38,16 +40,19 @@ resources:
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bsutter-host.yaml
 - deactivate-user-fmuntean-host.yaml
+- deactivate-user-hugares-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
+- gdpr-delete-hugares-host.yaml
 - gdpr-delete-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
 - promote-user-fmuntean-host.yaml
+- promote-user-hugares-host.yaml
 - promote-user-mjobanek-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-fmuntean-host.yaml
@@ -59,6 +64,7 @@ resources:
 - retarget-user-ergonzal-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
+- retarget-user-hugares-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
new file mode 100644
index 00000000..5f95416d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
new file mode 100644
index 00000000..2ad0446f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
new file mode 100644
index 00000000..406822b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: hugares
+  name: hugares
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index c6a0f35a..ad6c92c2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
+- hugares.yaml
 - mjobanek.yaml
 - pdave.yaml
 - ralphbean.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
new file mode 100644
index 00000000..88a7492f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-hugares-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 4a33f24c..240d1b60 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - clusterrole-view-ergonzal-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
+- clusterrole-view-hugares-member.yaml
 - clusterrole-view-mjobanek-member.yaml
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index 846ac07c..8cc2cff5 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -139,6 +139,24 @@ serviceAccounts:
       clusterRoles:
       - view
 
+- name: hugares
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
 - name: bcook
   host:
     roleBindings: 
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
<h3>4: Staging changes from 9e40caaa to 49c63616 on Thu Mar 21 07:38:35 2024 </h3>  
 
<details> 
<summary>Git Diff (328 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
new file mode 100644
index 00000000..60103775
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: hugares
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index c6a0f35a..ad6c92c2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
+- hugares.yaml
 - mjobanek.yaml
 - pdave.yaml
 - ralphbean.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
new file mode 100644
index 00000000..73038f03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
new file mode 100644
index 00000000..ee680784
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
new file mode 100644
index 00000000..82164f79
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
new file mode 100644
index 00000000..c6f0676c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index ff5d860f..fce428df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - approve-user-ergonzal-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
+- approve-user-hugares-host.yaml
 - approve-user-mjobanek-host.yaml
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
@@ -29,6 +30,7 @@ resources:
 - clusterrole-view-ergonzal-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
+- clusterrole-view-hugares-host.yaml
 - clusterrole-view-mjobanek-host.yaml
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
@@ -38,16 +40,19 @@ resources:
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bsutter-host.yaml
 - deactivate-user-fmuntean-host.yaml
+- deactivate-user-hugares-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
+- gdpr-delete-hugares-host.yaml
 - gdpr-delete-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
 - promote-user-fmuntean-host.yaml
+- promote-user-hugares-host.yaml
 - promote-user-mjobanek-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-fmuntean-host.yaml
@@ -59,6 +64,7 @@ resources:
 - retarget-user-ergonzal-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
+- retarget-user-hugares-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
new file mode 100644
index 00000000..5f95416d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
new file mode 100644
index 00000000..2ad0446f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
new file mode 100644
index 00000000..406822b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: hugares
+  name: hugares
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index c6a0f35a..ad6c92c2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
+- hugares.yaml
 - mjobanek.yaml
 - pdave.yaml
 - ralphbean.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
new file mode 100644
index 00000000..88a7492f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-hugares-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 4a33f24c..240d1b60 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - clusterrole-view-ergonzal-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
+- clusterrole-view-hugares-member.yaml
 - clusterrole-view-mjobanek-member.yaml
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index 846ac07c..8cc2cff5 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -139,6 +139,24 @@ serviceAccounts:
       clusterRoles:
       - view
 
+- name: hugares
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
 - name: bcook
   host:
     roleBindings: 
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
<h3>4: Development changes from 9e40caaa to 49c63616 on Thu Mar 21 07:38:35 2024 </h3>  
 
<details> 
<summary>Git Diff (328 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
new file mode 100644
index 00000000..60103775
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: hugares
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index c6a0f35a..ad6c92c2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
+- hugares.yaml
 - mjobanek.yaml
 - pdave.yaml
 - ralphbean.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
new file mode 100644
index 00000000..73038f03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
new file mode 100644
index 00000000..ee680784
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
new file mode 100644
index 00000000..82164f79
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
new file mode 100644
index 00000000..c6f0676c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index ff5d860f..fce428df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - approve-user-ergonzal-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
+- approve-user-hugares-host.yaml
 - approve-user-mjobanek-host.yaml
 - approve-user-pdave-host.yaml
 - approve-user-ralphbean-host.yaml
@@ -29,6 +30,7 @@ resources:
 - clusterrole-view-ergonzal-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
+- clusterrole-view-hugares-host.yaml
 - clusterrole-view-mjobanek-host.yaml
 - clusterrole-view-pdave-host.yaml
 - clusterrole-view-ralphbean-host.yaml
@@ -38,16 +40,19 @@ resources:
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bsutter-host.yaml
 - deactivate-user-fmuntean-host.yaml
+- deactivate-user-hugares-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - gdpr-delete-alkazako-host.yaml
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
+- gdpr-delete-hugares-host.yaml
 - gdpr-delete-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
 - promote-user-fmuntean-host.yaml
+- promote-user-hugares-host.yaml
 - promote-user-mjobanek-host.yaml
 - restart-deployment-alkazako-host.yaml
 - restart-deployment-fmuntean-host.yaml
@@ -59,6 +64,7 @@ resources:
 - retarget-user-ergonzal-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
+- retarget-user-hugares-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
new file mode 100644
index 00000000..5f95416d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
new file mode 100644
index 00000000..2ad0446f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-hugares-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
new file mode 100644
index 00000000..406822b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: hugares
+  name: hugares
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index c6a0f35a..ad6c92c2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
+- hugares.yaml
 - mjobanek.yaml
 - pdave.yaml
 - ralphbean.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
new file mode 100644
index 00000000..88a7492f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-hugares-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: hugares
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 4a33f24c..240d1b60 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -13,6 +13,7 @@ resources:
 - clusterrole-view-ergonzal-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
+- clusterrole-view-hugares-member.yaml
 - clusterrole-view-mjobanek-member.yaml
 - clusterrole-view-pdave-member.yaml
 - clusterrole-view-ralphbean-member.yaml
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index 846ac07c..8cc2cff5 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -139,6 +139,24 @@ serviceAccounts:
       clusterRoles:
       - view
 
+- name: hugares
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
 - name: bcook
   host:
     roleBindings: 
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
