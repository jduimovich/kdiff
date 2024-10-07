# kustomize changes tracked by commits 
### This file generated at Mon Oct  7 12:09:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from bc23e9df to f3b1ca5d on Mon Oct 7 11:24:26 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 0c71a785..227bda88 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -42,6 +42,15 @@ data:
     "
   instance-tag: rhtap-prod
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 34976f43..8af46282 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -40,6 +40,15 @@ data:
     "
   instance-tag: rhtap-prod
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index a83c6ead..7a63ffe3 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -41,6 +41,15 @@ data:
   #dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Staging,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 3665f5ca..89a48679 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -40,6 +40,15 @@ data:
     "
   instance-tag: rhtap-staging
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Staging,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-bc23e9df/production/components/multi-platform-controller/production/kustomize.out.yaml
188,189d187
<   additional-instance-tags: Project=Konflux,Owner=konflux-infra@redhat.com,ManagedBy=Konflux
<     Infra Team,app-code=ASSH-001,service-phase=Production,cost-center=670
./commit-bc23e9df/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
188,189d187
<   additional-instance-tags: Project=Konflux,Owner=konflux-infra@redhat.com,ManagedBy=Konflux
<     Infra Team,app-code=ASSH-001,service-phase=Production,cost-center=670 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from bc23e9df to f3b1ca5d on Mon Oct 7 11:24:26 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 0c71a785..227bda88 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -42,6 +42,15 @@ data:
     "
   instance-tag: rhtap-prod
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 34976f43..8af46282 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -40,6 +40,15 @@ data:
     "
   instance-tag: rhtap-prod
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index a83c6ead..7a63ffe3 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -41,6 +41,15 @@ data:
   #dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Staging,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 3665f5ca..89a48679 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -40,6 +40,15 @@ data:
     "
   instance-tag: rhtap-staging
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Staging,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-bc23e9df/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188,189d187
<   additional-instance-tags: Project=Konflux,Owner=konflux-infra@redhat.com,ManagedBy=Konflux
<     Infra Team,app-code=ASSH-001,service-phase=Staging,cost-center=670 
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
<h3>1: Development changes from bc23e9df to f3b1ca5d on Mon Oct 7 11:24:26 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 0c71a785..227bda88 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -42,6 +42,15 @@ data:
     "
   instance-tag: rhtap-prod
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 34976f43..8af46282 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -40,6 +40,15 @@ data:
     "
   instance-tag: rhtap-prod
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index a83c6ead..7a63ffe3 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -41,6 +41,15 @@ data:
   #dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Staging,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 3665f5ca..89a48679 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -40,6 +40,15 @@ data:
     "
   instance-tag: rhtap-staging
 
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Staging,\
+    cost-center=670\
+    "
+
   # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5fa18276 to bc23e9df on Mon Oct 7 08:48:18 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index ab72566b..0c71a785 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -37,7 +37,8 @@ data:
     linux-root/amd64,\
     linux/s390x,\
     linux-large/s390x,\
-    linux/ppc64le\
+    linux/ppc64le,\
+    linux-large/ppc64le\
     "
   instance-tag: rhtap-prod
 
@@ -382,7 +383,7 @@ data:
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
-#PPC64LE dynamic nodes
+  #PPC64LE dynamic nodes
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
@@ -401,67 +402,24 @@ data:
     - ip route add 10.0.0.0/8 via 10.130.72.1
     - ip route add 0.0.0.0/0 via 10.130.73.115
 
