# kustomize changes tracked by commits 
### This file generated at Wed Oct 16 00:07:44 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 231156d4 to f49021aa on Tue Oct 15 20:02:13 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 10ef4c19..c6d5d020 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -3,6 +3,8 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 
 ---
 apiVersion: operators.coreos.com/v1
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
index 858f3b13..212794f6 100644
--- a/components/cluster-as-a-service/development/klusterlet-config.yaml
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -5,5 +5,7 @@ apiVersion: config.open-cluster-management.io/v1alpha1
 kind: KlusterletConfig
 metadata:
   name: global
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-231156d4/production/components/cluster-as-a-service/production/kustomize.out.yaml
11,12d10
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3" 
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
<h3>1: Staging changes from 231156d4 to f49021aa on Tue Oct 15 20:02:13 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 10ef4c19..c6d5d020 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -3,6 +3,8 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 
 ---
 apiVersion: operators.coreos.com/v1
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
index 858f3b13..212794f6 100644
--- a/components/cluster-as-a-service/development/klusterlet-config.yaml
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -5,5 +5,7 @@ apiVersion: config.open-cluster-management.io/v1alpha1
 kind: KlusterletConfig
 metadata:
   name: global
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-231156d4/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
11,12d10
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 231156d4 to f49021aa on Tue Oct 15 20:02:13 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 10ef4c19..c6d5d020 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -3,6 +3,8 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 
 ---
 apiVersion: operators.coreos.com/v1
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
index 858f3b13..212794f6 100644
--- a/components/cluster-as-a-service/development/klusterlet-config.yaml
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -5,5 +5,7 @@ apiVersion: config.open-cluster-management.io/v1alpha1
 kind: KlusterletConfig
 metadata:
   name: global
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-231156d4/development/components/cluster-as-a-service/development/kustomize.out.yaml
11,12d10
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
224,225d221
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>2: Production changes from e8031900 to 231156d4 on Tue Oct 15 19:04:35 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 2a382bf0..b16e7399 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
 
 namespace: release-service
  
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
<h3>2: Staging changes from e8031900 to 231156d4 on Tue Oct 15 19:04:35 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 2a382bf0..b16e7399 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (105 lines)</summary>  

