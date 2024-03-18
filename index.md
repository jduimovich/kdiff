# kustomize changes tracked by commits 
### This file generated at Mon Mar 18 20:03:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
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
<h3>1: Staging changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
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
<h3>1: Development changes from ea983d05 to db4440bc on Mon Mar 18 17:03:25 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index 738c2164..a8f5274b 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,9 +1,10 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/production/sandbox-config.yaml
rename to components/sandbox/user-management/production/kubesaw-admins.yaml
index 28283b65..846ac07c 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: alkazako
   host:
     roleBindings:
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6c97b0bb..6ad7469a 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
-To apply any changes done in sandbox-config.yaml file run:
+To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
-To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
similarity index 98%
rename from components/sandbox/user-management/staging/sandbox-config.yaml
rename to components/sandbox/user-management/staging/kubesaw-admins.yaml
index 54d01d63..2b0e77f7 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -8,7 +8,7 @@ clusters:
     name: member-rh-1
 
 serviceAccounts:
-## service accounts to be used by humans via `sandbox-cli`
+## service accounts to be used by humans via `ksctl`
 - name: filariow
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

<div>
<h3>2: Production changes from 2a55d6ee to ea983d05 on Mon Mar 18 14:37:39 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9e8d5030..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2a55d6ee/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a 
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
<h3>2: Staging changes from 2a55d6ee to ea983d05 on Mon Mar 18 14:37:39 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9e8d5030..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2a55d6ee/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a 
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
<h3>2: Development changes from 2a55d6ee to ea983d05 on Mon Mar 18 14:37:39 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 9e8d5030..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=461cb63a6b9c39e3961fbfb773f4e912d27fe918
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=32ced60d490920a57ecd7a2865cc629ff603383a
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2a55d6ee/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:32ced60d490920a57ecd7a2865cc629ff603383a@sha256:d570da04a2049d869a79921cf4e86b5607d35ab348af57eed95901122c75b5bf
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: 32ced60d490920a57ecd7a2865cc629ff603383a 
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
<h3>3: Production changes from aa38189c to 2a55d6ee on Mon Mar 18 13:40:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index 1143aa48..5aa4bd20 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
+  - https://github.com/konflux-ci/sprayproxy/config?ref=f1afe07688592565986ded70ca912d80629c04a0
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
-    newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
+    newName: quay.io/konflux-ci/sprayproxy
+    newTag: f1afe07688592565986ded70ca912d80629c04a0
 
 patches:
   - path: change-backends.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-aa38189c/production/components/sprayproxy/production/kustomize.out.yaml
197c197
<         image: quay.io/konflux-ci/sprayproxy:f1afe07688592565986ded70ca912d80629c04a0
---
>         image: quay.io/redhat-appstudio/sprayproxy:2f488f7082df063350cc5a774b61ee3207481a9b 
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
<h3>3: Staging changes from aa38189c to 2a55d6ee on Mon Mar 18 13:40:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index 1143aa48..5aa4bd20 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
+  - https://github.com/konflux-ci/sprayproxy/config?ref=f1afe07688592565986ded70ca912d80629c04a0
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
-    newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
+    newName: quay.io/konflux-ci/sprayproxy
+    newTag: f1afe07688592565986ded70ca912d80629c04a0
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from aa38189c to 2a55d6ee on Mon Mar 18 13:40:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index 1143aa48..5aa4bd20 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
+  - https://github.com/konflux-ci/sprayproxy/config?ref=f1afe07688592565986ded70ca912d80629c04a0
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
-    newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
+    newName: quay.io/konflux-ci/sprayproxy
+    newTag: f1afe07688592565986ded70ca912d80629c04a0
 
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
<h3>4: Production changes from f96085c5 to aa38189c on Mon Mar 18 12:31:06 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml
new file mode 100644
index 00000000..f4300bba
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/konflux-public-production
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml
new file mode 100644
index 00000000..f0d8fddc
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: konflux-public-production
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml
new file mode 100644
index 00000000..370bb538
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: konflux-public-production
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
new file mode 100644
index 00000000..d254e69a
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -0,0 +1,153 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+  - ../../base/tekton-ci
+  - ../../base/tenants-config
+  - ../../base/cluster-secret-store-rh
+  - ../../base/rh-managed-workspaces-config
+
+namespace: konflux-public-production
+
+patches:
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: gitops
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: pipeline-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-templates
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: has
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spi
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: remote-secret-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: dora-metrics
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: authentication
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: sprayproxy
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: image-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-prometheus
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: external-secrets-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-grafana
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-host
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-member
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-host-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-member-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store-rh
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: backup
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: integration
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: smee
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy
diff --git a/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml b/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml
new file mode 100644
index 00000000..15963445
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index df912270..8baf4c2a 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -147,3 +147,7 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/production/migration.patch.yaml b/argo-cd-apps/overlays/production/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/production/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (457 lines)</summary>  

