# kustomize changes tracked by commits 
### This file generated at Wed Aug 14 12:06:27 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8b6878d8 to 565abf24 on Wed Aug 14 10:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index b21cacd2..10944753 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -331,17 +331,65 @@ data:
     --//--
 
 
-  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.address: "169.62.182.26"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
+  host.power-rhtap-prod-1.concurrency: "1"
 
-  host.power-rhtap-prod-2.address: "52.117.38.122"
+  host.power-rhtap-prod-2.address: "169.62.182.27"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
+  host.power-rhtap-prod-2.concurrency: "1"
+
+  host.power-rhtap-prod-3.address: "169.62.182.28"
+  host.power-rhtap-prod-3.platform: "linux/ppc64le"
+  host.power-rhtap-prod-3.user: "root"
+  host.power-rhtap-prod-3.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-3.concurrency: "1"
+
+  host.power-rhtap-prod-4.address: "169.62.182.29"
+  host.power-rhtap-prod-4.platform: "linux/ppc64le"
+  host.power-rhtap-prod-4.user: "root"
+  host.power-rhtap-prod-4.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-4.concurrency: "1"
+
+  host.power-rhtap-prod-5.address: "169.62.182.30"
+  host.power-rhtap-prod-5.platform: "linux/ppc64le"
+  host.power-rhtap-prod-5.user: "root"
+  host.power-rhtap-prod-5.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-5.concurrency: "1"
+
+  host.power-rhtap-prod-6.address: "52.117.38.98"
+  host.power-rhtap-prod-6.platform: "linux/ppc64le"
+  host.power-rhtap-prod-6.user: "root"
+  host.power-rhtap-prod-6.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-6.concurrency: "1"
+
+  host.power-rhtap-prod-7.address: "52.117.38.99"
+  host.power-rhtap-prod-7.platform: "linux/ppc64le"
+  host.power-rhtap-prod-7.user: "root"
+  host.power-rhtap-prod-7.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-7.concurrency: "1"
+
+  host.power-rhtap-prod-8.address: "52.117.38.100"
+  host.power-rhtap-prod-8.platform: "linux/ppc64le"
+  host.power-rhtap-prod-8.user: "root"
+  host.power-rhtap-prod-8.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-8.concurrency: "1"
+
+  host.power-rhtap-prod-9.address: "52.117.38.101"
+  host.power-rhtap-prod-9.platform: "linux/ppc64le"
+  host.power-rhtap-prod-9.user: "root"
+  host.power-rhtap-prod-9.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-9.concurrency: "1"
+
+  host.power-rhtap-prod-10.address: "52.117.38.102"
+  host.power-rhtap-prod-10.platform: "linux/ppc64le"
+  host.power-rhtap-prod-10.user: "root"
+  host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-10.concurrency: "1"
 
   host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (54 lines)</summary>  