``` 
./commit-e8031900/staging/components/release/staging/kustomize.out.yaml
384,386c384,386
<               finalPipeline:
<                 description: FinalPipeline contains all the information about the
<                   final Pipeline
---
>               pipeline:
>                 description: Pipeline contains all the information about the tenant
>                   Pipeline
469,543d468
<               tenantPipeline:
<                 description: TenantPipeline contains all the information about the
<                   tenant Pipeline
<                 properties:
<                   params:
<                     description: Params is a slice of parameters for a given resolver
<                     items:
<                       description: Param defines the parameters for a given resolver
<                         in PipelineRef
<                       properties:
<                         name:
<                           description: Name is the name of the parameter
<                           type: string
<                         value:
<                           description: Value is the value of the parameter
<                           type: string
<                       required:
<                       - name
<                       - value
<                       type: object
<                     type: array
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
<                     description: ServiceAccountName is the ServiceAccount to use during
<                       the execution of the Pipeline
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
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
<                 required:
<                 - pipelineRef
<                 type: object
827,829c752,754
<               finalProcessing:
<                 description: FinalProcessing contains information about the release
<                   final processing
---
>               managedProcessing:
>                 description: ManagedProcessing contains information about the release
>                   managed processing
853,855c778,780
<               managedProcessing:
<                 description: ManagedProcessing contains information about the release
<                   managed processing
---
>               postActionsExecution:
>                 description: PostActionsExecution contains information about the post-actions
>                   execution
2072c1997
<         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112
---
>         image: quay.io/konflux-ci/release-service:36faeb1792ecf283a10e7ea8b7d1208af77b16ec 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from e8031900 to 231156d4 on Tue Oct 15 19:04:35 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 2a382bf0..b16e7399 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
 
 namespace: release-service
  
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
<h3>3: Production changes from d3371e91 to e8031900 on Tue Oct 15 18:44:53 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/OWNERS b/components/monitoring/grafana/base/dashboards/release/OWNERS
index 11f0f231..dda71406 100644
--- a/components/monitoring/grafana/base/dashboards/release/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/release/OWNERS
@@ -7,7 +7,7 @@ approvers:
 - theflockers
 - mmalina
 - happybhati
-
+- seanconroy2021
 
 reviewers:
 - davidmogar
@@ -16,3 +16,4 @@ reviewers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021
diff --git a/components/release/OWNERS b/components/release/OWNERS
index 11f0f231..7aa7a025 100644
--- a/components/release/OWNERS
+++ b/components/release/OWNERS
@@ -7,6 +7,7 @@ approvers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021
 
 
 reviewers:
@@ -16,3 +17,4 @@ reviewers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021 
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
<h3>3: Staging changes from d3371e91 to e8031900 on Tue Oct 15 18:44:53 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/OWNERS b/components/monitoring/grafana/base/dashboards/release/OWNERS
index 11f0f231..dda71406 100644
--- a/components/monitoring/grafana/base/dashboards/release/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/release/OWNERS
@@ -7,7 +7,7 @@ approvers:
 - theflockers
 - mmalina
 - happybhati
-
+- seanconroy2021
 
 reviewers:
 - davidmogar
@@ -16,3 +16,4 @@ reviewers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021
diff --git a/components/release/OWNERS b/components/release/OWNERS
index 11f0f231..7aa7a025 100644
--- a/components/release/OWNERS
+++ b/components/release/OWNERS
@@ -7,6 +7,7 @@ approvers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021
 
 
 reviewers:
@@ -16,3 +17,4 @@ reviewers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from d3371e91 to e8031900 on Tue Oct 15 18:44:53 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/OWNERS b/components/monitoring/grafana/base/dashboards/release/OWNERS
index 11f0f231..dda71406 100644
--- a/components/monitoring/grafana/base/dashboards/release/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/release/OWNERS
@@ -7,7 +7,7 @@ approvers:
 - theflockers
 - mmalina
 - happybhati
-
+- seanconroy2021
 
 reviewers:
 - davidmogar
@@ -16,3 +16,4 @@ reviewers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021
diff --git a/components/release/OWNERS b/components/release/OWNERS
index 11f0f231..7aa7a025 100644
--- a/components/release/OWNERS
+++ b/components/release/OWNERS
@@ -7,6 +7,7 @@ approvers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021
 
 
 reviewers:
@@ -16,3 +17,4 @@ reviewers:
 - theflockers
 - mmalina
 - happybhati
+- seanconroy2021 
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
<h3>4: Production changes from 9f05a4ad to d3371e91 on Tue Oct 15 18:20:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 5a9a174d..ff3ef267 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 8528b071..b1e7f20f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
 
 namespace: release-service 
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
<h3>4: Staging changes from 9f05a4ad to d3371e91 on Tue Oct 15 18:20:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 5a9a174d..ff3ef267 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 8528b071..b1e7f20f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
 
 namespace: release-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 9f05a4ad to d3371e91 on Tue Oct 15 18:20:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 5a9a174d..ff3ef267 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 8528b071..b1e7f20f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
+    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (105 lines)</summary>  

``` 
./commit-9f05a4ad/development/components/release/development/kustomize.out.yaml
384,386c384,386
<               finalPipeline:
<                 description: FinalPipeline contains all the information about the
<                   final Pipeline
---
>               pipeline:
>                 description: Pipeline contains all the information about the tenant
>                   Pipeline
469,543d468
<               tenantPipeline:
<                 description: TenantPipeline contains all the information about the
<                   tenant Pipeline
<                 properties:
<                   params:
<                     description: Params is a slice of parameters for a given resolver
<                     items:
<                       description: Param defines the parameters for a given resolver
<                         in PipelineRef
<                       properties:
<                         name:
<                           description: Name is the name of the parameter
<                           type: string
<                         value:
<                           description: Value is the value of the parameter
<                           type: string
<                       required:
<                       - name
<                       - value
<                       type: object
<                     type: array
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
<                     description: ServiceAccountName is the ServiceAccount to use during
<                       the execution of the Pipeline
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
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
<                 required:
<                 - pipelineRef
<                 type: object
827,829c752,754
<               finalProcessing:
<                 description: FinalProcessing contains information about the release
<                   final processing
---
>               managedProcessing:
>                 description: ManagedProcessing contains information about the release
>                   managed processing
853,855c778,780
<               managedProcessing:
<                 description: ManagedProcessing contains information about the release
<                   managed processing
---
>               postActionsExecution:
>                 description: PostActionsExecution contains information about the post-actions
>                   execution
2072c1997
<         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112
---
>         image: quay.io/konflux-ci/release-service:3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3 
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
