# kustomize changes tracked by commits 
### This file generated at Fri Apr 19 08:02:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4c946d9a to a7e7c075 on Fri Apr 19 01:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 9f163af7..ff981726 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-4c946d9a/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
467a468
>       set -o pipefail
473c474
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
---
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME
607a609,610
>       set -eu
>       set -o pipefail
613,628d615
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in *; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4c946d9a to a7e7c075 on Fri Apr 19 01:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 9f163af7..ff981726 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-4c946d9a/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
411a412
>       set -o pipefail
417c418
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
---
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME
551a553,554
>       set -eu
>       set -o pipefail
557,572d559
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in *; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh 
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
<h3>1: Development changes from 4c946d9a to a7e7c075 on Fri Apr 19 01:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 9f163af7..ff981726 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-4c946d9a/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
304a305
>       set -o pipefail
310c311
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
---
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME
444a446,447
>       set -eu
>       set -o pipefail
450,465d452
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in *; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 383aa69e to 4c946d9a on Fri Apr 19 00:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 95e44273..2c6f0fd4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -25,14 +25,14 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubesaw-common
+        namespace: ksaw-common
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=false
+          - CreateNamespace=true
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index 9dc1053b..b2d378a8 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
deleted file mode 100644
index 45c562d3..00000000
--- a/components/sandbox/common/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index 01f7d942..9a125719 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-namespace: kubesaw-common
+namespace: ksaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 383aa69e to 4c946d9a on Fri Apr 19 00:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 95e44273..2c6f0fd4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -25,14 +25,14 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubesaw-common
+        namespace: ksaw-common
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=false
+          - CreateNamespace=true
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index 9dc1053b..b2d378a8 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
deleted file mode 100644
index 45c562d3..00000000
--- a/components/sandbox/common/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index 01f7d942..9a125719 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-namespace: kubesaw-common
+namespace: ksaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
<h3>2: Development changes from 383aa69e to 4c946d9a on Fri Apr 19 00:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 95e44273..2c6f0fd4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -25,14 +25,14 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubesaw-common
+        namespace: ksaw-common
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=false
+          - CreateNamespace=true
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index 9dc1053b..b2d378a8 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
deleted file mode 100644
index 45c562d3..00000000
--- a/components/sandbox/common/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index 01f7d942..9a125719 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-namespace: kubesaw-common
+namespace: ksaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 1f32a363 to 383aa69e on Thu Apr 18 20:51:53 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 8e93d41b..ec60dd13 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index cd595fb1..588e3ccf 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1541bc13..d8cc283e 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 1607fd3a..9efd864a 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-1f32a363/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
./commit-1f32a363/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
./commit-1f32a363/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 1f32a363 to 383aa69e on Thu Apr 18 20:51:53 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 8e93d41b..ec60dd13 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index cd595fb1..588e3ccf 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1541bc13..d8cc283e 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 1607fd3a..9efd864a 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>3: Development changes from 1f32a363 to 383aa69e on Thu Apr 18 20:51:53 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 8e93d41b..ec60dd13 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index cd595fb1..588e3ccf 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1541bc13..d8cc283e 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 1607fd3a..9efd864a 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1204,7 +1204,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 28d7b5c9 to 1f32a363 on Thu Apr 18 20:02:26 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 3a725fcf..95e44273 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -32,7 +32,7 @@ spec:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=true
+          - CreateNamespace=false
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index b2d378a8..9dc1053b 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
+- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
new file mode 100644
index 00000000..45c562d3
--- /dev/null
+++ b/components/sandbox/common/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index a08d091a..01f7d942 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,5 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: kubesaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 28d7b5c9 to 1f32a363 on Thu Apr 18 20:02:26 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 3a725fcf..95e44273 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -32,7 +32,7 @@ spec:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=true
+          - CreateNamespace=false
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index b2d378a8..9dc1053b 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
+- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
new file mode 100644
index 00000000..45c562d3
--- /dev/null
+++ b/components/sandbox/common/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index a08d091a..01f7d942 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,5 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: kubesaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
<h3>4: Development changes from 28d7b5c9 to 1f32a363 on Thu Apr 18 20:02:26 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 3a725fcf..95e44273 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -32,7 +32,7 @@ spec:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=true
+          - CreateNamespace=false
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index b2d378a8..9dc1053b 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
+- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
new file mode 100644
index 00000000..45c562d3
--- /dev/null
+++ b/components/sandbox/common/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index a08d091a..01f7d942 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,5 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: kubesaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>
