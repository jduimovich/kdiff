# kustomize changes tracked by commits 
### This file generated at Sun Dec 31 12:05:49 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 63e88ae2 to 0102aae6 on Sun Dec 31 10:33:51 2023 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0424e029..0150d852 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -84,6 +84,10 @@ spec:
             readOnly: true
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
+          - name: logs
+            mountPath: /var/log
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -97,6 +101,10 @@ spec:
           name: proxy
         - name: chrome-static
           emptyDir: {}
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-0102aae6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0102aae6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 63e88ae2 to 0102aae6 on Sun Dec 31 10:33:51 2023 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0424e029..0150d852 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -84,6 +84,10 @@ spec:
             readOnly: true
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
+          - name: logs
+            mountPath: /var/log
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -97,6 +101,10 @@ spec:
           name: proxy
         - name: chrome-static
           emptyDir: {}
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-63e88ae2/staging/components/ui/staging/kustomize.out.yaml
573,576d572
<         - mountPath: /var/log
<           name: logs
<         - mountPath: /var/lib/nginx/tmp
<           name: nginx-tmp
615,618d610
<       - emptyDir: {}
<         name: logs
<       - emptyDir: {}
<         name: nginx-tmp 
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

./commit-0102aae6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0102aae6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-0102aae6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 63e88ae2 to 0102aae6 on Sun Dec 31 10:33:51 2023 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index 0424e029..0150d852 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -84,6 +84,10 @@ spec:
             readOnly: true
           - name: chrome-static
             mountPath: /opt/app-root/src/chrome
+          - name: logs
+            mountPath: /var/log
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
@@ -97,6 +101,10 @@ spec:
           name: proxy
         - name: chrome-static
           emptyDir: {}
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
 ---
 apiVersion: v1
 kind: Service 
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

./commit-0102aae6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from efc039f0 to 63e88ae2 on Sun Dec 31 10:20:23 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index f459cae9..22d3b972 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -24,7 +24,7 @@ spec:
     spec:
       project: default
       source:
-        path: '{{values.sourceRoot}}'
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination: 
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

./commit-63e88ae2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-63e88ae2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from efc039f0 to 63e88ae2 on Sun Dec 31 10:20:23 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index f459cae9..22d3b972 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -24,7 +24,7 @@ spec:
     spec:
       project: default
       source:
-        path: '{{values.sourceRoot}}'
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination: 
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

./commit-63e88ae2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-63e88ae2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-63e88ae2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from efc039f0 to 63e88ae2 on Sun Dec 31 10:20:23 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index f459cae9..22d3b972 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -24,7 +24,7 @@ spec:
     spec:
       project: default
       source:
-        path: '{{values.sourceRoot}}'
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination: 
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

./commit-63e88ae2/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from f505a550 to efc039f0 on Sun Dec 31 10:08:50 2023 </h3>  
 
