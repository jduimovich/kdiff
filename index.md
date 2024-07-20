# kustomize changes tracked by commits 
### This file generated at Sat Jul 20 12:02:54 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a3dd4420 to 4e36de3e on Fri Jul 19 15:49:52 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index 7833ea07..5b8268d9 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,7 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- rnc
+- mmorhun
 
 reviewers:
-- stuartwdouglas
+- rnc
+- mmorhun
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
index 01ca66dc..42bab96c 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
@@ -7,7 +7,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 
 reviewers:
@@ -16,5 +15,4 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
index 67ccf411..8034d2f2 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
@@ -1,4 +1,5 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- mmorhun
+- rnc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 5d2dc40d..3630946c 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -1,11 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
 
 reviewers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
diff --git a/components/sprayproxy/OWNERS b/components/sprayproxy/OWNERS
index 2b7bda2c..6a32fd82 100644
--- a/components/sprayproxy/OWNERS
+++ b/components/sprayproxy/OWNERS
@@ -3,11 +3,9 @@
 approvers:
   - Roming22
   - adambkaplan
-  - stuartwdouglas
   - gabemontero
 
 reviewers:
-  - stuartwdouglas
   - Roming22
   - adambkaplan
   - ramessesii2 
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
<h3>1: Staging changes from a3dd4420 to 4e36de3e on Fri Jul 19 15:49:52 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index 7833ea07..5b8268d9 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,7 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- rnc
+- mmorhun
 
 reviewers:
-- stuartwdouglas
+- rnc
+- mmorhun
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
index 01ca66dc..42bab96c 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
@@ -7,7 +7,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 
 reviewers:
@@ -16,5 +15,4 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
index 67ccf411..8034d2f2 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
@@ -1,4 +1,5 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- mmorhun
+- rnc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 5d2dc40d..3630946c 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -1,11 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
 
 reviewers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
diff --git a/components/sprayproxy/OWNERS b/components/sprayproxy/OWNERS
index 2b7bda2c..6a32fd82 100644
--- a/components/sprayproxy/OWNERS
+++ b/components/sprayproxy/OWNERS
@@ -3,11 +3,9 @@
 approvers:
   - Roming22
   - adambkaplan
-  - stuartwdouglas
   - gabemontero
 
 reviewers:
-  - stuartwdouglas
   - Roming22
   - adambkaplan
   - ramessesii2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a3dd4420 to 4e36de3e on Fri Jul 19 15:49:52 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index 7833ea07..5b8268d9 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,7 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- rnc
+- mmorhun
 
 reviewers:
-- stuartwdouglas
+- rnc
+- mmorhun
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
index 01ca66dc..42bab96c 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
@@ -7,7 +7,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 
 reviewers:
@@ -16,5 +15,4 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
index 67ccf411..8034d2f2 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
@@ -1,4 +1,5 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- mmorhun
+- rnc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 5d2dc40d..3630946c 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -1,11 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
 
 reviewers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
diff --git a/components/sprayproxy/OWNERS b/components/sprayproxy/OWNERS
index 2b7bda2c..6a32fd82 100644
--- a/components/sprayproxy/OWNERS
+++ b/components/sprayproxy/OWNERS
@@ -3,11 +3,9 @@
 approvers:
   - Roming22
   - adambkaplan
-  - stuartwdouglas
   - gabemontero
 
 reviewers:
-  - stuartwdouglas
   - Roming22
   - adambkaplan
   - ramessesii2 
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
<h3>2: Production changes from c9b49f47 to a3dd4420 on Fri Jul 19 15:19:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 448d4d44..3d110bea 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
   - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+    newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 4b4eed3c..c2af070d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+- https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
 - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 namespace: mintmaker
@@ -11,7 +11,7 @@ namespace: mintmaker
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from c9b49f47 to a3dd4420 on Fri Jul 19 15:19:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 448d4d44..3d110bea 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
   - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+    newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 4b4eed3c..c2af070d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+- https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
 - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 namespace: mintmaker
@@ -11,7 +11,7 @@ namespace: mintmaker
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c9b49f47/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
535c535
<         image: quay.io/konflux-ci/mintmaker:71c868790ff585b0193278d20a76e6f46d02e84d
---
>         image: quay.io/konflux-ci/mintmaker:f6cd30afef27f7d60690690ab81a8ae397d79ce0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c9b49f47 to a3dd4420 on Fri Jul 19 15:19:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 448d4d44..3d110bea 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
   - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+    newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 4b4eed3c..c2af070d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+- https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
 - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 namespace: mintmaker
@@ -11,7 +11,7 @@ namespace: mintmaker
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c9b49f47/development/components/mintmaker/development/kustomize.out.yaml
534c534
<         image: quay.io/konflux-ci/mintmaker:71c868790ff585b0193278d20a76e6f46d02e84d
---
>         image: quay.io/konflux-ci/mintmaker:f6cd30afef27f7d60690690ab81a8ae397d79ce0 
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
<h3>3: Production changes from f906c62b to c9b49f47 on Fri Jul 19 13:46:24 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index fcc12eb3..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,19 +28,3 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
----
-apiVersion: toolchain.dev.openshift.com/v1alpha1
-kind: SpaceProvisionerConfig
-metadata:
-  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  namespace: toolchain-host-operator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  enabled: true
-  capacityThresholds:
-    maxNumberOfSpaces: 1500
-    maxMemoryUtilizationPercent: 90
-  placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/eaas 
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
<h3>3: Staging changes from f906c62b to c9b49f47 on Fri Jul 19 13:46:24 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index fcc12eb3..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,19 +28,3 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
----
-apiVersion: toolchain.dev.openshift.com/v1alpha1
-kind: SpaceProvisionerConfig
-metadata:
-  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  namespace: toolchain-host-operator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  enabled: true
-  capacityThresholds:
-    maxNumberOfSpaces: 1500
-    maxMemoryUtilizationPercent: 90
-  placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/eaas 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from f906c62b to c9b49f47 on Fri Jul 19 13:46:24 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index fcc12eb3..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,19 +28,3 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
----
-apiVersion: toolchain.dev.openshift.com/v1alpha1
-kind: SpaceProvisionerConfig
-metadata:
-  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  namespace: toolchain-host-operator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  enabled: true
-  capacityThresholds:
-    maxNumberOfSpaces: 1500
-    maxMemoryUtilizationPercent: 90
-  placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/eaas 
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
<h3>4: Production changes from 06b5d9cd to f906c62b on Fri Jul 19 13:06:45 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index b002ddec..ed097778 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -10,7 +10,7 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
<h3>4: Staging changes from 06b5d9cd to f906c62b on Fri Jul 19 13:06:45 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index b002ddec..ed097778 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -10,7 +10,7 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 06b5d9cd to f906c62b on Fri Jul 19 13:06:45 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
index b002ddec..ed097778 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/toolchainconfig.yaml
@@ -10,7 +10,7 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
