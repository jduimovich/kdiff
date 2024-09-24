# kustomize changes tracked by commits 
### This file generated at Tue Sep 24 08:03:06 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cae02ccf to 9f7a52c6 on Mon Sep 23 21:30:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 194e3c8d..5e39a97a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e5b4df34..b37e14f2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+  - https://github.com/konflux-ci/release-service/config/default?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+    newTag: a9cb25c4896f1671c474766772f6249fdd8ec49f
 
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
<h3>1: Staging changes from cae02ccf to 9f7a52c6 on Mon Sep 23 21:30:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 194e3c8d..5e39a97a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e5b4df34..b37e14f2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+  - https://github.com/konflux-ci/release-service/config/default?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+    newTag: a9cb25c4896f1671c474766772f6249fdd8ec49f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from cae02ccf to 9f7a52c6 on Mon Sep 23 21:30:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 194e3c8d..5e39a97a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e5b4df34..b37e14f2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+  - https://github.com/konflux-ci/release-service/config/default?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+    newTag: a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-cae02ccf/development/components/release/development/kustomize.out.yaml
1935c1935
<         image: quay.io/konflux-ci/release-service:a9cb25c4896f1671c474766772f6249fdd8ec49f
---
>         image: quay.io/konflux-ci/release-service:fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1 
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
<h3>2: Production changes from bded3135 to cae02ccf on Mon Sep 23 18:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index fc809ded..6d4f8560 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.4
+        targetRevision: 0.1.0
         helm:
           parameters:
             - name: region
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 5b4f4465..10ef4c19 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -25,7 +25,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.5
+  channel: stable-2.6
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 5bda7a54..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -10,22 +10,6 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 793d5207..1f1db0cb 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,4 +9,10 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImageTag
-    value: "4.14"
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
index b0ec83fa..fb6de595 100644
--- a/components/cluster-as-a-service/production/external-secrets.yaml
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: prod.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 7999773d..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,19 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-bded3135/production/components/cluster-as-a-service/production/kustomize.out.yaml
234,236c234
<             value: "4.16"
<           - name: hypershiftRoleArn
<             value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
---
>             value: "4.14"
238c236
<         targetRevision: 0.1.0
---
>         targetRevision: 0.0.4
315,319c313,316
<         aws-credentials: |
<           [default]
<           aws_access_key_id={{ .aws_access_key_id }}
<           aws_secret_access_key={{ .aws_secret_access_key }}
<         pull-secret: '{{ .ocp_pull_secret }}'
---
>         aws_access_key_id: '{{ .aws_access_key_id }}'
>         aws_secret_access_key: '{{ .aws_secret_access_key }}'
>         baseDomain: prod.konfluxeaas.com
>         pullSecret: '{{ .ocp_pull_secret }}'
375c372
<   channel: stable-2.6
---
>   channel: stable-2.5 
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
<h3>2: Staging changes from bded3135 to cae02ccf on Mon Sep 23 18:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index fc809ded..6d4f8560 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.4
+        targetRevision: 0.1.0
         helm:
           parameters:
             - name: region
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 5b4f4465..10ef4c19 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -25,7 +25,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.5
+  channel: stable-2.6
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 5bda7a54..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -10,22 +10,6 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 793d5207..1f1db0cb 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,4 +9,10 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImageTag
-    value: "4.14"
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
index b0ec83fa..fb6de595 100644
--- a/components/cluster-as-a-service/production/external-secrets.yaml
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: prod.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 7999773d..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,19 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
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
<h3>2: Development changes from bded3135 to cae02ccf on Mon Sep 23 18:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index fc809ded..6d4f8560 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.4
+        targetRevision: 0.1.0
         helm:
           parameters:
             - name: region
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 5b4f4465..10ef4c19 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -25,7 +25,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.5
+  channel: stable-2.6
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 5bda7a54..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -10,22 +10,6 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 793d5207..1f1db0cb 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,4 +9,10 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImageTag
-    value: "4.14"
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
index b0ec83fa..fb6de595 100644
--- a/components/cluster-as-a-service/production/external-secrets.yaml
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: prod.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 7999773d..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,19 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
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
<h3>3: Production changes from c298e243 to bded3135 on Mon Sep 23 15:51:49 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index 398503d5..6673aee9 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -8,3 +8,4 @@ approvers:
 - eisraeli
 - ifireball
 - mftb
+- raks-tt 
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
<h3>3: Staging changes from c298e243 to bded3135 on Mon Sep 23 15:51:49 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index 398503d5..6673aee9 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -8,3 +8,4 @@ approvers:
 - eisraeli
 - ifireball
 - mftb
+- raks-tt 
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
<h3>3: Development changes from c298e243 to bded3135 on Mon Sep 23 15:51:49 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index 398503d5..6673aee9 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -8,3 +8,4 @@ approvers:
 - eisraeli
 - ifireball
 - mftb
+- raks-tt 
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
<h3>4: Production changes from 4d7538c6 to c298e243 on Mon Sep 23 11:12:50 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index a77d7682..58e33796 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/default?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+  newTag: d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-4d7538c6/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
---
>         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
---
>             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
./commit-4d7538c6/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
---
>         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
---
>             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd 
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
<h3>4: Staging changes from 4d7538c6 to c298e243 on Mon Sep 23 11:12:50 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index a77d7682..58e33796 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/default?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+  newTag: d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
 
 configMapGenerator:
 - name: integration-config 
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
<h3>4: Development changes from 4d7538c6 to c298e243 on Mon Sep 23 11:12:50 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index a77d7682..58e33796 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/default?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+  newTag: d6b9c8be618fa8df7f35e5e0b0e4e861ba39faca
 
 configMapGenerator:
 - name: integration-config 
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