<details> 
<summary>Git Diff (1140 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ui/kustomization.yaml b/argo-cd-apps/base/ui/kustomization.yaml
new file mode 100644
index 00000000..2a608bc1
--- /dev/null
+++ b/argo-cd-apps/base/ui/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ui.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
new file mode 100644
index 00000000..f459cae9
--- /dev/null
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ui
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ui
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ui-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: rhtap-ui
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index f03eee88..d846d785 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,5 +3,6 @@ kind: Kustomization
 resources:
   - ../staging
   - ../../base/smee-client
+  - ../../base/ui
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/ui/README.md b/components/ui/README.md
new file mode 100644
index 00000000..234c4e2c
--- /dev/null
+++ b/components/ui/README.md
@@ -0,0 +1,32 @@
+# UI
+
+## Overview
+
+This component will deploy the UI.
+There are four components for the ui.
+
+[chrome](https://github.com/RedHatInsights/insights-chrome) - The main frontend component.
+
+[hac](https://github.com/openshift/hac-core) - A plugin for `chrome` (loaded by `chrome`).
+
+[hav-dev](https://github.com/openshift/hac-dev) - A plugin for `hac` (loaded by `hac`).
+
+`proxy` - Forwards requests to the kube api, and hosts
+static files required by the chrome component
+(used instead of deploying the entire [chrome backend](https://github.com/RedHatInsights/chrome-service-backend). The static files are copied from the `chrome` image into an empty volume
+that is served by the proxy.
+
+**Note**: The frontend assumes that all the static files and api calls are made to the same host.
+
+
+## Dependencies
+
+The `chrome` component requires a `Keycloak` instance for authentication.
+
+## Customizations
+
+It's required to customize the manifests before deploying them. Two customizations are needed:
+
+1. Updating the hostname that will be used for the routes.
+
+2. Creating a `fed-modules.json` file that configures the frontend. **Important**: this file contains the `Keycloak` endpoint that will be used for authentication.
diff --git a/components/ui/base/chrome/chrome-frontend.yaml b/components/ui/base/chrome/chrome-frontend.yaml
new file mode 100644
index 00000000..ded475e5
--- /dev/null
+++ b/components/ui/base/chrome/chrome-frontend.yaml
@@ -0,0 +1,221 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: chrome
+  name: chrome-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: chrome
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: chrome
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: chrome
+      containers:
+        - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: chrome
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-955nt
+spec:
+  host: tba
+  path: /beta/apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-9p56w
+spec:
+  host: tba
+  path: /config/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-djfvl
+spec:
+  host: tba
+  path: /preview/apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-tntkn
+spec:
+  host: tba
+  path: /apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: application-pipeline
+spec:
+  host: tba
+  path: /application-pipeline
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/chrome/kustomization.yaml b/components/ui/base/chrome/kustomization.yaml
new file mode 100644
index 00000000..15f89fd6
--- /dev/null
+++ b/components/ui/base/chrome/kustomization.yaml
@@ -0,0 +1,4 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - chrome-frontend.yaml
diff --git a/components/ui/base/hac/hac-core-frontend.yaml b/components/ui/base/hac/hac-core-frontend.yaml
new file mode 100644
index 00000000..91e87787
--- /dev/null
+++ b/components/ui/base/hac/hac-core-frontend.yaml
@@ -0,0 +1,180 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: hac-core
+  name: hac-core-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: hac-core
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: hac-core
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: hac-core
+      containers:
+        - image: quay.io/cloudservices/hac-core-frontend:0bffd43
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: hac-core
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-b59m5
+spec:
+  host: tba
+  path: /apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-bgj8z
+spec:
+  host: tba
+  path: /beta/apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-nkxkb
+spec:
+  host: tba
+  path: /preview/apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/hac/hac-dev.yaml b/components/ui/base/hac/hac-dev.yaml
new file mode 100644
index 00000000..75c2a4f1
--- /dev/null
+++ b/components/ui/base/hac/hac-dev.yaml
@@ -0,0 +1,181 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: hac-dev
+  name: hac-dev-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: hac-dev
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: hac-dev
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: hac-dev
+      containers:
+        - image: quay.io/cloudservices/hac-dev-frontend:e3decf1
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: hac-dev
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-9lcq7
+spec:
+  host: tba
+  path: /preview/api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-bpssj
+spec:
+  host: tba
+  path: /beta/api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-tcr9k
+spec:
+  host: tba
+  path: /api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/hac/kustomization.yaml b/components/ui/base/hac/kustomization.yaml
new file mode 100644
index 00000000..66794f04
--- /dev/null
+++ b/components/ui/base/hac/kustomization.yaml
@@ -0,0 +1,5 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - hac-core-frontend.yaml
+  - hac-dev.yaml
diff --git a/components/ui/base/kustomization.yaml b/components/ui/base/kustomization.yaml
new file mode 100644
index 00000000..8f9d000d
--- /dev/null
+++ b/components/ui/base/kustomization.yaml
@@ -0,0 +1,8 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - chrome
+  - hac
+  - ns.yaml
+  - proxy
+namespace: rhtap-ui
diff --git a/components/ui/base/ns.yaml b/components/ui/base/ns.yaml
new file mode 100644
index 00000000..6fcf2c58
--- /dev/null
+++ b/components/ui/base/ns.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: rhtap-ui
diff --git a/components/ui/base/proxy/kustomization.yaml b/components/ui/base/proxy/kustomization.yaml
new file mode 100644
index 00000000..76257fc7
--- /dev/null
+++ b/components/ui/base/proxy/kustomization.yaml
@@ -0,0 +1,9 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - proxy.yaml
+configMapGenerator:
+  - name: proxy
+    files:
+      - nginx.conf
+
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
new file mode 100644
index 00000000..b83ed571
--- /dev/null
+++ b/components/ui/base/proxy/nginx.conf
@@ -0,0 +1,75 @@
+worker_processes auto;
+error_log /var/log/nginx/error.log;
+pid /run/nginx.pid;
+
+# Load dynamic modules. See /usr/share/doc/nginx/README.dynamic.
+include /usr/share/nginx/modules/*.conf;
+
+events {
+    worker_connections 1024;
+}
+
+http {
+    log_format upstreamlog '[$time_local] $remote_addr - $remote_user - $server_name $host to: $proxy_host  $upstream_addr: $request $status upstream_response_time $upstream_response_time msec $msec request_time $request_time';
+    access_log /dev/stderr upstreamlog;
+
+    sendfile on;
+    tcp_nopush on;
+    tcp_nodelay on;
+    keepalive_timeout 65;
+    types_hash_max_size 4096;
+
+    include /etc/nginx/mime.types;
+    default_type application/octet-stream;
+
+    map $http_upgrade $connection_upgrade {
+        default upgrade;
+        '' close;
+    }
+
+    server {
+        listen 8080 default_server;
+        server_name _;
+        root /opt/app-root/src;
+
+        location = /404.html {
+        }
+
+        location = / {
+            # We don't servce any other component using chrome
+            # so redirect any request to the root to our UI.
+            return 301 https://$host/application-pipeline;
+        }
+
+        location /api/chrome-service/v1/static {
+            # Static files required for the chrome frontend.
+            alias /opt/app-root/src/chrome/static;
+            autoindex on;
+        }
+
+        location /api/k8s/registration/ {
+            # Registration Service
+            proxy_pass http://registration-service.toolchain-host-operator.svc.cluster.local/;
+        }
+
+        location /api/k8s/ {
+            # Kube-API
+            proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
+            proxy_read_timeout 30m;
+        }
+
+        location /wss/k8s/ {
+            # Kube-API websockets
+            proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+        }
+
+        location /health {
+            # Used for liveness probes
+            return 200;
+        }
+    }
+}
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
new file mode 100644
index 00000000..0424e029
--- /dev/null
+++ b/components/ui/base/proxy/proxy.yaml
@@ -0,0 +1,194 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+spec:
+  replicas: 3
+  selector:
+    matchLabels:
+      app: proxy
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+  template:
+    metadata:
+      labels:
+        app: proxy
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: proxy
+      initContainers:
+      - name: copy-chrome-static-content
+        image: quay.io/cloudservices/chrome-service:d205bf3
+        command:
+          - cp
+          - -R
+          - /static
+          - /mnt/chrome
+        volumeMounts:
+        - name: chrome-static
+          mountPath: "/mnt/chrome"
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      containers:
+      - image: registry.access.redhat.com/ubi9/nginx-120@sha256:88a4f2d184f52c4d3956be06b12d578d0bf681ec9d0a8b80e558a98c1860fa12
+        name: nginx-120
+        command:
+          - nginx
+          - -g 
+          - "daemon off;"
+        livenessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 8080
+            scheme: HTTP
+          initialDelaySeconds: 10
+          periodSeconds: 60
+          successThreshold: 1
+          timeoutSeconds: 1
+        ports:
+        - containerPort: 8080
+          name: web
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        volumeMounts:
+          - mountPath: /etc/nginx/nginx.conf
+            subPath: nginx.conf
+            name: proxy
+            readOnly: true
+          - name: chrome-static
+            mountPath: /opt/app-root/src/chrome
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: proxy
+            items:
+              - key: nginx.conf
+                path: nginx.conf 
+          name: proxy
+        - name: chrome-static
+          emptyDir: {}
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: web
+      port: 8080
+      protocol: TCP
+      targetPort: web
+  selector:
+    app: proxy
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-registration
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /api/k8s/registration
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-k8s
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /api/k8s
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-websocket
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /wss/k8s
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: redirect-root
+spec:
+  host: ee-r6h99drp.apps.c-rh-c-eph.8p0c.p1.openshiftapps.com
+  path: /
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/staging/fed-modules.json b/components/ui/staging/fed-modules.json
new file mode 100644
index 00000000..67f2403d
--- /dev/null
+++ b/components/ui/staging/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
new file mode 100644
index 00000000..84d8f59e
--- /dev/null
+++ b/components/ui/staging/kustomization.yaml
@@ -0,0 +1,28 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: a40a953
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: e3decf1   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/staging/set-hostname.yaml b/components/ui/staging/set-hostname.yaml
new file mode 100644
index 00000000..165592a7
--- /dev/null
+++ b/components/ui/staging/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 6ded4a27..7bee3147 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -51,6 +51,8 @@ docs-en:
         url: /components/monitoring/prometheus/README.html
       - title: Grafana
         url: /components/monitoring/grafana/README.html
+      - title: UI
+        url: /components/ui/README.html
   - title: Misc
     children:
       - title: FAQs/Troubleshooting 
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

./commit-efc039f0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-efc039f0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from f505a550 to efc039f0 on Sun Dec 31 10:08:50 2023 </h3>  
 
<details> 
<summary>Git Diff (1140 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ui/kustomization.yaml b/argo-cd-apps/base/ui/kustomization.yaml
new file mode 100644
index 00000000..2a608bc1
--- /dev/null
+++ b/argo-cd-apps/base/ui/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ui.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
new file mode 100644
index 00000000..f459cae9
--- /dev/null
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ui
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ui
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ui-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: rhtap-ui
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index f03eee88..d846d785 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,5 +3,6 @@ kind: Kustomization
 resources:
   - ../staging
   - ../../base/smee-client
+  - ../../base/ui
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/ui/README.md b/components/ui/README.md
new file mode 100644
index 00000000..234c4e2c
--- /dev/null
+++ b/components/ui/README.md
@@ -0,0 +1,32 @@
+# UI
+
+## Overview
+
+This component will deploy the UI.
+There are four components for the ui.
+
+[chrome](https://github.com/RedHatInsights/insights-chrome) - The main frontend component.
+
+[hac](https://github.com/openshift/hac-core) - A plugin for `chrome` (loaded by `chrome`).
+
+[hav-dev](https://github.com/openshift/hac-dev) - A plugin for `hac` (loaded by `hac`).
+
+`proxy` - Forwards requests to the kube api, and hosts
+static files required by the chrome component
+(used instead of deploying the entire [chrome backend](https://github.com/RedHatInsights/chrome-service-backend). The static files are copied from the `chrome` image into an empty volume
+that is served by the proxy.
+
+**Note**: The frontend assumes that all the static files and api calls are made to the same host.
+
+
+## Dependencies
+
+The `chrome` component requires a `Keycloak` instance for authentication.
+
+## Customizations
+
+It's required to customize the manifests before deploying them. Two customizations are needed:
+
+1. Updating the hostname that will be used for the routes.
+
+2. Creating a `fed-modules.json` file that configures the frontend. **Important**: this file contains the `Keycloak` endpoint that will be used for authentication.
diff --git a/components/ui/base/chrome/chrome-frontend.yaml b/components/ui/base/chrome/chrome-frontend.yaml
new file mode 100644
index 00000000..ded475e5
--- /dev/null
+++ b/components/ui/base/chrome/chrome-frontend.yaml
@@ -0,0 +1,221 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: chrome
+  name: chrome-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: chrome
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: chrome
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: chrome
+      containers:
+        - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: chrome
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-955nt
+spec:
+  host: tba
+  path: /beta/apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-9p56w
+spec:
+  host: tba
+  path: /config/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-djfvl
+spec:
+  host: tba
+  path: /preview/apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-tntkn
+spec:
+  host: tba
+  path: /apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: application-pipeline
+spec:
+  host: tba
+  path: /application-pipeline
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/chrome/kustomization.yaml b/components/ui/base/chrome/kustomization.yaml
new file mode 100644
index 00000000..15f89fd6
--- /dev/null
+++ b/components/ui/base/chrome/kustomization.yaml
@@ -0,0 +1,4 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - chrome-frontend.yaml
diff --git a/components/ui/base/hac/hac-core-frontend.yaml b/components/ui/base/hac/hac-core-frontend.yaml
new file mode 100644
index 00000000..91e87787
--- /dev/null
+++ b/components/ui/base/hac/hac-core-frontend.yaml
@@ -0,0 +1,180 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: hac-core
+  name: hac-core-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: hac-core
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: hac-core
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: hac-core
+      containers:
+        - image: quay.io/cloudservices/hac-core-frontend:0bffd43
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: hac-core
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-b59m5
+spec:
+  host: tba
+  path: /apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-bgj8z
+spec:
+  host: tba
+  path: /beta/apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-nkxkb
+spec:
+  host: tba
+  path: /preview/apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/hac/hac-dev.yaml b/components/ui/base/hac/hac-dev.yaml
new file mode 100644
index 00000000..75c2a4f1
--- /dev/null
+++ b/components/ui/base/hac/hac-dev.yaml
@@ -0,0 +1,181 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: hac-dev
+  name: hac-dev-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: hac-dev
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: hac-dev
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: hac-dev
+      containers:
+        - image: quay.io/cloudservices/hac-dev-frontend:e3decf1
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: hac-dev
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-9lcq7
+spec:
+  host: tba
+  path: /preview/api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-bpssj
+spec:
+  host: tba
+  path: /beta/api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-tcr9k
+spec:
+  host: tba
+  path: /api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/hac/kustomization.yaml b/components/ui/base/hac/kustomization.yaml
new file mode 100644
index 00000000..66794f04
--- /dev/null
+++ b/components/ui/base/hac/kustomization.yaml
@@ -0,0 +1,5 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - hac-core-frontend.yaml
+  - hac-dev.yaml
diff --git a/components/ui/base/kustomization.yaml b/components/ui/base/kustomization.yaml
new file mode 100644
index 00000000..8f9d000d
--- /dev/null
+++ b/components/ui/base/kustomization.yaml
@@ -0,0 +1,8 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - chrome
+  - hac
+  - ns.yaml
+  - proxy
+namespace: rhtap-ui
diff --git a/components/ui/base/ns.yaml b/components/ui/base/ns.yaml
new file mode 100644
index 00000000..6fcf2c58
--- /dev/null
+++ b/components/ui/base/ns.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: rhtap-ui
diff --git a/components/ui/base/proxy/kustomization.yaml b/components/ui/base/proxy/kustomization.yaml
new file mode 100644
index 00000000..76257fc7
--- /dev/null
+++ b/components/ui/base/proxy/kustomization.yaml
@@ -0,0 +1,9 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - proxy.yaml
+configMapGenerator:
+  - name: proxy
+    files:
+      - nginx.conf
+
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
new file mode 100644
index 00000000..b83ed571
--- /dev/null
+++ b/components/ui/base/proxy/nginx.conf
@@ -0,0 +1,75 @@
+worker_processes auto;
+error_log /var/log/nginx/error.log;
+pid /run/nginx.pid;
+
+# Load dynamic modules. See /usr/share/doc/nginx/README.dynamic.
+include /usr/share/nginx/modules/*.conf;
+
+events {
+    worker_connections 1024;
+}
+
+http {
+    log_format upstreamlog '[$time_local] $remote_addr - $remote_user - $server_name $host to: $proxy_host  $upstream_addr: $request $status upstream_response_time $upstream_response_time msec $msec request_time $request_time';
+    access_log /dev/stderr upstreamlog;
+
+    sendfile on;
+    tcp_nopush on;
+    tcp_nodelay on;
+    keepalive_timeout 65;
+    types_hash_max_size 4096;
+
+    include /etc/nginx/mime.types;
+    default_type application/octet-stream;
+
+    map $http_upgrade $connection_upgrade {
+        default upgrade;
+        '' close;
+    }
+
+    server {
+        listen 8080 default_server;
+        server_name _;
+        root /opt/app-root/src;
+
+        location = /404.html {
+        }
+
+        location = / {
+            # We don't servce any other component using chrome
+            # so redirect any request to the root to our UI.
+            return 301 https://$host/application-pipeline;
+        }
+
+        location /api/chrome-service/v1/static {
+            # Static files required for the chrome frontend.
+            alias /opt/app-root/src/chrome/static;
+            autoindex on;
+        }
+
+        location /api/k8s/registration/ {
+            # Registration Service
+            proxy_pass http://registration-service.toolchain-host-operator.svc.cluster.local/;
+        }
+
+        location /api/k8s/ {
+            # Kube-API
+            proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
+            proxy_read_timeout 30m;
+        }
+
+        location /wss/k8s/ {
+            # Kube-API websockets
+            proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+        }
+
+        location /health {
+            # Used for liveness probes
+            return 200;
+        }
+    }
+}
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
new file mode 100644
index 00000000..0424e029
--- /dev/null
+++ b/components/ui/base/proxy/proxy.yaml
@@ -0,0 +1,194 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+spec:
+  replicas: 3
+  selector:
+    matchLabels:
+      app: proxy
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+  template:
+    metadata:
+      labels:
+        app: proxy
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: proxy
+      initContainers:
+      - name: copy-chrome-static-content
+        image: quay.io/cloudservices/chrome-service:d205bf3
+        command:
+          - cp
+          - -R
+          - /static
+          - /mnt/chrome
+        volumeMounts:
+        - name: chrome-static
+          mountPath: "/mnt/chrome"
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      containers:
+      - image: registry.access.redhat.com/ubi9/nginx-120@sha256:88a4f2d184f52c4d3956be06b12d578d0bf681ec9d0a8b80e558a98c1860fa12
+        name: nginx-120
+        command:
+          - nginx
+          - -g 
+          - "daemon off;"
+        livenessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 8080
+            scheme: HTTP
+          initialDelaySeconds: 10
+          periodSeconds: 60
+          successThreshold: 1
+          timeoutSeconds: 1
+        ports:
+        - containerPort: 8080
+          name: web
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        volumeMounts:
+          - mountPath: /etc/nginx/nginx.conf
+            subPath: nginx.conf
+            name: proxy
+            readOnly: true
+          - name: chrome-static
+            mountPath: /opt/app-root/src/chrome
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: proxy
+            items:
+              - key: nginx.conf
+                path: nginx.conf 
+          name: proxy
+        - name: chrome-static
+          emptyDir: {}
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: web
+      port: 8080
+      protocol: TCP
+      targetPort: web
+  selector:
+    app: proxy
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-registration
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /api/k8s/registration
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-k8s
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /api/k8s
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-websocket
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /wss/k8s
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: redirect-root
+spec:
+  host: ee-r6h99drp.apps.c-rh-c-eph.8p0c.p1.openshiftapps.com
+  path: /
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/staging/fed-modules.json b/components/ui/staging/fed-modules.json
new file mode 100644
index 00000000..67f2403d
--- /dev/null
+++ b/components/ui/staging/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
new file mode 100644
index 00000000..84d8f59e
--- /dev/null
+++ b/components/ui/staging/kustomization.yaml
@@ -0,0 +1,28 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: a40a953
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: e3decf1   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/staging/set-hostname.yaml b/components/ui/staging/set-hostname.yaml
new file mode 100644
index 00000000..165592a7
--- /dev/null
+++ b/components/ui/staging/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 6ded4a27..7bee3147 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -51,6 +51,8 @@ docs-en:
         url: /components/monitoring/prometheus/README.html
       - title: Grafana
         url: /components/monitoring/grafana/README.html
+      - title: UI
+        url: /components/ui/README.html
   - title: Misc
     children:
       - title: FAQs/Troubleshooting 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-efc039f0/staging/components: ui 
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

./commit-efc039f0/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-efc039f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-efc039f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from f505a550 to efc039f0 on Sun Dec 31 10:08:50 2023 </h3>  
 
<details> 
<summary>Git Diff (1140 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ui/kustomization.yaml b/argo-cd-apps/base/ui/kustomization.yaml
new file mode 100644
index 00000000..2a608bc1
--- /dev/null
+++ b/argo-cd-apps/base/ui/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ui.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
new file mode 100644
index 00000000..f459cae9
--- /dev/null
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ui
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ui
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ui-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: rhtap-ui
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index f03eee88..d846d785 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,5 +3,6 @@ kind: Kustomization
 resources:
   - ../staging
   - ../../base/smee-client
+  - ../../base/ui
 patchesStrategicMerge:
   - delete-applications.yaml
diff --git a/components/ui/README.md b/components/ui/README.md
new file mode 100644
index 00000000..234c4e2c
--- /dev/null
+++ b/components/ui/README.md
@@ -0,0 +1,32 @@
+# UI
+
+## Overview
+
+This component will deploy the UI.
+There are four components for the ui.
+
+[chrome](https://github.com/RedHatInsights/insights-chrome) - The main frontend component.
+
+[hac](https://github.com/openshift/hac-core) - A plugin for `chrome` (loaded by `chrome`).
+
+[hav-dev](https://github.com/openshift/hac-dev) - A plugin for `hac` (loaded by `hac`).
+
+`proxy` - Forwards requests to the kube api, and hosts
+static files required by the chrome component
+(used instead of deploying the entire [chrome backend](https://github.com/RedHatInsights/chrome-service-backend). The static files are copied from the `chrome` image into an empty volume
+that is served by the proxy.
+
+**Note**: The frontend assumes that all the static files and api calls are made to the same host.
+
+
+## Dependencies
+
+The `chrome` component requires a `Keycloak` instance for authentication.
+
+## Customizations
+
+It's required to customize the manifests before deploying them. Two customizations are needed:
+
+1. Updating the hostname that will be used for the routes.
+
+2. Creating a `fed-modules.json` file that configures the frontend. **Important**: this file contains the `Keycloak` endpoint that will be used for authentication.
diff --git a/components/ui/base/chrome/chrome-frontend.yaml b/components/ui/base/chrome/chrome-frontend.yaml
new file mode 100644
index 00000000..ded475e5
--- /dev/null
+++ b/components/ui/base/chrome/chrome-frontend.yaml
@@ -0,0 +1,221 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: chrome
+  name: chrome-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: chrome
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: chrome
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: chrome
+      containers:
+        - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: chrome
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-955nt
+spec:
+  host: tba
+  path: /beta/apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-9p56w
+spec:
+  host: tba
+  path: /config/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-djfvl
+spec:
+  host: tba
+  path: /preview/apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: chrome-tntkn
+spec:
+  host: tba
+  path: /apps/chrome
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: chrome
+  name: application-pipeline
+spec:
+  host: tba
+  path: /application-pipeline
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: chrome
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/chrome/kustomization.yaml b/components/ui/base/chrome/kustomization.yaml
new file mode 100644
index 00000000..15f89fd6
--- /dev/null
+++ b/components/ui/base/chrome/kustomization.yaml
@@ -0,0 +1,4 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - chrome-frontend.yaml
diff --git a/components/ui/base/hac/hac-core-frontend.yaml b/components/ui/base/hac/hac-core-frontend.yaml
new file mode 100644
index 00000000..91e87787
--- /dev/null
+++ b/components/ui/base/hac/hac-core-frontend.yaml
@@ -0,0 +1,180 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: hac-core
+  name: hac-core-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: hac-core
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: hac-core
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: hac-core
+      containers:
+        - image: quay.io/cloudservices/hac-core-frontend:0bffd43
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: hac-core
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-b59m5
+spec:
+  host: tba
+  path: /apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-bgj8z
+spec:
+  host: tba
+  path: /beta/apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-core
+  name: hac-core-nkxkb
+spec:
+  host: tba
+  path: /preview/apps/hac-core
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-core
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/hac/hac-dev.yaml b/components/ui/base/hac/hac-dev.yaml
new file mode 100644
index 00000000..75c2a4f1
--- /dev/null
+++ b/components/ui/base/hac/hac-dev.yaml
@@ -0,0 +1,181 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+  labels:
+    frontend: hac-dev
+  name: hac-dev-frontend
+spec:
+  progressDeadlineSeconds: 600
+  replicas: 3
+  revisionHistoryLimit: 10
+  selector:
+    matchLabels:
+      frontend: hac-dev
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+    type: RollingUpdate
+  template:
+    metadata:
+      annotations: {}
+      labels:
+        frontend: hac-dev
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            frontend: hac-dev
+      containers:
+        - image: quay.io/cloudservices/hac-dev-frontend:e3decf1
+          imagePullPolicy: IfNotPresent
+          livenessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 60
+            successThreshold: 1
+            timeoutSeconds: 1
+          name: fe-image
+          ports:
+            - containerPort: 80
+              name: web
+              protocol: TCP
+            - containerPort: 9000
+              name: metrics
+              protocol: TCP
+          readinessProbe:
+            failureThreshold: 3
+            httpGet:
+              path: /
+              port: 8000
+              scheme: HTTP
+            initialDelaySeconds: 10
+            periodSeconds: 10
+            successThreshold: 1
+            timeoutSeconds: 1
+          resources:
+            limits:
+              cpu: "1"
+              memory: 512Mi
+            requests:
+              cpu: 100m
+              memory: 256Mi
+          terminationMessagePath: /dev/termination-log
+          terminationMessagePolicy: File
+          volumeMounts:
+            - mountPath: /opt/app-root/src/build/chrome
+              name: config
+            - mountPath: /opt/app-root/src/build/stable/operator-generated
+              name: config
+            - mountPath: /opt/app-root/src/build/preview/operator-generated
+              name: config
+          securityContext:
+            readOnlyRootFilesystem: true
+            runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: Always
+      schedulerName: default-scheduler
+      securityContext: {}
+      terminationGracePeriodSeconds: 30
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: fed-modules
+          name: config
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: public
+      port: 8000
+      protocol: TCP
+      targetPort: 8000
+    - appProtocol: http
+      name: metrics
+      port: 9000
+      protocol: TCP
+      targetPort: 9000
+  selector:
+    frontend: hac-dev
+  sessionAffinity: None
+  type: ClusterIP
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-9lcq7
+spec:
+  host: tba
+  path: /preview/api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-bpssj
+spec:
+  host: tba
+  path: /beta/api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    frontend: hac-dev
+  name: hac-dev-tcr9k
+spec:
+  host: tba
+  path: /api/plugins/hac-dev
+  port:
+    targetPort: public
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: hac-dev
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/base/hac/kustomization.yaml b/components/ui/base/hac/kustomization.yaml
new file mode 100644
index 00000000..66794f04
--- /dev/null
+++ b/components/ui/base/hac/kustomization.yaml
@@ -0,0 +1,5 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - hac-core-frontend.yaml
+  - hac-dev.yaml
diff --git a/components/ui/base/kustomization.yaml b/components/ui/base/kustomization.yaml
new file mode 100644
index 00000000..8f9d000d
--- /dev/null
+++ b/components/ui/base/kustomization.yaml
@@ -0,0 +1,8 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - chrome
+  - hac
+  - ns.yaml
+  - proxy
+namespace: rhtap-ui
diff --git a/components/ui/base/ns.yaml b/components/ui/base/ns.yaml
new file mode 100644
index 00000000..6fcf2c58
--- /dev/null
+++ b/components/ui/base/ns.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: rhtap-ui
diff --git a/components/ui/base/proxy/kustomization.yaml b/components/ui/base/proxy/kustomization.yaml
new file mode 100644
index 00000000..76257fc7
--- /dev/null
+++ b/components/ui/base/proxy/kustomization.yaml
@@ -0,0 +1,9 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - proxy.yaml
+configMapGenerator:
+  - name: proxy
+    files:
+      - nginx.conf
+
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
new file mode 100644
index 00000000..b83ed571
--- /dev/null
+++ b/components/ui/base/proxy/nginx.conf
@@ -0,0 +1,75 @@
+worker_processes auto;
+error_log /var/log/nginx/error.log;
+pid /run/nginx.pid;
+
+# Load dynamic modules. See /usr/share/doc/nginx/README.dynamic.
+include /usr/share/nginx/modules/*.conf;
+
+events {
+    worker_connections 1024;
+}
+
+http {
+    log_format upstreamlog '[$time_local] $remote_addr - $remote_user - $server_name $host to: $proxy_host  $upstream_addr: $request $status upstream_response_time $upstream_response_time msec $msec request_time $request_time';
+    access_log /dev/stderr upstreamlog;
+
+    sendfile on;
+    tcp_nopush on;
+    tcp_nodelay on;
+    keepalive_timeout 65;
+    types_hash_max_size 4096;
+
+    include /etc/nginx/mime.types;
+    default_type application/octet-stream;
+
+    map $http_upgrade $connection_upgrade {
+        default upgrade;
+        '' close;
+    }
+
+    server {
+        listen 8080 default_server;
+        server_name _;
+        root /opt/app-root/src;
+
+        location = /404.html {
+        }
+
+        location = / {
+            # We don't servce any other component using chrome
+            # so redirect any request to the root to our UI.
+            return 301 https://$host/application-pipeline;
+        }
+
+        location /api/chrome-service/v1/static {
+            # Static files required for the chrome frontend.
+            alias /opt/app-root/src/chrome/static;
+            autoindex on;
+        }
+
+        location /api/k8s/registration/ {
+            # Registration Service
+            proxy_pass http://registration-service.toolchain-host-operator.svc.cluster.local/;
+        }
+
+        location /api/k8s/ {
+            # Kube-API
+            proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
+            proxy_read_timeout 30m;
+        }
+
+        location /wss/k8s/ {
+            # Kube-API websockets
+            proxy_pass http://api.toolchain-host-operator.svc.cluster.local/;
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+        }
+
+        location /health {
+            # Used for liveness probes
+            return 200;
+        }
+    }
+}
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
new file mode 100644
index 00000000..0424e029
--- /dev/null
+++ b/components/ui/base/proxy/proxy.yaml
@@ -0,0 +1,194 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+spec:
+  replicas: 3
+  selector:
+    matchLabels:
+      app: proxy
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 25%
+  template:
+    metadata:
+      labels:
+        app: proxy
+    spec:
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: proxy
+      initContainers:
+      - name: copy-chrome-static-content
+        image: quay.io/cloudservices/chrome-service:d205bf3
+        command:
+          - cp
+          - -R
+          - /static
+          - /mnt/chrome
+        volumeMounts:
+        - name: chrome-static
+          mountPath: "/mnt/chrome"
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      containers:
+      - image: registry.access.redhat.com/ubi9/nginx-120@sha256:88a4f2d184f52c4d3956be06b12d578d0bf681ec9d0a8b80e558a98c1860fa12
+        name: nginx-120
+        command:
+          - nginx
+          - -g 
+          - "daemon off;"
+        livenessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 8080
+            scheme: HTTP
+          initialDelaySeconds: 10
+          periodSeconds: 60
+          successThreshold: 1
+          timeoutSeconds: 1
+        ports:
+        - containerPort: 8080
+          name: web
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        volumeMounts:
+          - mountPath: /etc/nginx/nginx.conf
+            subPath: nginx.conf
+            name: proxy
+            readOnly: true
+          - name: chrome-static
+            mountPath: /opt/app-root/src/chrome
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: proxy
+            items:
+              - key: nginx.conf
+                path: nginx.conf 
+          name: proxy
+        - name: chrome-static
+          emptyDir: {}
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+spec:
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - appProtocol: http
+      name: web
+      port: 8080
+      protocol: TCP
+      targetPort: web
+  selector:
+    app: proxy
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-registration
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /api/k8s/registration
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-k8s
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /api/k8s
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  labels:
+    app: proxy
+  name: proxy-websocket
+spec:
+  host: rhtap.apps.gbenham.lab.upshift.rdu2.redhat.com
+  path: /wss/k8s
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+  wildcardPolicy: None
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: redirect-root
+spec:
+  host: ee-r6h99drp.apps.c-rh-c-eph.8p0c.p1.openshiftapps.com
+  path: /
+  port:
+    targetPort: web
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: edge
+  to:
+    kind: Service
+    name: proxy
+    weight: 100
+  wildcardPolicy: None
diff --git a/components/ui/staging/fed-modules.json b/components/ui/staging/fed-modules.json
new file mode 100644
index 00000000..67f2403d
--- /dev/null
+++ b/components/ui/staging/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
new file mode 100644
index 00000000..84d8f59e
--- /dev/null
+++ b/components/ui/staging/kustomization.yaml
@@ -0,0 +1,28 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: a40a953
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: e3decf1   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/staging/set-hostname.yaml b/components/ui/staging/set-hostname.yaml
new file mode 100644
index 00000000..165592a7
--- /dev/null
+++ b/components/ui/staging/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 6ded4a27..7bee3147 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -51,6 +51,8 @@ docs-en:
         url: /components/monitoring/prometheus/README.html
       - title: Grafana
         url: /components/monitoring/grafana/README.html
+      - title: UI
+        url: /components/ui/README.html
   - title: Misc
     children:
       - title: FAQs/Troubleshooting 
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

./commit-efc039f0/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from 1671ddde to f505a550 on Sun Dec 24 14:31:41 2023 </h3>  
 
<details> 
<summary>Git Diff (97 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index f82f9b89..158a8fce 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/build-service
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/components/build-service/staging/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
similarity index 63%
rename from components/build-service/staging/kustomization.yaml
rename to components/build-service/staging/base/kustomization.yaml
index 479bc600..895e4590 100644
--- a/components/build-service/staging/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ed65afa8
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..1d08d28a
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/build/stone-stage-p01/github-app
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index df0b98e4..84d084c4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1689,7 +1689,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: staging/pipeline-service/github-app
+      key: staging/pipeline-service/stone-stage-p01/github-app
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index dedaea51..ad4b5a97 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -15,3 +15,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..e589d06d
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-1671ddde/production/app-of-apps-production.yaml
148c148
<             clusterDir: base
---
>             clusterDir: ""
152,154c152
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: [] 
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

./commit-f505a550/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f505a550/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 1671ddde to f505a550 on Sun Dec 24 14:31:41 2023 </h3>  
 
<details> 
<summary>Git Diff (97 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index f82f9b89..158a8fce 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/build-service
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/components/build-service/staging/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
similarity index 63%
rename from components/build-service/staging/kustomization.yaml
rename to components/build-service/staging/base/kustomization.yaml
index 479bc600..895e4590 100644
--- a/components/build-service/staging/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ed65afa8
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..1d08d28a
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/build/stone-stage-p01/github-app
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index df0b98e4..84d084c4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1689,7 +1689,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: staging/pipeline-service/github-app
+      key: staging/pipeline-service/stone-stage-p01/github-app
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index dedaea51..ad4b5a97 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -15,3 +15,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..e589d06d
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-1671ddde/staging/app-of-apps-staging.yaml
148c148
<             clusterDir: base
---
>             clusterDir: ""
152,154c152
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: []
./commit-1671ddde/staging/components/build-service/staging: kustomize.out.yaml
./commit-f505a550/staging/components/build-service/staging: stone-stage-p01
./commit-1671ddde/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1692c1692
<       key: staging/pipeline-service/stone-stage-p01/github-app
---
>       key: staging/pipeline-service/github-app 
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

./commit-f505a550/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f505a550/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f505a550/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 1671ddde to f505a550 on Sun Dec 24 14:31:41 2023 </h3>  
 
<details> 
<summary>Git Diff (97 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index f82f9b89..158a8fce 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/build-service
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/components/build-service/staging/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
similarity index 63%
rename from components/build-service/staging/kustomization.yaml
rename to components/build-service/staging/base/kustomization.yaml
index 479bc600..895e4590 100644
--- a/components/build-service/staging/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
diff --git a/components/build-service/staging/stone-stage-p01/kustomization.yaml b/components/build-service/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ed65afa8
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..1d08d28a
--- /dev/null
+++ b/components/build-service/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/build/stone-stage-p01/github-app
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index df0b98e4..84d084c4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1689,7 +1689,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: staging/pipeline-service/github-app
+      key: staging/pipeline-service/stone-stage-p01/github-app
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index dedaea51..ad4b5a97 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -15,3 +15,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..e589d06d
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-1671ddde/development/app-of-apps-development.yaml
69,71c69
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: [] 
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

./commit-f505a550/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