``` 
./commit-f96085c5/production/app-of-apps-production.yaml
23a24,33
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
66a77,86
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
104a125,136
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
142a175,186
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
182a227,238
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
221a278,289
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
255a324,335
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: 20
>         syncOptions:
>         - CreateNamespace=true
293a374,383
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
332a423,434
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
371a474,485
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
395a510,519
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
434a559,568
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
480a615,626
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
514a661,670
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
548a705,716
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
581a750,761
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false
619a800,809
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
643a834,843
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
677a878,889
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
716a929,940
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
759a984,993
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
814a1049,1058
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
848a1093,1104
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
882a1139,1150
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
928a1197,1208
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
962a1243,1252
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
1008a1299,1308
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
1033a1334,1345
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: 10
>         syncOptions:
>         - CreateNamespace=true
1071a1384,1395
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1113a1438,1449
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1147a1484,1495
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1193a1542,1551
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
1227a1586,1597
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1267a1638,1649
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
1304a1687,1699
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: 10
>         syncOptions:
>         - CreateNamespace=true
>         - RespectIgnoreDifferences=true
1346a1742,1753
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false
1380a1788,1799
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false 
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
<h3>4: Staging changes from f96085c5 to aa38189c on Mon Mar 18 12:31:06 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml
new file mode 100644
index 00000000..f4300bba
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/konflux-public-production
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml
new file mode 100644
index 00000000..f0d8fddc
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: konflux-public-production
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml
new file mode 100644
index 00000000..370bb538
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: konflux-public-production
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
new file mode 100644
index 00000000..d254e69a
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -0,0 +1,153 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+  - ../../base/tekton-ci
+  - ../../base/tenants-config
+  - ../../base/cluster-secret-store-rh
+  - ../../base/rh-managed-workspaces-config
+
+namespace: konflux-public-production
+
+patches:
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: gitops
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: pipeline-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-templates
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: has
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spi
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: remote-secret-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: dora-metrics
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: authentication
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: sprayproxy
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: image-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-prometheus
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: external-secrets-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-grafana
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-host
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-member
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-host-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-member-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store-rh
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: backup
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: integration
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: smee
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy
diff --git a/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml b/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml
new file mode 100644
index 00000000..15963445
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index df912270..8baf4c2a 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -147,3 +147,7 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/production/migration.patch.yaml b/argo-cd-apps/overlays/production/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/production/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
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
<h3>4: Development changes from f96085c5 to aa38189c on Mon Mar 18 12:31:06 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml
new file mode 100644
index 00000000..f4300bba
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/konflux-public-production
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml
new file mode 100644
index 00000000..f0d8fddc
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: konflux-public-production
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml
new file mode 100644
index 00000000..370bb538
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-production/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: konflux-public-production
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
new file mode 100644
index 00000000..d254e69a
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -0,0 +1,153 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+  - ../../base/tekton-ci
+  - ../../base/tenants-config
+  - ../../base/cluster-secret-store-rh
+  - ../../base/rh-managed-workspaces-config
+
+namespace: konflux-public-production
+
+patches:
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: gitops
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: pipeline-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-templates
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: has
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spi
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: remote-secret-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: dora-metrics
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: authentication
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: sprayproxy
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: image-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-prometheus
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: external-secrets-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-grafana
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-host
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-member
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-host-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-member-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store-rh
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: backup
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: integration
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: smee
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy
diff --git a/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml b/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml
new file mode 100644
index 00000000..15963445
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/production-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index df912270..8baf4c2a 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -147,3 +147,7 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
diff --git a/argo-cd-apps/overlays/production/migration.patch.yaml b/argo-cd-apps/overlays/production/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/production/migration.patch.yaml
@@ -0,0 +1,2 @@
+- op: remove
+  path: /spec/template/spec/syncPolicy 
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
