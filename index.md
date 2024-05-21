# kustomize changes tracked by commits 
### This file generated at Tue May 21 08:04:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2c57b0e9 to 5c7e66c4 on Tue May 21 06:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index cb637b99..d5348aa8 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
+  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
+  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2c57b0e9/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:616d3e7f8ea781e745dbdfc3158229fafd17d417
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:616d3e7f8ea781e745dbdfc3158229fafd17d417 
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
<h3>1: Staging changes from 2c57b0e9 to 5c7e66c4 on Tue May 21 06:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index cb637b99..d5348aa8 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
+  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
+  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2c57b0e9/staging/components/multi-platform-controller/staging/kustomize.out.yaml
249c249
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:616d3e7f8ea781e745dbdfc3158229fafd17d417
291c291
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:616d3e7f8ea781e745dbdfc3158229fafd17d417 
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
<h3>1: Development changes from 2c57b0e9 to 5c7e66c4 on Tue May 21 06:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index cb637b99..d5348aa8 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=616d3e7f8ea781e745dbdfc3158229fafd17d417
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
+  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 616d3e7f8ea781e745dbdfc3158229fafd17d417
+  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2c57b0e9/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:616d3e7f8ea781e745dbdfc3158229fafd17d417
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:616d3e7f8ea781e745dbdfc3158229fafd17d417 
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
<h3>2: Production changes from 74f01127 to 2c57b0e9 on Tue May 21 02:26:21 2024 </h3>  
 