-  # ## IBM ppc64le with 2CPU 8GiB RAM
-  # host.power-rhtap-prod-1.address: "10.130.75.23"
-  # host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-1.user: "root"
-  # host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-1.concurrency: "1"
-
-  # host.power-rhtap-prod-2.address: "10.130.73.61"
-  # host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-2.user: "root"
-  # host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-2.concurrency: "1"
-
-  # host.power-rhtap-prod-3.address: "10.130.74.114"
-  # host.power-rhtap-prod-3.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-3.user: "root"
-  # host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-3.concurrency: "1"
-
-  # host.power-rhtap-prod-4.address: "10.130.72.200"
-  # host.power-rhtap-prod-4.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-4.user: "root"
-  # host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-4.concurrency: "1"
-
-  # host.power-rhtap-prod-5.address: "10.130.74.209"
-  # host.power-rhtap-prod-5.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-5.user: "root"
-  # host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-5.concurrency: "1"
-
-  # host.power-rhtap-prod-6.address: "10.130.73.112"
-  # host.power-rhtap-prod-6.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-6.user: "root"
-  # host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-6.concurrency: "1"
-
-  # host.power-rhtap-prod-7.address: "10.130.72.57"
-  # host.power-rhtap-prod-7.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-7.user: "root"
-  # host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-7.concurrency: "1"
-
-  # host.power-rhtap-prod-8.address: "10.130.73.225"
-  # host.power-rhtap-prod-8.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-8.user: "root"
-  # host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-8.concurrency: "1"
-
-  # ## IBM ppc64le with 4CPU 16GiB RAM
-  # host.power-konflux-prod-large-1.address: "10.130.74.202"
-  # host.power-konflux-prod-large-1.platform: "linux/ppc64le"
-  # host.power-konflux-prod-large-1.user: "root"
-  # host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
-  # host.power-konflux-prod-large-1.concurrency: "1"
-
-  # host.power-konflux-prod-large-2.address: "10.130.75.232"
-  # host.power-konflux-prod-large-2.platform: "linux/ppc64le"
-  # host.power-konflux-prod-large-2.user: "root"
-  # host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
-  # host.power-konflux-prod-large-2.concurrency: "1"
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.user-data: |-
+    #cloud-config
+    runcmd:
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5fa18276 to bc23e9df on Mon Oct 7 08:48:18 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index ab72566b..0c71a785 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -37,7 +37,8 @@ data:
     linux-root/amd64,\
     linux/s390x,\
     linux-large/s390x,\
-    linux/ppc64le\
+    linux/ppc64le,\
+    linux-large/ppc64le\
     "
   instance-tag: rhtap-prod
 
@@ -382,7 +383,7 @@ data:
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
-#PPC64LE dynamic nodes
+  #PPC64LE dynamic nodes
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
@@ -401,67 +402,24 @@ data:
     - ip route add 10.0.0.0/8 via 10.130.72.1
     - ip route add 0.0.0.0/0 via 10.130.73.115
 
-  # ## IBM ppc64le with 2CPU 8GiB RAM
-  # host.power-rhtap-prod-1.address: "10.130.75.23"
-  # host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-1.user: "root"
-  # host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-1.concurrency: "1"
-
-  # host.power-rhtap-prod-2.address: "10.130.73.61"
-  # host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-2.user: "root"
-  # host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-2.concurrency: "1"
-
-  # host.power-rhtap-prod-3.address: "10.130.74.114"
-  # host.power-rhtap-prod-3.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-3.user: "root"
-  # host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-3.concurrency: "1"
-
-  # host.power-rhtap-prod-4.address: "10.130.72.200"
-  # host.power-rhtap-prod-4.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-4.user: "root"
-  # host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-4.concurrency: "1"
-
-  # host.power-rhtap-prod-5.address: "10.130.74.209"
-  # host.power-rhtap-prod-5.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-5.user: "root"
-  # host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-5.concurrency: "1"
-
-  # host.power-rhtap-prod-6.address: "10.130.73.112"
-  # host.power-rhtap-prod-6.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-6.user: "root"
-  # host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-6.concurrency: "1"
-
-  # host.power-rhtap-prod-7.address: "10.130.72.57"
-  # host.power-rhtap-prod-7.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-7.user: "root"
-  # host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-7.concurrency: "1"
-
-  # host.power-rhtap-prod-8.address: "10.130.73.225"
-  # host.power-rhtap-prod-8.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-8.user: "root"
-  # host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-8.concurrency: "1"
-
-  # ## IBM ppc64le with 4CPU 16GiB RAM
-  # host.power-konflux-prod-large-1.address: "10.130.74.202"
-  # host.power-konflux-prod-large-1.platform: "linux/ppc64le"
-  # host.power-konflux-prod-large-1.user: "root"
-  # host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
-  # host.power-konflux-prod-large-1.concurrency: "1"
-
-  # host.power-konflux-prod-large-2.address: "10.130.75.232"
-  # host.power-konflux-prod-large-2.platform: "linux/ppc64le"
-  # host.power-konflux-prod-large-2.user: "root"
-  # host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
-  # host.power-konflux-prod-large-2.concurrency: "1"
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.user-data: |-
+    #cloud-config
+    runcmd:
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
<h3>2: Development changes from 5fa18276 to bc23e9df on Mon Oct 7 08:48:18 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index ab72566b..0c71a785 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -37,7 +37,8 @@ data:
     linux-root/amd64,\
     linux/s390x,\
     linux-large/s390x,\
