# kustomize changes tracked by commits 
### This file generated at Wed Sep 25 12:07:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 19003221 to 8bc8eeb3 on Wed Sep 25 10:23:11 2024 </h3>  
 
<details> 
<summary>Git Diff (2111 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
index fcef20d2..b79ab87c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: alkazako
   name: alkazako
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
index 6df0c3d7..9e64c472 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bcook
   name: bcook
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
index fca4c603..9782f69b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bkundu
   name: bkundu
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
index e954a85e..a43b7d7b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bsutter
   name: bsutter
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
index 23427bbe..8eda54ae 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dfodor
   name: dfodor
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
index 15b0babb..48a2d0e7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dperaza4dustbit
   name: dperaza4dustbit
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
index 46dbeb30..fc198b0d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: eedri
   name: eedri
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
index e65c4cbd..ea85aecc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ergonzal
   name: ergonzal
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
index 3ff8b7cf..ca164b1d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: filariow
   name: filariow
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
index 73c51c58..da58f3c5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: fmuntean
   name: fmuntean
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
index aa35b75b..4e18e61d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: gbenhaim
   name: gbenhaim
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
index 60103775..55d435a8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: hugares
   name: hugares
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
index 67d10f80..f5b2f3eb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: mjobanek
   name: mjobanek
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
index 06378cf8..2eb4b3fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: pdave
   name: pdave
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
index ee81a057..7d0b4d23 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ralphbean
   name: ralphbean
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
index 31ae8a2b..18fb2f9b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: rorai
   name: rorai
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
index b8ae5a02..ca1a83b2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: sadlerap
   name: sadlerap
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
index cf46a6ed..5c0d1983 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: saviv
   name: saviv
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
index 07891fb3..829892fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
index 7d9302cc..e6572f16 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
index e95375b6..f2ddcb03 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bkundu-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
index 4c94ba0a..164ff411 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
index a5c6d7d6..378906a8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
index 63b312b2..ce7d3556 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
index 6c3b44b1..21e2b431 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
index 42197234..0388ea66 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
index 1dd78280..2c23632a 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
index eef26c99..81d3185c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
index 0735ab84..cecf6d39 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
index 73038f03..8ab13ea5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
index 0a618a16..06710989 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
index fe9883e4..de5716dc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-pdave-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
index 427a8a31..7962ad0d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
index ef115f89..81c3b246 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-rorai-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
index 7f13e068..356e5848 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
index a399ea65..5d07560b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
index a459a39d..e72d0cbe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
index ec73894e..1d20e861 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
index f7e8e58e..381b13d0 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
index cac3558d..afc6f7fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
index ceab34c3..f752885b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
index 78995b3c..db23ee36 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
index 4906d1de..01b433f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
index c2c8c114..a04e2113 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
index d5a9bc61..0a5804ee 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bkundu-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
index e07bf189..54f43ceb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
index 51185c01..9ba6f85e 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
index 71eb013c..6a92ecff 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
index 57527af3..57f388f6 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
index e5d7f03a..44ef4714 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
index dc3078af..6a250a9c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
index 4a9604a8..fbfc6d6c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
index 74e51711..3c59b09f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
index ee680784..1f50e80b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
index c2660aae..aa6f8875 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
index 0fb338b7..91966867 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-pdave-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
index cf7baeb2..216a21bb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
index 623406ef..ae95b341 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-rorai-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
index ef2cb845..b69ebbc1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
index bd06ce8b..15a16b19 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
index aac0ca4f..093db2d3 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
index 30b08ad9..cc371edd 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
index 68269b94..a84bdd08 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
index f80bddb1..725a4597 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
index f045f175..7fe6c0e1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
index f6acfe97..cbf995df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
index 82164f79..99fe35f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
index da025455..fa9f0d01 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
index 1104ebe2..9b4e0e1b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
index 491aa7df..c9a4b2ab 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
index 29f2bcb6..fdab130d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
index 82b12380..e6119a49 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
index 785918b5..ba7574b5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
index 3b028bdc..ad7259bc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
index cbc5cf72..d542181f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
index c6f0676c..08b5a5f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
index 5415a576..f1553d84 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
index 8b484a30..4c404afc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 8ce5e802..26bd090d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -84,8 +84,8 @@ resources:
 - retarget-user-bcook-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
-- retarget-user-eedri-host.yaml
 - retarget-user-dperaza4dustbit-host.yaml
+- retarget-user-eedri-host.yaml
 - retarget-user-ergonzal-host.yaml
 - retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
index 6ccc892a..1ae86461 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
index 2300d3f3..da550d6d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
index 13c663ce..99038950 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
index 69f794bb..5f59eb8b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
index a449f4d6..4fd649df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
index addcc1d8..e926e1cd 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
index 5f95416d..0456c3ab 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
index 6191f5f5..5e9fd7fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
index 36ab30e7..5eebedb1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
index 0a05caca..0b4fea14 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
index 07e1b1bb..f9f4dda8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
index 96eec086..a0f5aaea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
index f37d62d2..a063f421 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
index ee60ad8c..8013eeea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
index 37a0f143..efdda7f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
index 7bddfb79..b579183c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
index f6f709e4..121e92f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
index 8d468231..87be25c5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
index 48b43cc3..bdca0d48 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
index 50d011c0..c446c9f8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
index 15071fee..7f47ea1c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
index fabd94d4..ef97eb35 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
index 79c1dbda..07f0b32b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index d8438153..1249a4a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
index aea09afb..6f7f66c7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
index 2ad0446f..8f25c93c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
index 12d1bf26..23b93c84 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
index fa9841a8..9a62f7a1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
index 00852d67..5a946dea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
index 12e3da7e..8d0c3652 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
index 89da86ee..be41d764 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
index f7fb9a9f..925bdd55 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
index 4d9483de..2d93de44 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
index 0eee9d5b..2268a2a3 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
index d5df27a6..c3e57c54 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
index 66d5b68d..52bf7d20 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
index 1bbe1f83..1b2838af 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
index 761229b2..0bc9164d 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: alkazako
   name: alkazako
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
index 2a71fb3f..70e36ce4 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bcook
   name: bcook
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
index 3fc5186e..a379c69e 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bkundu
   name: bkundu
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
index 405365a3..0e1555ae 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bsutter
   name: bsutter
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
index 84b734f8..faf7e191 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dfodor
   name: dfodor
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
index 01dbca0e..2bb65279 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dperaza4dustbit
   name: dperaza4dustbit
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
index 8ca58f64..6d042e98 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: eedri
   name: eedri
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
index 37686f32..0dafc150 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ergonzal
   name: ergonzal
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
index 9b6a2301..2a886f81 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: filariow
   name: filariow
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
index 798e5a5b..82f19e40 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: fmuntean
   name: fmuntean
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
index 43c8c26b..9c809ba5 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: gbenhaim
   name: gbenhaim
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
index 406822b2..a6a86f04 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: hugares
   name: hugares
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
index b2a1b5dc..d857bd4c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: mjobanek
   name: mjobanek
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
index 4071f398..c9f361f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: pdave
   name: pdave
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
index 487b30ec..d5aaa846 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ralphbean
   name: ralphbean
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
index 2705ebb2..a902c6f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: rorai
   name: rorai
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
index 4f3cf84c..005c538d 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: sadlerap
   name: sadlerap
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
index 29b034af..2f9e9ab7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: saviv
   name: saviv
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
index 16afd21e..8228c1f0 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-alkazako-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
index da56d11a..648ab398 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bcook-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
index fb2ea7f7..de6f611a 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bkundu-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
index f9d0b367..f9154495 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bsutter-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
index fe60451d..d18ed518 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dfodor-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
index 9f5013c2..0d8e41a1 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dperaza4dustbit-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
index 86cc2e91..3fe054ba 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-eedri-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
index fca650e6..243d9a55 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ergonzal-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
index cc61c367..34bd60cb 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-filariow-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
index c32f4975..1c4ee4ee 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-fmuntean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
index ef30f369..6081b5a3 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-gbenhaim-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
index 88a7492f..9483a1a0 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-hugares-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
index 38c53ad1..0db49d23 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-mjobanek-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
index dd3030f6..7c327a9a 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-pdave-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
index 7c590c36..feefaa29 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ralphbean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
index 332b92a7..be788698 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-rorai-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
index f8675a1f..6829248e 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-sadlerap-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
index 1e733668..3de0d6db 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-saviv-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
index 4ede57db..65a149b7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-alkazako-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
index 4b34ee8a..7aa2141c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-bkundu-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
index b2a212c3..2a607ab7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-dperaza4dustbit-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
index a97bca8b..c96ba867 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-filariow-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
index 7fc830b9..98ba33ff 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-fmuntean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
index d6f71cb2..4984db5c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-mjobanek-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
index db508bcf..681e6ef4 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-sadlerap-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
index 940829f8..300081c1 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-member
   namespace: toolchain-member-operator
 rules:
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index ca1193e4..ac8845b6 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -7,6 +7,10 @@ clusters:
   - api: https://api.stone-prd-rh01.pg1f.p1.openshiftapps.com:6443
     name: member-rh-1
 
+defaultServiceAccountsNamespace:
+  host: sandbox-sre-host
+  member: sandbox-sre-member
+
 serviceAccounts:
 ## service accounts to be used by humans via `ksctl`
 - name: alkazako
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index d9d94c52..967fd555 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -5,6 +5,10 @@ clusters:
   - api: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
     name: member-rh-1
 
+defaultServiceAccountsNamespace:
+  host: sandbox-sre-host
+  member: sandbox-sre-member
+
 serviceAccounts:
 ## service accounts to be used by humans via `ksctl`
 - name: filariow 
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
<h3>1: Staging changes from 19003221 to 8bc8eeb3 on Wed Sep 25 10:23:11 2024 </h3>  
 
<details> 
<summary>Git Diff (2111 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
index fcef20d2..b79ab87c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: alkazako
   name: alkazako
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
index 6df0c3d7..9e64c472 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bcook
   name: bcook
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
index fca4c603..9782f69b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bkundu
   name: bkundu
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
index e954a85e..a43b7d7b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bsutter
   name: bsutter
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
index 23427bbe..8eda54ae 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dfodor
   name: dfodor
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
index 15b0babb..48a2d0e7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dperaza4dustbit
   name: dperaza4dustbit
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
index 46dbeb30..fc198b0d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: eedri
   name: eedri
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
index e65c4cbd..ea85aecc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ergonzal
   name: ergonzal
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
index 3ff8b7cf..ca164b1d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: filariow
   name: filariow
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
index 73c51c58..da58f3c5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: fmuntean
   name: fmuntean
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
index aa35b75b..4e18e61d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: gbenhaim
   name: gbenhaim
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
index 60103775..55d435a8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: hugares
   name: hugares
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
index 67d10f80..f5b2f3eb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: mjobanek
   name: mjobanek
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
index 06378cf8..2eb4b3fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: pdave
   name: pdave
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
index ee81a057..7d0b4d23 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ralphbean
   name: ralphbean
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
index 31ae8a2b..18fb2f9b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: rorai
   name: rorai
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
index b8ae5a02..ca1a83b2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: sadlerap
   name: sadlerap
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
index cf46a6ed..5c0d1983 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: saviv
   name: saviv
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
index 07891fb3..829892fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
index 7d9302cc..e6572f16 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
index e95375b6..f2ddcb03 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bkundu-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
index 4c94ba0a..164ff411 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
index a5c6d7d6..378906a8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
index 63b312b2..ce7d3556 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
index 6c3b44b1..21e2b431 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
index 42197234..0388ea66 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
index 1dd78280..2c23632a 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
index eef26c99..81d3185c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
index 0735ab84..cecf6d39 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
index 73038f03..8ab13ea5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
index 0a618a16..06710989 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
index fe9883e4..de5716dc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-pdave-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
index 427a8a31..7962ad0d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
index ef115f89..81c3b246 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-rorai-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
index 7f13e068..356e5848 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
index a399ea65..5d07560b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
index a459a39d..e72d0cbe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
index ec73894e..1d20e861 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
index f7e8e58e..381b13d0 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
index cac3558d..afc6f7fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
index ceab34c3..f752885b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
index 78995b3c..db23ee36 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
index 4906d1de..01b433f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
index c2c8c114..a04e2113 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
index d5a9bc61..0a5804ee 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bkundu-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
index e07bf189..54f43ceb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
index 51185c01..9ba6f85e 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
index 71eb013c..6a92ecff 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
index 57527af3..57f388f6 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
index e5d7f03a..44ef4714 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
index dc3078af..6a250a9c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
index 4a9604a8..fbfc6d6c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
index 74e51711..3c59b09f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
index ee680784..1f50e80b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
index c2660aae..aa6f8875 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
index 0fb338b7..91966867 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-pdave-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
index cf7baeb2..216a21bb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
index 623406ef..ae95b341 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-rorai-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
index ef2cb845..b69ebbc1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
index bd06ce8b..15a16b19 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
index aac0ca4f..093db2d3 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
index 30b08ad9..cc371edd 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
index 68269b94..a84bdd08 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
index f80bddb1..725a4597 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
index f045f175..7fe6c0e1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
index f6acfe97..cbf995df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
index 82164f79..99fe35f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
index da025455..fa9f0d01 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
index 1104ebe2..9b4e0e1b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
index 491aa7df..c9a4b2ab 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
index 29f2bcb6..fdab130d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
index 82b12380..e6119a49 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
index 785918b5..ba7574b5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
index 3b028bdc..ad7259bc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
index cbc5cf72..d542181f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
index c6f0676c..08b5a5f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
index 5415a576..f1553d84 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
index 8b484a30..4c404afc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 8ce5e802..26bd090d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -84,8 +84,8 @@ resources:
 - retarget-user-bcook-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
-- retarget-user-eedri-host.yaml
 - retarget-user-dperaza4dustbit-host.yaml
+- retarget-user-eedri-host.yaml
 - retarget-user-ergonzal-host.yaml
 - retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
index 6ccc892a..1ae86461 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
index 2300d3f3..da550d6d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
index 13c663ce..99038950 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
index 69f794bb..5f59eb8b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
index a449f4d6..4fd649df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
index addcc1d8..e926e1cd 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
index 5f95416d..0456c3ab 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
index 6191f5f5..5e9fd7fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
index 36ab30e7..5eebedb1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
index 0a05caca..0b4fea14 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
index 07e1b1bb..f9f4dda8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
index 96eec086..a0f5aaea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
index f37d62d2..a063f421 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
index ee60ad8c..8013eeea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
index 37a0f143..efdda7f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
index 7bddfb79..b579183c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
index f6f709e4..121e92f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
index 8d468231..87be25c5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
index 48b43cc3..bdca0d48 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
index 50d011c0..c446c9f8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
index 15071fee..7f47ea1c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
index fabd94d4..ef97eb35 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
index 79c1dbda..07f0b32b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index d8438153..1249a4a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
index aea09afb..6f7f66c7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
index 2ad0446f..8f25c93c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
index 12d1bf26..23b93c84 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
index fa9841a8..9a62f7a1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
index 00852d67..5a946dea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
index 12e3da7e..8d0c3652 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
index 89da86ee..be41d764 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
index f7fb9a9f..925bdd55 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
index 4d9483de..2d93de44 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
index 0eee9d5b..2268a2a3 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
index d5df27a6..c3e57c54 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
index 66d5b68d..52bf7d20 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
index 1bbe1f83..1b2838af 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
index 761229b2..0bc9164d 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: alkazako
   name: alkazako
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
index 2a71fb3f..70e36ce4 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bcook
   name: bcook
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
index 3fc5186e..a379c69e 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bkundu
   name: bkundu
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
index 405365a3..0e1555ae 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bsutter
   name: bsutter
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
index 84b734f8..faf7e191 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dfodor
   name: dfodor
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
index 01dbca0e..2bb65279 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dperaza4dustbit
   name: dperaza4dustbit
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
index 8ca58f64..6d042e98 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: eedri
   name: eedri
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
index 37686f32..0dafc150 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ergonzal
   name: ergonzal
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
index 9b6a2301..2a886f81 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: filariow
   name: filariow
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
index 798e5a5b..82f19e40 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: fmuntean
   name: fmuntean
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
index 43c8c26b..9c809ba5 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: gbenhaim
   name: gbenhaim
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
index 406822b2..a6a86f04 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: hugares
   name: hugares
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
index b2a1b5dc..d857bd4c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: mjobanek
   name: mjobanek
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
index 4071f398..c9f361f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: pdave
   name: pdave
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
index 487b30ec..d5aaa846 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ralphbean
   name: ralphbean
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
index 2705ebb2..a902c6f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: rorai
   name: rorai
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
index 4f3cf84c..005c538d 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: sadlerap
   name: sadlerap
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
index 29b034af..2f9e9ab7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: saviv
   name: saviv
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
index 16afd21e..8228c1f0 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-alkazako-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
index da56d11a..648ab398 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bcook-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
index fb2ea7f7..de6f611a 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bkundu-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
index f9d0b367..f9154495 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bsutter-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
index fe60451d..d18ed518 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dfodor-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
index 9f5013c2..0d8e41a1 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dperaza4dustbit-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
index 86cc2e91..3fe054ba 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-eedri-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
index fca650e6..243d9a55 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ergonzal-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
index cc61c367..34bd60cb 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-filariow-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
index c32f4975..1c4ee4ee 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-fmuntean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
index ef30f369..6081b5a3 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-gbenhaim-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
index 88a7492f..9483a1a0 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-hugares-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
index 38c53ad1..0db49d23 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-mjobanek-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
index dd3030f6..7c327a9a 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-pdave-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
index 7c590c36..feefaa29 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ralphbean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
index 332b92a7..be788698 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-rorai-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
index f8675a1f..6829248e 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-sadlerap-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
index 1e733668..3de0d6db 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-saviv-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
index 4ede57db..65a149b7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-alkazako-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
index 4b34ee8a..7aa2141c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-bkundu-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
index b2a212c3..2a607ab7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-dperaza4dustbit-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
index a97bca8b..c96ba867 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-filariow-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
index 7fc830b9..98ba33ff 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-fmuntean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
index d6f71cb2..4984db5c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-mjobanek-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
index db508bcf..681e6ef4 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-sadlerap-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
index 940829f8..300081c1 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-member
   namespace: toolchain-member-operator
 rules:
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index ca1193e4..ac8845b6 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -7,6 +7,10 @@ clusters:
   - api: https://api.stone-prd-rh01.pg1f.p1.openshiftapps.com:6443
     name: member-rh-1
 
+defaultServiceAccountsNamespace:
+  host: sandbox-sre-host
+  member: sandbox-sre-member
+
 serviceAccounts:
 ## service accounts to be used by humans via `ksctl`
 - name: alkazako
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index d9d94c52..967fd555 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -5,6 +5,10 @@ clusters:
   - api: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
     name: member-rh-1
 
+defaultServiceAccountsNamespace:
+  host: sandbox-sre-host
+  member: sandbox-sre-member
+
 serviceAccounts:
 ## service accounts to be used by humans via `ksctl`
 - name: filariow 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 19003221 to 8bc8eeb3 on Wed Sep 25 10:23:11 2024 </h3>  
 
<details> 
<summary>Git Diff (2111 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
index fcef20d2..b79ab87c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: alkazako
   name: alkazako
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
index 6df0c3d7..9e64c472 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bcook
   name: bcook
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
index fca4c603..9782f69b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bkundu
   name: bkundu
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
index e954a85e..a43b7d7b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bsutter
   name: bsutter
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
index 23427bbe..8eda54ae 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dfodor
   name: dfodor
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
index 15b0babb..48a2d0e7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dperaza4dustbit
   name: dperaza4dustbit
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
index 46dbeb30..fc198b0d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/eedri.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: eedri
   name: eedri
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
index e65c4cbd..ea85aecc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ergonzal
   name: ergonzal
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
index 3ff8b7cf..ca164b1d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/filariow.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: filariow
   name: filariow
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
index 73c51c58..da58f3c5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: fmuntean
   name: fmuntean
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
index aa35b75b..4e18e61d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: gbenhaim
   name: gbenhaim
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
index 60103775..55d435a8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/hugares.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: hugares
   name: hugares
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
index 67d10f80..f5b2f3eb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: mjobanek
   name: mjobanek
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
index 06378cf8..2eb4b3fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: pdave
   name: pdave
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
index ee81a057..7d0b4d23 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ralphbean
   name: ralphbean
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
index 31ae8a2b..18fb2f9b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: rorai
   name: rorai
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
index b8ae5a02..ca1a83b2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/sadlerap.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: sadlerap
   name: sadlerap
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
index cf46a6ed..5c0d1983 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: saviv
   name: saviv
   namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
index 07891fb3..829892fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
index 7d9302cc..e6572f16 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
index e95375b6..f2ddcb03 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bkundu-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
index 4c94ba0a..164ff411 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
index a5c6d7d6..378906a8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
index 63b312b2..ce7d3556 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
index 6c3b44b1..21e2b431 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
index 42197234..0388ea66 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
index 1dd78280..2c23632a 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
index eef26c99..81d3185c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
index 0735ab84..cecf6d39 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
index 73038f03..8ab13ea5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
index 0a618a16..06710989 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
index fe9883e4..de5716dc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-pdave-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
index 427a8a31..7962ad0d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
index ef115f89..81c3b246 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-rorai-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
index 7f13e068..356e5848 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
index a399ea65..5d07560b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
index a459a39d..e72d0cbe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
index ec73894e..1d20e861 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
index f7e8e58e..381b13d0 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
index cac3558d..afc6f7fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
index ceab34c3..f752885b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
index 78995b3c..db23ee36 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
index 4906d1de..01b433f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
index c2c8c114..a04e2113 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
index d5a9bc61..0a5804ee 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bkundu-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
index e07bf189..54f43ceb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
index 51185c01..9ba6f85e 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
index 71eb013c..6a92ecff 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
index 57527af3..57f388f6 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
index e5d7f03a..44ef4714 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
index dc3078af..6a250a9c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
index 4a9604a8..fbfc6d6c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
index 74e51711..3c59b09f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
index ee680784..1f50e80b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
index c2660aae..aa6f8875 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
index 0fb338b7..91966867 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-pdave-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
index cf7baeb2..216a21bb 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
index 623406ef..ae95b341 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-rorai-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
index ef2cb845..b69ebbc1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
index bd06ce8b..15a16b19 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
index aac0ca4f..093db2d3 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
index 30b08ad9..cc371edd 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
index 68269b94..a84bdd08 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
index f80bddb1..725a4597 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
index f045f175..7fe6c0e1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
index f6acfe97..cbf995df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
index 82164f79..99fe35f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
index da025455..fa9f0d01 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
index 1104ebe2..9b4e0e1b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
index 491aa7df..c9a4b2ab 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
index 29f2bcb6..fdab130d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
index 82b12380..e6119a49 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
index 785918b5..ba7574b5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
index 3b028bdc..ad7259bc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
index cbc5cf72..d542181f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
index c6f0676c..08b5a5f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
index 5415a576..f1553d84 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
index 8b484a30..4c404afc 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 8ce5e802..26bd090d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -84,8 +84,8 @@ resources:
 - retarget-user-bcook-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
-- retarget-user-eedri-host.yaml
 - retarget-user-dperaza4dustbit-host.yaml
+- retarget-user-eedri-host.yaml
 - retarget-user-ergonzal-host.yaml
 - retarget-user-filariow-host.yaml
 - retarget-user-fmuntean-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
index 6ccc892a..1ae86461 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
index 2300d3f3..da550d6d 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
index 13c663ce..99038950 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
index 69f794bb..5f59eb8b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
index a449f4d6..4fd649df 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
index addcc1d8..e926e1cd 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
index 5f95416d..0456c3ab 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
index 6191f5f5..5e9fd7fe 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
index 36ab30e7..5eebedb1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
index 0a05caca..0b4fea14 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
index 07e1b1bb..f9f4dda8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
index 96eec086..a0f5aaea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
index f37d62d2..a063f421 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
index ee60ad8c..8013eeea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
index 37a0f143..efdda7f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
index 7bddfb79..b579183c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-alkazako-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
index f6f709e4..121e92f7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-bcook-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
index 8d468231..87be25c5 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-bsutter-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
index 48b43cc3..bdca0d48 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-dfodor-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
index 50d011c0..c446c9f8 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-dperaza4dustbit-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
index 15071fee..7f47ea1c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-eedri-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-eedri-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
index fabd94d4..ef97eb35 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-ergonzal-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
index 79c1dbda..07f0b32b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-filariow-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-filariow-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index d8438153..1249a4a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
index aea09afb..6f7f66c7 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-gbenhaim-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
index 2ad0446f..8f25c93c 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-hugares-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-hugares-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
index 12d1bf26..23b93c84 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-mjobanek-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
index fa9841a8..9a62f7a1 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-ralphbean-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
index 00852d67..5a946dea 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-sadlerap-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-sadlerap-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
index 12e3da7e..8d0c3652 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-saviv-host
   namespace: toolchain-host-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
index 89da86ee..be41d764 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: approve-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
index f7fb9a9f..925bdd55 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: ban-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
index 4d9483de..2d93de44 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: deactivate-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
index 0eee9d5b..2268a2a3 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: gdpr-delete-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
index d5df27a6..c3e57c54 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: promote-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
index 66d5b68d..52bf7d20 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
index 1bbe1f83..1b2838af 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: retarget-user-host
   namespace: toolchain-host-operator
 rules:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
index 761229b2..0bc9164d 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: alkazako
   name: alkazako
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
index 2a71fb3f..70e36ce4 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bcook
   name: bcook
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
index 3fc5186e..a379c69e 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bkundu
   name: bkundu
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
index 405365a3..0e1555ae 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: bsutter
   name: bsutter
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
index 84b734f8..faf7e191 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dfodor
   name: dfodor
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
index 01dbca0e..2bb65279 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: dperaza4dustbit
   name: dperaza4dustbit
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
index 8ca58f64..6d042e98 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/eedri.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: eedri
   name: eedri
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
index 37686f32..0dafc150 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ergonzal
   name: ergonzal
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
index 9b6a2301..2a886f81 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/filariow.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: filariow
   name: filariow
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
index 798e5a5b..82f19e40 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: fmuntean
   name: fmuntean
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
index 43c8c26b..9c809ba5 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: gbenhaim
   name: gbenhaim
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
index 406822b2..a6a86f04 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/hugares.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: hugares
   name: hugares
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
index b2a1b5dc..d857bd4c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: mjobanek
   name: mjobanek
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
index 4071f398..c9f361f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: pdave
   name: pdave
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
index 487b30ec..d5aaa846 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: ralphbean
   name: ralphbean
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
index 2705ebb2..a902c6f9 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: rorai
   name: rorai
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
index 4f3cf84c..005c538d 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/sadlerap.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: sadlerap
   name: sadlerap
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
index 29b034af..2f9e9ab7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
@@ -8,7 +8,7 @@ metadata:
   annotations:
     argocd.argoproj.io/compare-options: IgnoreExtraneous
   labels:
-    provider: sandbox-sre
+    provider: ksctl
     username: saviv
   name: saviv
   namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
index 16afd21e..8228c1f0 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-alkazako-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
index da56d11a..648ab398 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bcook-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
index fb2ea7f7..de6f611a 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bkundu-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
index f9d0b367..f9154495 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-bsutter-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
index fe60451d..d18ed518 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dfodor-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
index 9f5013c2..0d8e41a1 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-dperaza4dustbit-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
index 86cc2e91..3fe054ba 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-eedri-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-eedri-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
index fca650e6..243d9a55 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ergonzal-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
index cc61c367..34bd60cb 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-filariow-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-filariow-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
index c32f4975..1c4ee4ee 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-fmuntean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
index ef30f369..6081b5a3 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-gbenhaim-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
index 88a7492f..9483a1a0 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-hugares-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-hugares-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
index 38c53ad1..0db49d23 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-mjobanek-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
index dd3030f6..7c327a9a 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-pdave-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
index 7c590c36..feefaa29 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-ralphbean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
index 332b92a7..be788698 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-rorai-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
index f8675a1f..6829248e 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-sadlerap-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-sadlerap-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
index 1e733668..3de0d6db 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: clusterrole-view-saviv-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
index 4ede57db..65a149b7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-alkazako-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
index 4b34ee8a..7aa2141c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-bkundu-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
index b2a212c3..2a607ab7 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-dperaza4dustbit-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
index a97bca8b..c96ba867 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-filariow-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-filariow-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
index 7fc830b9..98ba33ff 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-fmuntean-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
index d6f71cb2..4984db5c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-mjobanek-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
index db508bcf..681e6ef4 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-sadlerap-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-sadlerap-member
   namespace: toolchain-member-operator
 roleRef:
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
index 940829f8..300081c1 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
@@ -6,7 +6,7 @@ apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
 metadata:
   labels:
-    provider: sandbox-sre
+    provider: ksctl
   name: restart-deployment-member
   namespace: toolchain-member-operator
 rules:
diff --git a/components/sandbox/user-management/production/kubesaw-admins.yaml b/components/sandbox/user-management/production/kubesaw-admins.yaml
index ca1193e4..ac8845b6 100644
--- a/components/sandbox/user-management/production/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/production/kubesaw-admins.yaml
@@ -7,6 +7,10 @@ clusters:
   - api: https://api.stone-prd-rh01.pg1f.p1.openshiftapps.com:6443
     name: member-rh-1
 
+defaultServiceAccountsNamespace:
+  host: sandbox-sre-host
+  member: sandbox-sre-member
+
 serviceAccounts:
 ## service accounts to be used by humans via `ksctl`
 - name: alkazako
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index d9d94c52..967fd555 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -5,6 +5,10 @@ clusters:
   - api: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
     name: member-rh-1
 
+defaultServiceAccountsNamespace:
+  host: sandbox-sre-host
+  member: sandbox-sre-member
+
 serviceAccounts:
 ## service accounts to be used by humans via `ksctl`
 - name: filariow 
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
<h3>2: Production changes from a5a84d7b to 19003221 on Wed Sep 25 09:14:17 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ff0fec68..feaecbd9 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=6490addcce1fe70b718a45151063204500a697b9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=6490addcce1fe70b718a45151063204500a697b9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
+    newTag: 6490addcce1fe70b718a45151063204500a697b9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index e35d4428..c9ed7426 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+- https://github.com/konflux-ci/mintmaker/config/default?ref=6490addcce1fe70b718a45151063204500a697b9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=6490addcce1fe70b718a45151063204500a697b9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
+  newTag: 6490addcce1fe70b718a45151063204500a697b9
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a5a84d7b to 19003221 on Wed Sep 25 09:14:17 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ff0fec68..feaecbd9 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=6490addcce1fe70b718a45151063204500a697b9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=6490addcce1fe70b718a45151063204500a697b9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
+    newTag: 6490addcce1fe70b718a45151063204500a697b9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index e35d4428..c9ed7426 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+- https://github.com/konflux-ci/mintmaker/config/default?ref=6490addcce1fe70b718a45151063204500a697b9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=6490addcce1fe70b718a45151063204500a697b9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
+  newTag: 6490addcce1fe70b718a45151063204500a697b9
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a5a84d7b/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
706c706
<         image: quay.io/konflux-ci/mintmaker:6490addcce1fe70b718a45151063204500a697b9
---
>         image: quay.io/konflux-ci/mintmaker:8bb50348505c37d87ef4e95f85d7662c348addd9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a5a84d7b to 19003221 on Wed Sep 25 09:14:17 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ff0fec68..feaecbd9 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=6490addcce1fe70b718a45151063204500a697b9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=6490addcce1fe70b718a45151063204500a697b9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
+    newTag: 6490addcce1fe70b718a45151063204500a697b9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index e35d4428..c9ed7426 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+- https://github.com/konflux-ci/mintmaker/config/default?ref=6490addcce1fe70b718a45151063204500a697b9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=6490addcce1fe70b718a45151063204500a697b9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
+  newTag: 6490addcce1fe70b718a45151063204500a697b9
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a5a84d7b/development/components/mintmaker/development/kustomize.out.yaml
705c705
<         image: quay.io/konflux-ci/mintmaker:6490addcce1fe70b718a45151063204500a697b9
---
>         image: quay.io/konflux-ci/mintmaker:8bb50348505c37d87ef4e95f85d7662c348addd9 
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
<h3>3: Production changes from 96b23d84 to a5a84d7b on Tue Sep 24 20:07:47 2024 </h3>  
 
<details> 
<summary>Git Diff (1820 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index 756807d0..e64ee99b 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
+- tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
 - tiertemplate-appstudio-tenant-649666048-649666048.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
 - tiertemplate-appstudio-viewer-4256863455-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index e18eed49..ae9f3bad 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-649666048-649666048
+  - templateRef: appstudio-tenant-4121561789-4121561789
   spaceRoles:
     admin:
       templateRef: appstudio-admin-849337768-849337768
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
new file mode 100644
index 00000000..287922a8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-4121561789-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 4121561789-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index 08468b40..a7b662e8 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -26,6 +26,7 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-649666048.yaml
+- tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
 - tiertemplate-appstudiolarge-tenant-3994678728-649666048.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index cd69f8c5..0df7db71 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-3994678728-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-3994678728-649666048
+  - templateRef: appstudiolarge-tenant-3994678728-4121561789
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-3994678728-849337768
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
new file mode 100644
index 00000000..52b7a1d8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-3994678728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index c2bd61b6..7e9fccb9 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -10,5 +10,6 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 21bea3b5..173ed6af 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudioxlarge-clusterresources-884010306-3180033938
   namespaces:
-  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  - templateRef: appstudioxlarge-tenant-884010306-4121561789
   spaceRoles:
     admin:
       templateRef: appstudioxlarge-admin-884010306-849337768
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
new file mode 100644
index 00000000..496e424b
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 23184fdd..3e4862f9 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -109,9 +109,9 @@ objects:
     hard:
       count/releaseplanadmissions.appstudio.redhat.com: "512"
       count/releaseplans.appstudio.redhat.com: "512"
-      count/releases.appstudio.redhat.com: "512"
+      count/releases.appstudio.redhat.com: "1024"
       count/releasestrategies.appstudio.redhat.com: "512"
-      count/internalrequests.appstudio.redhat.com: "512"
+      count/internalrequests.appstudio.redhat.com: "4096"
 - apiVersion: v1
   kind: ResourceQuota
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 756807d0..e64ee99b 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
+- tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
 - tiertemplate-appstudio-tenant-649666048-649666048.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
 - tiertemplate-appstudio-viewer-4256863455-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index e18eed49..ae9f3bad 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-649666048-649666048
+  - templateRef: appstudio-tenant-4121561789-4121561789
   spaceRoles:
     admin:
       templateRef: appstudio-admin-849337768-849337768
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
new file mode 100644
index 00000000..287922a8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-4121561789-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 4121561789-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 6477ff6d..d3a42fd1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -27,6 +27,7 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-649666048.yaml
+- tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
 - tiertemplate-appstudiolarge-tenant-3994678728-649666048.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index cd69f8c5..0df7db71 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-3994678728-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-3994678728-649666048
+  - templateRef: appstudiolarge-tenant-3994678728-4121561789
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-3994678728-849337768
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
new file mode 100644
index 00000000..52b7a1d8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-3994678728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index c2bd61b6..7e9fccb9 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -10,5 +10,6 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 21bea3b5..173ed6af 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudioxlarge-clusterresources-884010306-3180033938
   namespaces:
-  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  - templateRef: appstudioxlarge-tenant-884010306-4121561789
   spaceRoles:
     admin:
       templateRef: appstudioxlarge-admin-884010306-849337768
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
new file mode 100644
index 00000000..496e424b
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant 
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
<h3>3: Staging changes from 96b23d84 to a5a84d7b on Tue Sep 24 20:07:47 2024 </h3>  
 
<details> 
<summary>Git Diff (1820 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index 756807d0..e64ee99b 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
+- tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
 - tiertemplate-appstudio-tenant-649666048-649666048.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
 - tiertemplate-appstudio-viewer-4256863455-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index e18eed49..ae9f3bad 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-649666048-649666048
+  - templateRef: appstudio-tenant-4121561789-4121561789
   spaceRoles:
     admin:
       templateRef: appstudio-admin-849337768-849337768
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
new file mode 100644
index 00000000..287922a8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-4121561789-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 4121561789-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index 08468b40..a7b662e8 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -26,6 +26,7 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-649666048.yaml
+- tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
 - tiertemplate-appstudiolarge-tenant-3994678728-649666048.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index cd69f8c5..0df7db71 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-3994678728-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-3994678728-649666048
+  - templateRef: appstudiolarge-tenant-3994678728-4121561789
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-3994678728-849337768
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
new file mode 100644
index 00000000..52b7a1d8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-3994678728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index c2bd61b6..7e9fccb9 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -10,5 +10,6 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 21bea3b5..173ed6af 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudioxlarge-clusterresources-884010306-3180033938
   namespaces:
-  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  - templateRef: appstudioxlarge-tenant-884010306-4121561789
   spaceRoles:
     admin:
       templateRef: appstudioxlarge-admin-884010306-849337768
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
new file mode 100644
index 00000000..496e424b
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 23184fdd..3e4862f9 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -109,9 +109,9 @@ objects:
     hard:
       count/releaseplanadmissions.appstudio.redhat.com: "512"
       count/releaseplans.appstudio.redhat.com: "512"
-      count/releases.appstudio.redhat.com: "512"
+      count/releases.appstudio.redhat.com: "1024"
       count/releasestrategies.appstudio.redhat.com: "512"
-      count/internalrequests.appstudio.redhat.com: "512"
+      count/internalrequests.appstudio.redhat.com: "4096"
 - apiVersion: v1
   kind: ResourceQuota
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 756807d0..e64ee99b 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
+- tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
 - tiertemplate-appstudio-tenant-649666048-649666048.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
 - tiertemplate-appstudio-viewer-4256863455-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index e18eed49..ae9f3bad 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-649666048-649666048
+  - templateRef: appstudio-tenant-4121561789-4121561789
   spaceRoles:
     admin:
       templateRef: appstudio-admin-849337768-849337768
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
new file mode 100644
index 00000000..287922a8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-4121561789-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 4121561789-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 6477ff6d..d3a42fd1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -27,6 +27,7 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-649666048.yaml
+- tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
 - tiertemplate-appstudiolarge-tenant-3994678728-649666048.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index cd69f8c5..0df7db71 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-3994678728-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-3994678728-649666048
+  - templateRef: appstudiolarge-tenant-3994678728-4121561789
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-3994678728-849337768
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
new file mode 100644
index 00000000..52b7a1d8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-3994678728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index c2bd61b6..7e9fccb9 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -10,5 +10,6 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 21bea3b5..173ed6af 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudioxlarge-clusterresources-884010306-3180033938
   namespaces:
-  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  - templateRef: appstudioxlarge-tenant-884010306-4121561789
   spaceRoles:
     admin:
       templateRef: appstudioxlarge-admin-884010306-849337768
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
new file mode 100644
index 00000000..496e424b
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 96b23d84 to a5a84d7b on Tue Sep 24 20:07:47 2024 </h3>  
 
<details> 
<summary>Git Diff (1820 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
index 756807d0..e64ee99b 100644
--- a/components/sandbox/tiers/production/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
+- tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
 - tiertemplate-appstudio-tenant-649666048-649666048.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
 - tiertemplate-appstudio-viewer-4256863455-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
index e18eed49..ae9f3bad 100644
--- a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-649666048-649666048
+  - templateRef: appstudio-tenant-4121561789-4121561789
   spaceRoles:
     admin:
       templateRef: appstudio-admin-849337768-849337768
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
new file mode 100644
index 00000000..287922a8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-4121561789-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 4121561789-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
index 08468b40..a7b662e8 100644
--- a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -26,6 +26,7 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-649666048.yaml
+- tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
 - tiertemplate-appstudiolarge-tenant-3994678728-649666048.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index cd69f8c5..0df7db71 100644
--- a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-3994678728-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-3994678728-649666048
+  - templateRef: appstudiolarge-tenant-3994678728-4121561789
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-3994678728-849337768
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
new file mode 100644
index 00000000..52b7a1d8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-3994678728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index c2bd61b6..7e9fccb9 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -10,5 +10,6 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 21bea3b5..173ed6af 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudioxlarge-clusterresources-884010306-3180033938
   namespaces:
-  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  - templateRef: appstudioxlarge-tenant-884010306-4121561789
   spaceRoles:
     admin:
       templateRef: appstudioxlarge-admin-884010306-849337768
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
new file mode 100644
index 00000000..496e424b
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 23184fdd..3e4862f9 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -109,9 +109,9 @@ objects:
     hard:
       count/releaseplanadmissions.appstudio.redhat.com: "512"
       count/releaseplans.appstudio.redhat.com: "512"
-      count/releases.appstudio.redhat.com: "512"
+      count/releases.appstudio.redhat.com: "1024"
       count/releasestrategies.appstudio.redhat.com: "512"
-      count/internalrequests.appstudio.redhat.com: "512"
+      count/internalrequests.appstudio.redhat.com: "4096"
 - apiVersion: v1
   kind: ResourceQuota
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 756807d0..e64ee99b 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
 - tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
+- tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
 - tiertemplate-appstudio-tenant-649666048-649666048.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
 - tiertemplate-appstudio-viewer-4256863455-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index e18eed49..ae9f3bad 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-649666048-649666048
+  - templateRef: appstudio-tenant-4121561789-4121561789
   spaceRoles:
     admin:
       templateRef: appstudio-admin-849337768-849337768
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
new file mode 100644
index 00000000..287922a8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-4121561789-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-4121561789-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 4121561789-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 6477ff6d..d3a42fd1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -27,6 +27,7 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-649666048.yaml
+- tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
 - tiertemplate-appstudiolarge-tenant-3994678728-649666048.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index cd69f8c5..0df7db71 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-3994678728-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-3994678728-649666048
+  - templateRef: appstudiolarge-tenant-3994678728-4121561789
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-3994678728-849337768
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
new file mode 100644
index 00000000..52b7a1d8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-3994678728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-3994678728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 3994678728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index c2bd61b6..7e9fccb9 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -10,5 +10,6 @@ resources:
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 21bea3b5..173ed6af 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudioxlarge-clusterresources-884010306-3180033938
   namespaces:
-  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  - templateRef: appstudioxlarge-tenant-884010306-4121561789
   spaceRoles:
     admin:
       templateRef: appstudioxlarge-admin-884010306-849337768
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
new file mode 100644
index 00000000..496e424b
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant 
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
<h3>4: Production changes from fe98b665 to 96b23d84 on Tue Sep 24 15:44:53 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 55e51902..ba7ebeff 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
+- https://github.com/konflux-ci/build-service/config/default?ref=b2beb5c352b9d8c9992932ad33a16096deafa629
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
+  newTag: b2beb5c352b9d8c9992932ad33a16096deafa629
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-fe98b665/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:b2beb5c352b9d8c9992932ad33a16096deafa629
---
>         image: quay.io/konflux-ci/build-service:23c020091dcd4eeafbf3d75736b9c64d36a22f4b
./commit-fe98b665/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:b2beb5c352b9d8c9992932ad33a16096deafa629
---
>         image: quay.io/konflux-ci/build-service:23c020091dcd4eeafbf3d75736b9c64d36a22f4b 
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
<h3>4: Staging changes from fe98b665 to 96b23d84 on Tue Sep 24 15:44:53 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 55e51902..ba7ebeff 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
+- https://github.com/konflux-ci/build-service/config/default?ref=b2beb5c352b9d8c9992932ad33a16096deafa629
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
+  newTag: b2beb5c352b9d8c9992932ad33a16096deafa629
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from fe98b665 to 96b23d84 on Tue Sep 24 15:44:53 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 55e51902..ba7ebeff 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=23c020091dcd4eeafbf3d75736b9c64d36a22f4b
+- https://github.com/konflux-ci/build-service/config/default?ref=b2beb5c352b9d8c9992932ad33a16096deafa629
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 23c020091dcd4eeafbf3d75736b9c64d36a22f4b
+  newTag: b2beb5c352b9d8c9992932ad33a16096deafa629
 
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