``` 
./commit-8b6878d8/production/components/multi-platform-controller/production/kustomize.out.yaml
468,469c468,469
<   host.power-rhtap-prod-1.address: 169.62.182.26
<   host.power-rhtap-prod-1.concurrency: "1"
---
>   host.power-rhtap-prod-1.address: 52.117.38.109
>   host.power-rhtap-prod-1.concurrency: "4"
473,474c473,474
<   host.power-rhtap-prod-2.address: 169.62.182.27
<   host.power-rhtap-prod-2.concurrency: "1"
---
>   host.power-rhtap-prod-2.address: 52.117.38.122
>   host.power-rhtap-prod-2.concurrency: "4"
478,517d477
<   host.power-rhtap-prod-3.address: 169.62.182.28
<   host.power-rhtap-prod-3.concurrency: "1"
<   host.power-rhtap-prod-3.platform: linux/ppc64le
<   host.power-rhtap-prod-3.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-3.user: root
<   host.power-rhtap-prod-4.address: 169.62.182.29
<   host.power-rhtap-prod-4.concurrency: "1"
<   host.power-rhtap-prod-4.platform: linux/ppc64le
<   host.power-rhtap-prod-4.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-4.user: root
<   host.power-rhtap-prod-5.address: 169.62.182.30
<   host.power-rhtap-prod-5.concurrency: "1"
<   host.power-rhtap-prod-5.platform: linux/ppc64le
<   host.power-rhtap-prod-5.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-5.user: root
<   host.power-rhtap-prod-6.address: 52.117.38.98
<   host.power-rhtap-prod-6.concurrency: "1"
<   host.power-rhtap-prod-6.platform: linux/ppc64le
<   host.power-rhtap-prod-6.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-6.user: root
<   host.power-rhtap-prod-7.address: 52.117.38.99
<   host.power-rhtap-prod-7.concurrency: "1"
<   host.power-rhtap-prod-7.platform: linux/ppc64le
<   host.power-rhtap-prod-7.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-7.user: root
<   host.power-rhtap-prod-8.address: 52.117.38.100
<   host.power-rhtap-prod-8.concurrency: "1"
<   host.power-rhtap-prod-8.platform: linux/ppc64le
<   host.power-rhtap-prod-8.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-8.user: root
<   host.power-rhtap-prod-9.address: 52.117.38.101
<   host.power-rhtap-prod-9.concurrency: "1"
<   host.power-rhtap-prod-9.platform: linux/ppc64le
<   host.power-rhtap-prod-9.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-9.user: root
<   host.power-rhtap-prod-10.address: 52.117.38.102
<   host.power-rhtap-prod-10.concurrency: "1"
<   host.power-rhtap-prod-10.platform: linux/ppc64le
<   host.power-rhtap-prod-10.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-10.user: root 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 8b6878d8 to 565abf24 on Wed Aug 14 10:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index b21cacd2..10944753 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -331,17 +331,65 @@ data:
     --//--
 
 
-  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.address: "169.62.182.26"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
+  host.power-rhtap-prod-1.concurrency: "1"
 
-  host.power-rhtap-prod-2.address: "52.117.38.122"
+  host.power-rhtap-prod-2.address: "169.62.182.27"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
+  host.power-rhtap-prod-2.concurrency: "1"
+
+  host.power-rhtap-prod-3.address: "169.62.182.28"
+  host.power-rhtap-prod-3.platform: "linux/ppc64le"
+  host.power-rhtap-prod-3.user: "root"
+  host.power-rhtap-prod-3.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-3.concurrency: "1"
+
+  host.power-rhtap-prod-4.address: "169.62.182.29"
+  host.power-rhtap-prod-4.platform: "linux/ppc64le"
+  host.power-rhtap-prod-4.user: "root"
+  host.power-rhtap-prod-4.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-4.concurrency: "1"
+
+  host.power-rhtap-prod-5.address: "169.62.182.30"
+  host.power-rhtap-prod-5.platform: "linux/ppc64le"
+  host.power-rhtap-prod-5.user: "root"
+  host.power-rhtap-prod-5.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-5.concurrency: "1"
+
+  host.power-rhtap-prod-6.address: "52.117.38.98"
+  host.power-rhtap-prod-6.platform: "linux/ppc64le"
+  host.power-rhtap-prod-6.user: "root"
+  host.power-rhtap-prod-6.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-6.concurrency: "1"
+
+  host.power-rhtap-prod-7.address: "52.117.38.99"
+  host.power-rhtap-prod-7.platform: "linux/ppc64le"
+  host.power-rhtap-prod-7.user: "root"
+  host.power-rhtap-prod-7.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-7.concurrency: "1"
+
+  host.power-rhtap-prod-8.address: "52.117.38.100"
+  host.power-rhtap-prod-8.platform: "linux/ppc64le"
+  host.power-rhtap-prod-8.user: "root"
+  host.power-rhtap-prod-8.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-8.concurrency: "1"
+
+  host.power-rhtap-prod-9.address: "52.117.38.101"
+  host.power-rhtap-prod-9.platform: "linux/ppc64le"
+  host.power-rhtap-prod-9.user: "root"
+  host.power-rhtap-prod-9.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-9.concurrency: "1"
+
+  host.power-rhtap-prod-10.address: "52.117.38.102"
+  host.power-rhtap-prod-10.platform: "linux/ppc64le"
+  host.power-rhtap-prod-10.user: "root"
+  host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-10.concurrency: "1"
 
   host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x" 
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
<h3>1: Development changes from 8b6878d8 to 565abf24 on Wed Aug 14 10:35:35 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index b21cacd2..10944753 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -331,17 +331,65 @@ data:
     --//--
 
 
-  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.address: "169.62.182.26"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
   host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
+  host.power-rhtap-prod-1.concurrency: "1"
 
-  host.power-rhtap-prod-2.address: "52.117.38.122"
+  host.power-rhtap-prod-2.address: "169.62.182.27"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
   host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
+  host.power-rhtap-prod-2.concurrency: "1"
+
+  host.power-rhtap-prod-3.address: "169.62.182.28"
+  host.power-rhtap-prod-3.platform: "linux/ppc64le"
+  host.power-rhtap-prod-3.user: "root"
+  host.power-rhtap-prod-3.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-3.concurrency: "1"
+
+  host.power-rhtap-prod-4.address: "169.62.182.29"
+  host.power-rhtap-prod-4.platform: "linux/ppc64le"
+  host.power-rhtap-prod-4.user: "root"
+  host.power-rhtap-prod-4.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-4.concurrency: "1"
+
+  host.power-rhtap-prod-5.address: "169.62.182.30"
+  host.power-rhtap-prod-5.platform: "linux/ppc64le"
+  host.power-rhtap-prod-5.user: "root"
+  host.power-rhtap-prod-5.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-5.concurrency: "1"
+
+  host.power-rhtap-prod-6.address: "52.117.38.98"
+  host.power-rhtap-prod-6.platform: "linux/ppc64le"
+  host.power-rhtap-prod-6.user: "root"
+  host.power-rhtap-prod-6.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-6.concurrency: "1"
+
+  host.power-rhtap-prod-7.address: "52.117.38.99"
+  host.power-rhtap-prod-7.platform: "linux/ppc64le"
+  host.power-rhtap-prod-7.user: "root"
+  host.power-rhtap-prod-7.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-7.concurrency: "1"
+
+  host.power-rhtap-prod-8.address: "52.117.38.100"
+  host.power-rhtap-prod-8.platform: "linux/ppc64le"
+  host.power-rhtap-prod-8.user: "root"
+  host.power-rhtap-prod-8.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-8.concurrency: "1"
+
+  host.power-rhtap-prod-9.address: "52.117.38.101"
+  host.power-rhtap-prod-9.platform: "linux/ppc64le"
+  host.power-rhtap-prod-9.user: "root"
+  host.power-rhtap-prod-9.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-9.concurrency: "1"
+
+  host.power-rhtap-prod-10.address: "52.117.38.102"
+  host.power-rhtap-prod-10.platform: "linux/ppc64le"
+  host.power-rhtap-prod-10.user: "root"
+  host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-10.concurrency: "1"
 
   host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x" 
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
<h3>2: Production changes from a1860a6a to 8b6878d8 on Wed Aug 14 08:14:43 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/OWNERS b/components/integration/OWNERS
index 53dd62be..db7cab4e 100644
--- a/components/integration/OWNERS
+++ b/components/integration/OWNERS
@@ -10,6 +10,7 @@ approvers:
 - Josh-Everett
 - 14rcole
 - chipspeak
+- jencull
 
 reviewers:
 - dirgim
@@ -21,3 +22,4 @@ reviewers:
 - Josh-Everett
 - 14rcole
 - chipspeak
+- jencull 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a1860a6a to 8b6878d8 on Wed Aug 14 08:14:43 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/OWNERS b/components/integration/OWNERS
index 53dd62be..db7cab4e 100644
--- a/components/integration/OWNERS
+++ b/components/integration/OWNERS
@@ -10,6 +10,7 @@ approvers:
 - Josh-Everett
 - 14rcole
 - chipspeak
+- jencull
 
 reviewers:
 - dirgim
@@ -21,3 +22,4 @@ reviewers:
 - Josh-Everett
 - 14rcole
 - chipspeak
+- jencull 
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
<h3>2: Development changes from a1860a6a to 8b6878d8 on Wed Aug 14 08:14:43 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/OWNERS b/components/integration/OWNERS
index 53dd62be..db7cab4e 100644
--- a/components/integration/OWNERS
+++ b/components/integration/OWNERS
@@ -10,6 +10,7 @@ approvers:
 - Josh-Everett
 - 14rcole
 - chipspeak
+- jencull
 
 reviewers:
 - dirgim
@@ -21,3 +22,4 @@ reviewers:
 - Josh-Everett
 - 14rcole
 - chipspeak
+- jencull 
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
<h3>3: Production changes from b4fe9580 to a1860a6a on Tue Aug 13 23:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/hack/sandbox-development-mode.sh b/hack/sandbox-development-mode.sh
index 7a00041d..77128ed6 100755
--- a/hack/sandbox-development-mode.sh
+++ b/hack/sandbox-development-mode.sh
@@ -10,4 +10,5 @@ echo
 echo "Installing the Toolchain (Sandbox) operators in dev environment:"
 rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
-make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup"
+CGO_ENABLED=0 go install github.com/kubesaw/ksctl/cmd/ksctl@master
+make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup" USE_INSTALLED_KSCTL=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from b4fe9580 to a1860a6a on Tue Aug 13 23:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/hack/sandbox-development-mode.sh b/hack/sandbox-development-mode.sh
index 7a00041d..77128ed6 100755
--- a/hack/sandbox-development-mode.sh
+++ b/hack/sandbox-development-mode.sh
@@ -10,4 +10,5 @@ echo
 echo "Installing the Toolchain (Sandbox) operators in dev environment:"
 rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
-make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup"
+CGO_ENABLED=0 go install github.com/kubesaw/ksctl/cmd/ksctl@master
+make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup" USE_INSTALLED_KSCTL=true 
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
<h3>3: Development changes from b4fe9580 to a1860a6a on Tue Aug 13 23:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/hack/sandbox-development-mode.sh b/hack/sandbox-development-mode.sh
index 7a00041d..77128ed6 100755
--- a/hack/sandbox-development-mode.sh
+++ b/hack/sandbox-development-mode.sh
@@ -10,4 +10,5 @@ echo
 echo "Installing the Toolchain (Sandbox) operators in dev environment:"
 rm -rf ${TOOLCHAIN_E2E_TEMP_DIR} 2>/dev/null || true
 git clone --depth=1 https://github.com/codeready-toolchain/toolchain-e2e.git ${TOOLCHAIN_E2E_TEMP_DIR}
-make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup"
+CGO_ENABLED=0 go install github.com/kubesaw/ksctl/cmd/ksctl@master
+make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-dev-deploy-latest SHOW_CLEAN_COMMAND="make -C ${TOOLCHAIN_E2E_TEMP_DIR} appstudio-cleanup" USE_INSTALLED_KSCTL=true 
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
<h3>4: Production changes from 6cdb8f0f to b4fe9580 on Tue Aug 13 20:08:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 2533234a..d573683f 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-6cdb8f0f/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:78e19fa5f3d283b3d265f4652f59ce74f81083f4
---
>         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a
./commit-6cdb8f0f/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:78e19fa5f3d283b3d265f4652f59ce74f81083f4
---
>         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6cdb8f0f to b4fe9580 on Tue Aug 13 20:08:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 2533234a..d573683f 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Development changes from 6cdb8f0f to b4fe9580 on Tue Aug 13 20:08:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 2533234a..d573683f 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+- https://github.com/konflux-ci/build-service/config/default?ref=78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
+  newTag: 78e19fa5f3d283b3d265f4652f59ce74f81083f4
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