-    linux/ppc64le\
+    linux/ppc64le,\
+    linux-large/ppc64le\
     "
   instance-tag: rhtap-prod
 
@@ -382,7 +383,7 @@ data:
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
-#PPC64LE dynamic nodes
+  #PPC64LE dynamic nodes
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
@@ -401,67 +402,24 @@ data:
     - ip route add 10.0.0.0/8 via 10.130.72.1
     - ip route add 0.0.0.0/0 via 10.130.73.115
 
-  # ## IBM ppc64le with 2CPU 8GiB RAM
-  # host.power-rhtap-prod-1.address: "10.130.75.23"
-  # host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-1.user: "root"
-  # host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-1.concurrency: "1"
-
-  # host.power-rhtap-prod-2.address: "10.130.73.61"
-  # host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-2.user: "root"
-  # host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-2.concurrency: "1"
-
-  # host.power-rhtap-prod-3.address: "10.130.74.114"
-  # host.power-rhtap-prod-3.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-3.user: "root"
-  # host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-3.concurrency: "1"
-
-  # host.power-rhtap-prod-4.address: "10.130.72.200"
-  # host.power-rhtap-prod-4.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-4.user: "root"
-  # host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-4.concurrency: "1"
-
-  # host.power-rhtap-prod-5.address: "10.130.74.209"
-  # host.power-rhtap-prod-5.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-5.user: "root"
-  # host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-5.concurrency: "1"
-
-  # host.power-rhtap-prod-6.address: "10.130.73.112"
-  # host.power-rhtap-prod-6.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-6.user: "root"
-  # host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-6.concurrency: "1"
-
-  # host.power-rhtap-prod-7.address: "10.130.72.57"
-  # host.power-rhtap-prod-7.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-7.user: "root"
-  # host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-7.concurrency: "1"
-
-  # host.power-rhtap-prod-8.address: "10.130.73.225"
-  # host.power-rhtap-prod-8.platform: "linux/ppc64le"
-  # host.power-rhtap-prod-8.user: "root"
-  # host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
-  # host.power-rhtap-prod-8.concurrency: "1"
-
-  # ## IBM ppc64le with 4CPU 16GiB RAM
-  # host.power-konflux-prod-large-1.address: "10.130.74.202"
-  # host.power-konflux-prod-large-1.platform: "linux/ppc64le"
-  # host.power-konflux-prod-large-1.user: "root"
-  # host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
-  # host.power-konflux-prod-large-1.concurrency: "1"
-
-  # host.power-konflux-prod-large-2.address: "10.130.75.232"
-  # host.power-konflux-prod-large-2.platform: "linux/ppc64le"
-  # host.power-konflux-prod-large-2.user: "root"
-  # host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
-  # host.power-konflux-prod-large-2.concurrency: "1"
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.user-data: |-
+    #cloud-config
+    runcmd:
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 8739e215 to 5fa18276 on Mon Oct 7 08:11:34 2024 </h3>  
 
