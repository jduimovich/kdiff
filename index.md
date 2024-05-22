# kustomize changes tracked by commits 
### This file generated at Wed May 22 16:03:54 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d1e954f4 to eaaaf018 on Wed May 22 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index f9f3263b..b8e4e926 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 2c1d1deb..59f6ccc2 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9713f0c2..59dfc02b 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 86bb1f8f..ccfe62b8 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d1e954f4/production/components/has/production/kustomize.out.yaml
311a312,353
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
776c818
<         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232
---
>         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1 
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
<h3>1: Staging changes from d1e954f4 to eaaaf018 on Wed May 22 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index f9f3263b..b8e4e926 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 2c1d1deb..59f6ccc2 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9713f0c2..59dfc02b 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 86bb1f8f..ccfe62b8 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d1e954f4/staging/components/has/staging/kustomize.out.yaml
324a325,366
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
803c845
<         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232
---
>         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1 
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
<h3>1: Development changes from d1e954f4 to eaaaf018 on Wed May 22 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index f9f3263b..b8e4e926 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 2c1d1deb..59f6ccc2 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9713f0c2..59dfc02b 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 86bb1f8f..ccfe62b8 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d1e954f4/development/components/has/development/kustomize.out.yaml
305a306,347
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
735c777
<         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232
---
>         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1 
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
<h3>2: Production changes from 11115590 to d1e954f4 on Wed May 22 10:42:30 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index d4f5eb43..54fe94a2 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d72d35b1bdb178c97dc56fa59acd363300def65
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=81d1c5b7365c625b6a96b78a9e4ce675b1873ced
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 3d72d35b1bdb178c97dc56fa59acd363300def65
+  newTag: 81d1c5b7365c625b6a96b78a9e4ce675b1873ced
 
 namespace: ci-helper-app
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 11115590 to d1e954f4 on Wed May 22 10:42:30 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index d4f5eb43..54fe94a2 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d72d35b1bdb178c97dc56fa59acd363300def65
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=81d1c5b7365c625b6a96b78a9e4ce675b1873ced
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 3d72d35b1bdb178c97dc56fa59acd363300def65
+  newTag: 81d1c5b7365c625b6a96b78a9e4ce675b1873ced
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-11115590/staging/components/ci-helper-app/staging/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:81d1c5b7365c625b6a96b78a9e4ce675b1873ced
---
>         image: quay.io/konflux-ci/ci-helper-app:3d72d35b1bdb178c97dc56fa59acd363300def65 
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
<h3>2: Development changes from 11115590 to d1e954f4 on Wed May 22 10:42:30 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index d4f5eb43..54fe94a2 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d72d35b1bdb178c97dc56fa59acd363300def65
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=81d1c5b7365c625b6a96b78a9e4ce675b1873ced
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 3d72d35b1bdb178c97dc56fa59acd363300def65
+  newTag: 81d1c5b7365c625b6a96b78a9e4ce675b1873ced
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-11115590/development/components/ci-helper-app/development/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:81d1c5b7365c625b6a96b78a9e4ce675b1873ced
---
>         image: quay.io/konflux-ci/ci-helper-app:3d72d35b1bdb178c97dc56fa59acd363300def65 
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
<h3>3: Production changes from 5611e71a to 11115590 on Wed May 22 06:59:42 2024 </h3>  
 
<details> 
<summary>Git Diff (56 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index ff2bf202..2476de98 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/aws-ssh-key
+        key: production/build/multi-platform-controller/public-prod-ssh-key        
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -57,7 +57,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/aws-account
+        key: production/build/multi-platform-controller/public-prod-aws-account
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f303651d..c35f9916 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -14,20 +14,24 @@ data:
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
   dynamic.linux-arm64.instance-type: m6g.large
-  dynamic.linux-arm64.key-name: multi-platform-aws-prod
+  dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "launch-wizard-1"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-arm64.max-instances: "10"
-
+  
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: multi-platform-aws-prod
+  dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "launch-wizard-1"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
 
   host.power-rhtap-prod-1.address: "52.117.38.109" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5611e71a/production/components/multi-platform-controller/production/kustomize.out.yaml
141c141
<   dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
---
>   dynamic.linux-amd64.key-name: multi-platform-aws-prod
144c144
<   dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
---
>   dynamic.linux-amd64.security-group: launch-wizard-1
146d145
<   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
151c150
<   dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
---
>   dynamic.linux-arm64.key-name: multi-platform-aws-prod
154c153
<   dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
---
>   dynamic.linux-arm64.security-group: launch-wizard-1
156d154
<   dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
339c337
<       key: production/build/multi-platform-controller/public-prod-aws-account
---
>       key: production/build/multi-platform-controller/aws-account
362c360
<       key: production/build/multi-platform-controller/public-prod-ssh-key
---
>       key: production/build/multi-platform-controller/aws-ssh-key 
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
<h3>3: Staging changes from 5611e71a to 11115590 on Wed May 22 06:59:42 2024 </h3>  
 
<details> 
<summary>Git Diff (56 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index ff2bf202..2476de98 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/aws-ssh-key
+        key: production/build/multi-platform-controller/public-prod-ssh-key        
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -57,7 +57,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/aws-account
+        key: production/build/multi-platform-controller/public-prod-aws-account
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f303651d..c35f9916 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -14,20 +14,24 @@ data:
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
   dynamic.linux-arm64.instance-type: m6g.large
-  dynamic.linux-arm64.key-name: multi-platform-aws-prod
+  dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "launch-wizard-1"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-arm64.max-instances: "10"
-
+  
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: multi-platform-aws-prod
+  dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "launch-wizard-1"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
 
   host.power-rhtap-prod-1.address: "52.117.38.109" 
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
<h3>3: Development changes from 5611e71a to 11115590 on Wed May 22 06:59:42 2024 </h3>  
 
<details> 
<summary>Git Diff (56 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index ff2bf202..2476de98 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/aws-ssh-key
+        key: production/build/multi-platform-controller/public-prod-ssh-key        
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -57,7 +57,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/aws-account
+        key: production/build/multi-platform-controller/public-prod-aws-account
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f303651d..c35f9916 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -14,20 +14,24 @@ data:
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
   dynamic.linux-arm64.instance-type: m6g.large
-  dynamic.linux-arm64.key-name: multi-platform-aws-prod
+  dynamic.linux-arm64.key-name: konflux-prod-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "launch-wizard-1"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-arm64.max-instances: "10"
-
+  
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: multi-platform-aws-prod
+  dynamic.linux-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "launch-wizard-1"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
 
   host.power-rhtap-prod-1.address: "52.117.38.109" 
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
<h3>4: Production changes from fef06429 to 5611e71a on Tue May 21 21:35:23 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 5eb9a3bd..f9f3263b 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 26e4154f..2c1d1deb 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index f49f1fbf..9713f0c2 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 90ecb33f..86bb1f8f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fef06429/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
---
>         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857 
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
<h3>4: Staging changes from fef06429 to 5611e71a on Tue May 21 21:35:23 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 5eb9a3bd..f9f3263b 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 26e4154f..2c1d1deb 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index f49f1fbf..9713f0c2 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 90ecb33f..86bb1f8f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fef06429/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
---
>         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857 
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
<h3>4: Development changes from fef06429 to 5611e71a on Tue May 21 21:35:23 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 5eb9a3bd..f9f3263b 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 26e4154f..2c1d1deb 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index f49f1fbf..9713f0c2 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 90ecb33f..86bb1f8f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fef06429/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
---
>         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857 
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