<details> 
<summary>Git Diff (127 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 439dd934..3ccd8778 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=72287aca6503f631b917debc27683a508f7e45ad
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index c0265e60..064973c6 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
   - ../base/rbac
   - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f8293a16..b3d2df0e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml
   - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c007141a..d633c841 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2037,10 +2039,10 @@ spec:
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
-          custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+          custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1b245534..ae31166b 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d152fae6..64aaa3d0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>2: Staging changes from 74f01127 to 2c57b0e9 on Tue May 21 02:26:21 2024 </h3>  
 
<details> 
<summary>Git Diff (127 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 439dd934..3ccd8778 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=72287aca6503f631b917debc27683a508f7e45ad
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index c0265e60..064973c6 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
   - ../base/rbac
   - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f8293a16..b3d2df0e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml
   - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c007141a..d633c841 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2037,10 +2039,10 @@ spec:
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
-          custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+          custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1b245534..ae31166b 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d152fae6..64aaa3d0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (46 lines)</summary>  

``` 
./commit-74f01127/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1244,1245d1243
<         - -pprof-address
<         - "6060"
1247c1245
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
2042,2043c2040,2041
<           custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
<           custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
---
>           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
>           custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
2045c2043
<           custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
2095c2093
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
./commit-74f01127/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1244,1245d1243
<         - -pprof-address
<         - "6060"
1247c1245
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
2095c2093
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
./commit-74f01127/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1244,1245d1243
<         - -pprof-address
<         - "6060"
1247c1245
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
2095c2093
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f 
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
<h3>2: Development changes from 74f01127 to 2c57b0e9 on Tue May 21 02:26:21 2024 </h3>  
 
<details> 
<summary>Git Diff (127 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 439dd934..3ccd8778 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=72287aca6503f631b917debc27683a508f7e45ad
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index c0265e60..064973c6 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
   - ../base/rbac
   - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f8293a16..b3d2df0e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml
   - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c007141a..d633c841 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2037,10 +2039,10 @@ spec:
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
-          custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+          custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1b245534..ae31166b 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d152fae6..64aaa3d0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1241,8 +1241,10 @@ spec:
     spec:
       containers:
       - args:
+        - -pprof-address
+        - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2090,7 +2092,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-74f01127/development/components/pipeline-service/development/kustomize.out.yaml
1245,1246d1244
<         - -pprof-address
<         - "6060"
1248c1246
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c93b6d93e8bbd4540a4d565a35bae2a8b081b000
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
2196c2194
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:beec206d5f9650173348c0d9db404faee6b791ec6d25a9ea3410a909a8e37187
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f 
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
<h3>3: Production changes from 87fcb75c to 74f01127 on Mon May 20 18:37:34 2024 </h3>  
 
<details> 
<summary>Git Diff (119 lines)</summary>  

``` 
diff --git a/components/image-controller/README.md b/components/image-controller/README.md
index 49b61f30..c29ec2c8 100644
--- a/components/image-controller/README.md
+++ b/components/image-controller/README.md
@@ -2,7 +2,7 @@
 title: Image Controller
 ---
 
-Deployment of [image-controller](https://github.com/redhat-appstudio/image-controller)
+Deployment of [image-controller](https://github.com/konflux-ci/image-controller)
 
 ## Image Controller secrets
 
@@ -22,7 +22,7 @@ Prerequisite:
 Process for production instance:
 1. Reset Client Secret on [Application Oauth page](https://quay.io/organization/redhat-user-workloads/application/VMLM8D3FUBUGMBMY173Z?tab=oauth)
 2. Generate new Token on [Application generate token page](https://quay.io/organization/redhat-user-workloads/application/VMLM8D3FUBUGMBMY173Z?tab=gen-token), with permissions:
-  - Administer Organization 
+  - Administer Organization
   - Administer Repositories
   - Create Repositories
 3. Put token from step 2. to app-sre vault to `stonesoup/production/build/image-controller`
@@ -30,7 +30,7 @@ Process for production instance:
 Process for stage instance:
 1. Reset Client Secret on [Application Oauth page](https://quay.io/organization/redhat-user-workloads-stage/application/259WVA0L323BVTQCQZ9B?tab=oauth)
 2. Generate new Token on [Application generate token page](https://quay.io/organization/redhat-user-workloads-stage/application/259WVA0L323BVTQCQZ9B?tab=gen-token), with permissions:
-  - Administer Organization 
+  - Administer Organization
   - Administer Repositories
   - Create Repositories
 3. Put token from step 2. to app-sre vault to `stonesoup/staging/build/image-controller`
\ No newline at end of file
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 0012c700..6800a594 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
   newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 498dadb6..d5e05770 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index d5ba3758..65616734 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
   newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml b/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
index fb0c8b10..7d155f04 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/image-controller/config/monitoring/grafana-dashboards/?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/konflux-ci/image-controller/config/monitoring/grafana-dashboards/?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
 - dashboard.yaml
diff --git a/hack/preview.sh b/hack/preview.sh
index 82fa9b2e..98706da4 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -204,9 +204,9 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
-[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
-[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
-[[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
 
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newName=\"${MULTI_ARCH_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newTag=\"${MULTI_ARCH_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-87fcb75c/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
909c909
<         image: quay.io/konflux-ci/image-controller:103df04d173a93937ca20c4c0baa8571242b28e2
---
>         image: quay.io/redhat-appstudio/image-controller:8bf9b5eb11f41ecbca1fc5131f803744c519f826 
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
<h3>3: Staging changes from 87fcb75c to 74f01127 on Mon May 20 18:37:34 2024 </h3>  
 
<details> 
<summary>Git Diff (119 lines)</summary>  

``` 
diff --git a/components/image-controller/README.md b/components/image-controller/README.md
index 49b61f30..c29ec2c8 100644
--- a/components/image-controller/README.md
+++ b/components/image-controller/README.md
@@ -2,7 +2,7 @@
 title: Image Controller
 ---
 
-Deployment of [image-controller](https://github.com/redhat-appstudio/image-controller)
+Deployment of [image-controller](https://github.com/konflux-ci/image-controller)
 
 ## Image Controller secrets
 
@@ -22,7 +22,7 @@ Prerequisite:
 Process for production instance:
 1. Reset Client Secret on [Application Oauth page](https://quay.io/organization/redhat-user-workloads/application/VMLM8D3FUBUGMBMY173Z?tab=oauth)
 2. Generate new Token on [Application generate token page](https://quay.io/organization/redhat-user-workloads/application/VMLM8D3FUBUGMBMY173Z?tab=gen-token), with permissions:
-  - Administer Organization 
+  - Administer Organization
   - Administer Repositories
   - Create Repositories
 3. Put token from step 2. to app-sre vault to `stonesoup/production/build/image-controller`
@@ -30,7 +30,7 @@ Process for production instance:
 Process for stage instance:
 1. Reset Client Secret on [Application Oauth page](https://quay.io/organization/redhat-user-workloads-stage/application/259WVA0L323BVTQCQZ9B?tab=oauth)
 2. Generate new Token on [Application generate token page](https://quay.io/organization/redhat-user-workloads-stage/application/259WVA0L323BVTQCQZ9B?tab=gen-token), with permissions:
-  - Administer Organization 
+  - Administer Organization
   - Administer Repositories
   - Create Repositories
 3. Put token from step 2. to app-sre vault to `stonesoup/staging/build/image-controller`
\ No newline at end of file
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 0012c700..6800a594 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
   newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 498dadb6..d5e05770 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index d5ba3758..65616734 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
   newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml b/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
index fb0c8b10..7d155f04 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/image-controller/config/monitoring/grafana-dashboards/?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/konflux-ci/image-controller/config/monitoring/grafana-dashboards/?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
 - dashboard.yaml
diff --git a/hack/preview.sh b/hack/preview.sh
index 82fa9b2e..98706da4 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -204,9 +204,9 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
-[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
-[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
-[[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
 
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newName=\"${MULTI_ARCH_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newTag=\"${MULTI_ARCH_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml 
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
<h3>3: Development changes from 87fcb75c to 74f01127 on Mon May 20 18:37:34 2024 </h3>  
 
<details> 
<summary>Git Diff (119 lines)</summary>  

``` 
diff --git a/components/image-controller/README.md b/components/image-controller/README.md
index 49b61f30..c29ec2c8 100644
--- a/components/image-controller/README.md
+++ b/components/image-controller/README.md
@@ -2,7 +2,7 @@
 title: Image Controller
 ---
 
-Deployment of [image-controller](https://github.com/redhat-appstudio/image-controller)
+Deployment of [image-controller](https://github.com/konflux-ci/image-controller)
 
 ## Image Controller secrets
 
@@ -22,7 +22,7 @@ Prerequisite:
 Process for production instance:
 1. Reset Client Secret on [Application Oauth page](https://quay.io/organization/redhat-user-workloads/application/VMLM8D3FUBUGMBMY173Z?tab=oauth)
 2. Generate new Token on [Application generate token page](https://quay.io/organization/redhat-user-workloads/application/VMLM8D3FUBUGMBMY173Z?tab=gen-token), with permissions:
-  - Administer Organization 
+  - Administer Organization
   - Administer Repositories
   - Create Repositories
 3. Put token from step 2. to app-sre vault to `stonesoup/production/build/image-controller`
@@ -30,7 +30,7 @@ Process for production instance:
 Process for stage instance:
 1. Reset Client Secret on [Application Oauth page](https://quay.io/organization/redhat-user-workloads-stage/application/259WVA0L323BVTQCQZ9B?tab=oauth)
 2. Generate new Token on [Application generate token page](https://quay.io/organization/redhat-user-workloads-stage/application/259WVA0L323BVTQCQZ9B?tab=gen-token), with permissions:
-  - Administer Organization 
+  - Administer Organization
   - Administer Repositories
   - Create Repositories
 3. Put token from step 2. to app-sre vault to `stonesoup/staging/build/image-controller`
\ No newline at end of file
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 0012c700..6800a594 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
   newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 498dadb6..d5e05770 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
+  newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index d5ba3758..65616734 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=103df04d173a93937ca20c4c0baa8571242b28e2
+- https://github.com/konflux-ci/image-controller/config/default?ref=4f18f640e7d9fbfb1fe3e156156e709c7836254f
 
 images:
-- name: quay.io/redhat-appstudio/image-controller
-  newName: quay.io/redhat-appstudio/image-controller
+- name: quay.io/konflux-ci/image-controller
+  newName: quay.io/konflux-ci/image-controller
   newTag: 103df04d173a93937ca20c4c0baa8571242b28e2
 
 namespace: image-controller
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml b/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
index fb0c8b10..7d155f04 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/image-controller/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/image-controller/config/monitoring/grafana-dashboards/?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/konflux-ci/image-controller/config/monitoring/grafana-dashboards/?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
 - dashboard.yaml
diff --git a/hack/preview.sh b/hack/preview.sh
index 82fa9b2e..98706da4 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -204,9 +204,9 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${REMOTE_SECRET_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/remote-secret-controller\")) |=.newTag=\"${REMOTE_SECRET_IMAGE_TAG}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 [[ -n "${REMOTE_SECRET_PR_OWNER}" && "${REMOTE_SECRET_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/remote-secret*\")) |= \"https://github.com/${REMOTE_SECRET_PR_OWNER}/remote-secret/config/overlays/openshift_vault?ref=${REMOTE_SECRET_PR_SHA}\"" $ROOT/components/remote-secret-controller/overlays/development/kustomization.yaml
 
-[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
-[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
-[[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/development/kustomization.yaml
+[[ -n "${IMAGE_CONTROLLER_PR_OWNER}" && "${IMAGE_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/image-controller*\")) |= \"https://github.com/${IMAGE_CONTROLLER_PR_OWNER}/image-controller/config/default?ref=${IMAGE_CONTROLLER_PR_SHA}\"" $ROOT/components/image-controller/development/kustomization.yaml
 
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newName=\"${MULTI_ARCH_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newTag=\"${MULTI_ARCH_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-87fcb75c/development/components/image-controller/development/kustomize.out.yaml
705c705
<         image: quay.io/konflux-ci/image-controller:103df04d173a93937ca20c4c0baa8571242b28e2
---
>         image: quay.io/redhat-appstudio/image-controller:103df04d173a93937ca20c4c0baa8571242b28e2 
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
<h3>4: Production changes from 731eba05 to 87fcb75c on Mon May 20 15:30:07 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 20fa123d..eb0bf888 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -20,7 +20,7 @@ data:
   # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  dynamic.linux-arm64.spot-price: "0.010"
+  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
   dynamic.linux-amd64.type: aws
@@ -33,7 +33,7 @@ data:
   # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.spot-price: "0.050"
+  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
   host.ppc1.address: "150.240.147.198" 
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
<h3>4: Staging changes from 731eba05 to 87fcb75c on Mon May 20 15:30:07 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 20fa123d..eb0bf888 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -20,7 +20,7 @@ data:
   # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  dynamic.linux-arm64.spot-price: "0.010"
+  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
   dynamic.linux-amd64.type: aws
@@ -33,7 +33,7 @@ data:
   # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.spot-price: "0.050"
+  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
   host.ppc1.address: "150.240.147.198" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-731eba05/staging/components/multi-platform-controller/staging/kustomize.out.yaml
144a145
>   dynamic.linux-amd64.spot-price: "0.050"
154a156
>   dynamic.linux-arm64.spot-price: "0.010" 
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
<h3>4: Development changes from 731eba05 to 87fcb75c on Mon May 20 15:30:07 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 20fa123d..eb0bf888 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -20,7 +20,7 @@ data:
   # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  dynamic.linux-arm64.spot-price: "0.010"
+  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
   dynamic.linux-amd64.type: aws
@@ -33,7 +33,7 @@ data:
   # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.spot-price: "0.050"
+  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
   host.ppc1.address: "150.240.147.198" 
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