<details> 
<summary>Git Diff (176 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3e558668..ab72566b 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -36,7 +36,8 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
-    linux-large/s390x\
+    linux-large/s390x,\
+    linux/ppc64le\
     "
   instance-tag: rhtap-prod
 
@@ -381,81 +382,86 @@ data:
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
-
-  # dynamic.linux-ppc64le.type: ibmp
-  # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
-  # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
-  # dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
-  # dynamic.linux-ppc64le.system: "e980"
-  # dynamic.linux-ppc64le.cores: "0.25"
-  # dynamic.linux-ppc64le.memory: "2"
-  # dynamic.linux-ppc64le.max-instances: "2"
-
-  ## IBM ppc64le with 2CPU 8GiB RAM
-  host.power-rhtap-prod-1.address: "10.130.75.23"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "1"
-
-  host.power-rhtap-prod-2.address: "10.130.73.61"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "1"
-
-  host.power-rhtap-prod-3.address: "10.130.74.114"
-  host.power-rhtap-prod-3.platform: "linux/ppc64le"
-  host.power-rhtap-prod-3.user: "root"
-  host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-3.concurrency: "1"
-
-  host.power-rhtap-prod-4.address: "10.130.72.200"
-  host.power-rhtap-prod-4.platform: "linux/ppc64le"
-  host.power-rhtap-prod-4.user: "root"
-  host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-4.concurrency: "1"
-
-  host.power-rhtap-prod-5.address: "10.130.74.209"
-  host.power-rhtap-prod-5.platform: "linux/ppc64le"
-  host.power-rhtap-prod-5.user: "root"
-  host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-5.concurrency: "1"
-
-  host.power-rhtap-prod-6.address: "10.130.73.112"
-  host.power-rhtap-prod-6.platform: "linux/ppc64le"
-  host.power-rhtap-prod-6.user: "root"
-  host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-6.concurrency: "1"
-
-  host.power-rhtap-prod-7.address: "10.130.72.57"
-  host.power-rhtap-prod-7.platform: "linux/ppc64le"
-  host.power-rhtap-prod-7.user: "root"
-  host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-7.concurrency: "1"
-
-  host.power-rhtap-prod-8.address: "10.130.73.225"
-  host.power-rhtap-prod-8.platform: "linux/ppc64le"
-  host.power-rhtap-prod-8.user: "root"
-  host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-8.concurrency: "1"
-
-  ## IBM ppc64le with 4CPU 16GiB RAM
-  host.power-konflux-prod-large-1.address: "10.130.74.202"
-  host.power-konflux-prod-large-1.platform: "linux/ppc64le"
-  host.power-konflux-prod-large-1.user: "root"
-  host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
-  host.power-konflux-prod-large-1.concurrency: "1"
-
-  host.power-konflux-prod-large-2.address: "10.130.75.232"
-  host.power-konflux-prod-large-2.platform: "linux/ppc64le"
-  host.power-konflux-prod-large-2.user: "root"
-  host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
-  host.power-konflux-prod-large-2.concurrency: "1"
+#PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.user-data: |-
+    #cloud-config
+    runcmd:
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
+
+  # ## IBM ppc64le with 2CPU 8GiB RAM
+  # host.power-rhtap-prod-1.address: "10.130.75.23"
+  # host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-1.user: "root"
+  # host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-1.concurrency: "1"
+
+  # host.power-rhtap-prod-2.address: "10.130.73.61"
+  # host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-2.user: "root"
+  # host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-2.concurrency: "1"
+
+  # host.power-rhtap-prod-3.address: "10.130.74.114"
+  # host.power-rhtap-prod-3.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-3.user: "root"
+  # host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-3.concurrency: "1"
+
+  # host.power-rhtap-prod-4.address: "10.130.72.200"
+  # host.power-rhtap-prod-4.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-4.user: "root"
+  # host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-4.concurrency: "1"
+
+  # host.power-rhtap-prod-5.address: "10.130.74.209"
+  # host.power-rhtap-prod-5.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-5.user: "root"
+  # host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-5.concurrency: "1"
+
+  # host.power-rhtap-prod-6.address: "10.130.73.112"
+  # host.power-rhtap-prod-6.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-6.user: "root"
+  # host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-6.concurrency: "1"
+
+  # host.power-rhtap-prod-7.address: "10.130.72.57"
+  # host.power-rhtap-prod-7.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-7.user: "root"
+  # host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-7.concurrency: "1"
+
+  # host.power-rhtap-prod-8.address: "10.130.73.225"
+  # host.power-rhtap-prod-8.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-8.user: "root"
+  # host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-8.concurrency: "1"
+
+  # ## IBM ppc64le with 4CPU 16GiB RAM
+  # host.power-konflux-prod-large-1.address: "10.130.74.202"
+  # host.power-konflux-prod-large-1.platform: "linux/ppc64le"
+  # host.power-konflux-prod-large-1.user: "root"
+  # host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
+  # host.power-konflux-prod-large-1.concurrency: "1"
+
+  # host.power-konflux-prod-large-2.address: "10.130.75.232"
+  # host.power-konflux-prod-large-2.platform: "linux/ppc64le"
+  # host.power-konflux-prod-large-2.user: "root"
+  # host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
+  # host.power-konflux-prod-large-2.concurrency: "1"
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 8739e215 to 5fa18276 on Mon Oct 7 08:11:34 2024 </h3>  
 
<details> 
<summary>Git Diff (176 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3e558668..ab72566b 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -36,7 +36,8 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
-    linux-large/s390x\
+    linux-large/s390x,\
+    linux/ppc64le\
     "
   instance-tag: rhtap-prod
 
@@ -381,81 +382,86 @@ data:
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
-
-  # dynamic.linux-ppc64le.type: ibmp
-  # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
-  # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
-  # dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
-  # dynamic.linux-ppc64le.system: "e980"
-  # dynamic.linux-ppc64le.cores: "0.25"
-  # dynamic.linux-ppc64le.memory: "2"
-  # dynamic.linux-ppc64le.max-instances: "2"
-
-  ## IBM ppc64le with 2CPU 8GiB RAM
-  host.power-rhtap-prod-1.address: "10.130.75.23"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "1"
-
-  host.power-rhtap-prod-2.address: "10.130.73.61"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "1"
-
-  host.power-rhtap-prod-3.address: "10.130.74.114"
-  host.power-rhtap-prod-3.platform: "linux/ppc64le"
-  host.power-rhtap-prod-3.user: "root"
-  host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-3.concurrency: "1"
-
-  host.power-rhtap-prod-4.address: "10.130.72.200"
-  host.power-rhtap-prod-4.platform: "linux/ppc64le"
-  host.power-rhtap-prod-4.user: "root"
-  host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-4.concurrency: "1"
-
-  host.power-rhtap-prod-5.address: "10.130.74.209"
-  host.power-rhtap-prod-5.platform: "linux/ppc64le"
-  host.power-rhtap-prod-5.user: "root"
-  host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-5.concurrency: "1"
-
-  host.power-rhtap-prod-6.address: "10.130.73.112"
-  host.power-rhtap-prod-6.platform: "linux/ppc64le"
-  host.power-rhtap-prod-6.user: "root"
-  host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-6.concurrency: "1"
-
-  host.power-rhtap-prod-7.address: "10.130.72.57"
-  host.power-rhtap-prod-7.platform: "linux/ppc64le"
-  host.power-rhtap-prod-7.user: "root"
-  host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-7.concurrency: "1"
-
-  host.power-rhtap-prod-8.address: "10.130.73.225"
-  host.power-rhtap-prod-8.platform: "linux/ppc64le"
-  host.power-rhtap-prod-8.user: "root"
-  host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-8.concurrency: "1"
-
-  ## IBM ppc64le with 4CPU 16GiB RAM
-  host.power-konflux-prod-large-1.address: "10.130.74.202"
-  host.power-konflux-prod-large-1.platform: "linux/ppc64le"
-  host.power-konflux-prod-large-1.user: "root"
-  host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
-  host.power-konflux-prod-large-1.concurrency: "1"
-
-  host.power-konflux-prod-large-2.address: "10.130.75.232"
-  host.power-konflux-prod-large-2.platform: "linux/ppc64le"
-  host.power-konflux-prod-large-2.user: "root"
-  host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
-  host.power-konflux-prod-large-2.concurrency: "1"
+#PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.user-data: |-
+    #cloud-config
+    runcmd:
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
+
+  # ## IBM ppc64le with 2CPU 8GiB RAM
+  # host.power-rhtap-prod-1.address: "10.130.75.23"
+  # host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-1.user: "root"
+  # host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-1.concurrency: "1"
+
+  # host.power-rhtap-prod-2.address: "10.130.73.61"
+  # host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-2.user: "root"
+  # host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-2.concurrency: "1"
+
+  # host.power-rhtap-prod-3.address: "10.130.74.114"
+  # host.power-rhtap-prod-3.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-3.user: "root"
+  # host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-3.concurrency: "1"
+
+  # host.power-rhtap-prod-4.address: "10.130.72.200"
+  # host.power-rhtap-prod-4.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-4.user: "root"
+  # host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-4.concurrency: "1"
+
+  # host.power-rhtap-prod-5.address: "10.130.74.209"
+  # host.power-rhtap-prod-5.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-5.user: "root"
+  # host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-5.concurrency: "1"
+
+  # host.power-rhtap-prod-6.address: "10.130.73.112"
+  # host.power-rhtap-prod-6.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-6.user: "root"
+  # host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-6.concurrency: "1"
+
+  # host.power-rhtap-prod-7.address: "10.130.72.57"
+  # host.power-rhtap-prod-7.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-7.user: "root"
+  # host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-7.concurrency: "1"
+
+  # host.power-rhtap-prod-8.address: "10.130.73.225"
+  # host.power-rhtap-prod-8.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-8.user: "root"
+  # host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-8.concurrency: "1"
+
+  # ## IBM ppc64le with 4CPU 16GiB RAM
+  # host.power-konflux-prod-large-1.address: "10.130.74.202"
+  # host.power-konflux-prod-large-1.platform: "linux/ppc64le"
+  # host.power-konflux-prod-large-1.user: "root"
+  # host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
+  # host.power-konflux-prod-large-1.concurrency: "1"
+
+  # host.power-konflux-prod-large-2.address: "10.130.75.232"
+  # host.power-konflux-prod-large-2.platform: "linux/ppc64le"
+  # host.power-konflux-prod-large-2.user: "root"
+  # host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
+  # host.power-konflux-prod-large-2.concurrency: "1"
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
<h3>3: Development changes from 8739e215 to 5fa18276 on Mon Oct 7 08:11:34 2024 </h3>  
 
<details> 
<summary>Git Diff (176 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3e558668..ab72566b 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -36,7 +36,8 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
-    linux-large/s390x\
+    linux-large/s390x,\
+    linux/ppc64le\
     "
   instance-tag: rhtap-prod
 
@@ -381,81 +382,86 @@ data:
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
 
-
-  # dynamic.linux-ppc64le.type: ibmp
-  # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
-  # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
-  # dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
-  # dynamic.linux-ppc64le.system: "e980"
-  # dynamic.linux-ppc64le.cores: "0.25"
-  # dynamic.linux-ppc64le.memory: "2"
-  # dynamic.linux-ppc64le.max-instances: "2"
-
-  ## IBM ppc64le with 2CPU 8GiB RAM
-  host.power-rhtap-prod-1.address: "10.130.75.23"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "1"
-
-  host.power-rhtap-prod-2.address: "10.130.73.61"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "1"
-
-  host.power-rhtap-prod-3.address: "10.130.74.114"
-  host.power-rhtap-prod-3.platform: "linux/ppc64le"
-  host.power-rhtap-prod-3.user: "root"
-  host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-3.concurrency: "1"
-
-  host.power-rhtap-prod-4.address: "10.130.72.200"
-  host.power-rhtap-prod-4.platform: "linux/ppc64le"
-  host.power-rhtap-prod-4.user: "root"
-  host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-4.concurrency: "1"
-
-  host.power-rhtap-prod-5.address: "10.130.74.209"
-  host.power-rhtap-prod-5.platform: "linux/ppc64le"
-  host.power-rhtap-prod-5.user: "root"
-  host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-5.concurrency: "1"
-
-  host.power-rhtap-prod-6.address: "10.130.73.112"
-  host.power-rhtap-prod-6.platform: "linux/ppc64le"
-  host.power-rhtap-prod-6.user: "root"
-  host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-6.concurrency: "1"
-
-  host.power-rhtap-prod-7.address: "10.130.72.57"
-  host.power-rhtap-prod-7.platform: "linux/ppc64le"
-  host.power-rhtap-prod-7.user: "root"
-  host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-7.concurrency: "1"
-
-  host.power-rhtap-prod-8.address: "10.130.73.225"
-  host.power-rhtap-prod-8.platform: "linux/ppc64le"
-  host.power-rhtap-prod-8.user: "root"
-  host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
-  host.power-rhtap-prod-8.concurrency: "1"
-
-  ## IBM ppc64le with 4CPU 16GiB RAM
-  host.power-konflux-prod-large-1.address: "10.130.74.202"
-  host.power-konflux-prod-large-1.platform: "linux/ppc64le"
-  host.power-konflux-prod-large-1.user: "root"
-  host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
-  host.power-konflux-prod-large-1.concurrency: "1"
-
-  host.power-konflux-prod-large-2.address: "10.130.75.232"
-  host.power-konflux-prod-large-2.platform: "linux/ppc64le"
-  host.power-konflux-prod-large-2.user: "root"
-  host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
-  host.power-konflux-prod-large-2.concurrency: "1"
+#PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.user-data: |-
+    #cloud-config
+    runcmd:
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
+
+  # ## IBM ppc64le with 2CPU 8GiB RAM
+  # host.power-rhtap-prod-1.address: "10.130.75.23"
+  # host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-1.user: "root"
+  # host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-1.concurrency: "1"
+
+  # host.power-rhtap-prod-2.address: "10.130.73.61"
+  # host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-2.user: "root"
+  # host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-2.concurrency: "1"
+
+  # host.power-rhtap-prod-3.address: "10.130.74.114"
+  # host.power-rhtap-prod-3.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-3.user: "root"
+  # host.power-rhtap-prod-3.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-3.concurrency: "1"
+
+  # host.power-rhtap-prod-4.address: "10.130.72.200"
+  # host.power-rhtap-prod-4.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-4.user: "root"
+  # host.power-rhtap-prod-4.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-4.concurrency: "1"
+
+  # host.power-rhtap-prod-5.address: "10.130.74.209"
+  # host.power-rhtap-prod-5.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-5.user: "root"
+  # host.power-rhtap-prod-5.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-5.concurrency: "1"
+
+  # host.power-rhtap-prod-6.address: "10.130.73.112"
+  # host.power-rhtap-prod-6.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-6.user: "root"
+  # host.power-rhtap-prod-6.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-6.concurrency: "1"
+
+  # host.power-rhtap-prod-7.address: "10.130.72.57"
+  # host.power-rhtap-prod-7.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-7.user: "root"
+  # host.power-rhtap-prod-7.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-7.concurrency: "1"
+
+  # host.power-rhtap-prod-8.address: "10.130.73.225"
+  # host.power-rhtap-prod-8.platform: "linux/ppc64le"
+  # host.power-rhtap-prod-8.user: "root"
+  # host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
+  # host.power-rhtap-prod-8.concurrency: "1"
+
+  # ## IBM ppc64le with 4CPU 16GiB RAM
+  # host.power-konflux-prod-large-1.address: "10.130.74.202"
+  # host.power-konflux-prod-large-1.platform: "linux/ppc64le"
+  # host.power-konflux-prod-large-1.user: "root"
+  # host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
+  # host.power-konflux-prod-large-1.concurrency: "1"
+
+  # host.power-konflux-prod-large-2.address: "10.130.75.232"
+  # host.power-konflux-prod-large-2.platform: "linux/ppc64le"
+  # host.power-konflux-prod-large-2.user: "root"
+  # host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
+  # host.power-konflux-prod-large-2.concurrency: "1"
 
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 54d61fca to 8739e215 on Fri Oct 4 19:14:23 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index 6673aee9..e143d8a7 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -9,3 +9,4 @@ approvers:
 - ifireball
 - mftb
 - raks-tt
+- pacho-rh 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 54d61fca to 8739e215 on Fri Oct 4 19:14:23 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index 6673aee9..e143d8a7 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -9,3 +9,4 @@ approvers:
 - ifireball
 - mftb
 - raks-tt
+- pacho-rh 
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
<h3>4: Development changes from 54d61fca to 8739e215 on Fri Oct 4 19:14:23 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index 6673aee9..e143d8a7 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -9,3 +9,4 @@ approvers:
 - ifireball
 - mftb
 - raks-tt
+- pacho-rh 
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
```
 
</details> 
<br> 


</div>
