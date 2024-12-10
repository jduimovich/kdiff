# kustomize changes tracked by commits 
### This file generated at Tue Dec 10 12:07:05 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f055ba70 to 766dcbb7 on Tue Dec 10 10:36:11 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index deac35e3..7adc2c7e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 52917d98..f03110a3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ff60deed..b256a6e0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 26b32cb8..4c2b876c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f055ba70 to 766dcbb7 on Tue Dec 10 10:36:11 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index deac35e3..7adc2c7e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 52917d98..f03110a3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ff60deed..b256a6e0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 26b32cb8..4c2b876c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-f055ba70/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1442c1442
<         image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1545c1545
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1676c1676
<         image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
./commit-f055ba70/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1442c1442
<         image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1545c1545
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1676c1676
<         image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9 
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
<h3>1: Development changes from f055ba70 to 766dcbb7 on Tue Dec 10 10:36:11 2024 </h3>  
 
<details> 
<summary>Git Diff (124 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index deac35e3..7adc2c7e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 52917d98..f03110a3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+          image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ff60deed..b256a6e0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 26b32cb8..4c2b876c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
+        image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-f055ba70/development/components/pipeline-service/development/kustomize.out.yaml
1266c1266
<         image: quay.io/konflux-ci/tekton-results-api:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1398c1398
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
1503c1503
<         image: quay.io/konflux-ci/tekton-results-watcher:5482f328e3de73a72c7ea5747a9b6c2d42b974be
---
>         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 81e7c207 to f055ba70 on Tue Dec 10 09:41:49 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index 9bdb9416..54654713 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
+- https://github.com/konflux-ci/notification-service/config/default?ref=02bafa892082d3356b9ff47a49669bd7796ed553
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: 9398a25bd2e88139182085b91a8b58da33633021
+    newTag: 02bafa892082d3356b9ff47a49669bd7796ed553
 
 namespace: notification-controller
 
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index 8217649c..5e68eb41 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
+- https://github.com/konflux-ci/notification-service/config/default?ref=02bafa892082d3356b9ff47a49669bd7796ed553
 - ../base/external-secrets
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: 9398a25bd2e88139182085b91a8b58da33633021
+    newTag: 02bafa892082d3356b9ff47a49669bd7796ed553
 
 namespace: notification-controller
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 81e7c207 to f055ba70 on Tue Dec 10 09:41:49 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index 9bdb9416..54654713 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
+- https://github.com/konflux-ci/notification-service/config/default?ref=02bafa892082d3356b9ff47a49669bd7796ed553
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: 9398a25bd2e88139182085b91a8b58da33633021
+    newTag: 02bafa892082d3356b9ff47a49669bd7796ed553
 
 namespace: notification-controller
 
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index 8217649c..5e68eb41 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
+- https://github.com/konflux-ci/notification-service/config/default?ref=02bafa892082d3356b9ff47a49669bd7796ed553
 - ../base/external-secrets
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: 9398a25bd2e88139182085b91a8b58da33633021
+    newTag: 02bafa892082d3356b9ff47a49669bd7796ed553
 
 namespace: notification-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81e7c207/staging/components/notification-controller/staging/kustomize.out.yaml
208c208
<         image: quay.io/konflux-ci/notification-service:02bafa892082d3356b9ff47a49669bd7796ed553
---
>         image: quay.io/konflux-ci/notification-service:9398a25bd2e88139182085b91a8b58da33633021 
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
<h3>2: Development changes from 81e7c207 to f055ba70 on Tue Dec 10 09:41:49 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index 9bdb9416..54654713 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
+- https://github.com/konflux-ci/notification-service/config/default?ref=02bafa892082d3356b9ff47a49669bd7796ed553
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: 9398a25bd2e88139182085b91a8b58da33633021
+    newTag: 02bafa892082d3356b9ff47a49669bd7796ed553
 
 namespace: notification-controller
 
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index 8217649c..5e68eb41 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
+- https://github.com/konflux-ci/notification-service/config/default?ref=02bafa892082d3356b9ff47a49669bd7796ed553
 - ../base/external-secrets
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: 9398a25bd2e88139182085b91a8b58da33633021
+    newTag: 02bafa892082d3356b9ff47a49669bd7796ed553
 
 namespace: notification-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81e7c207/development/components/notification-controller/development/kustomize.out.yaml
208c208
<         image: quay.io/konflux-ci/notification-service:02bafa892082d3356b9ff47a49669bd7796ed553
---
>         image: quay.io/konflux-ci/notification-service:9398a25bd2e88139182085b91a8b58da33633021 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 575155f4 to 81e7c207 on Tue Dec 10 08:10:38 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 77c66f1d..f801aadc 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+- https://github.com/konflux-ci/project-controller/config/default?ref=16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  newTag: 16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index ee6b2128..ecd40565 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  - https://github.com/konflux-ci/project-controller/config/default?ref=16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  newTag: 16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 namespace: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 575155f4 to 81e7c207 on Tue Dec 10 08:10:38 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 77c66f1d..f801aadc 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+- https://github.com/konflux-ci/project-controller/config/default?ref=16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  newTag: 16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index ee6b2128..ecd40565 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  - https://github.com/konflux-ci/project-controller/config/default?ref=16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  newTag: 16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-575155f4/staging/components/project-controller/staging/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:16de2464c85632d786b38f61b4c4aaf44034cf3e
---
>         image: quay.io/konflux-ci/project-controller:f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a 
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
<h3>3: Development changes from 575155f4 to 81e7c207 on Tue Dec 10 08:10:38 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 77c66f1d..f801aadc 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+- https://github.com/konflux-ci/project-controller/config/default?ref=16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  newTag: 16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index ee6b2128..ecd40565 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  - https://github.com/konflux-ci/project-controller/config/default?ref=16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a
+  newTag: 16de2464c85632d786b38f61b4c4aaf44034cf3e
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-575155f4/development/components/project-controller/development/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:16de2464c85632d786b38f61b4c4aaf44034cf3e
---
>         image: quay.io/konflux-ci/project-controller:f3fdacc1a367cbe69a9b3c3f08773d023a3f5f3a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2ed0e59d to 575155f4 on Tue Dec 10 01:56:23 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 92e7b80f..0d93d342 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,14 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
       additional-params:
       - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-2ed0e59d/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
./commit-2ed0e59d/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 2ed0e59d to 575155f4 on Tue Dec 10 01:56:23 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 92e7b80f..0d93d342 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,14 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
       additional-params:
       - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2ed0e59d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8 
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
<h3>4: Development changes from 2ed0e59d to 575155f4 on Tue Dec 10 01:56:23 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 92e7b80f..0d93d342 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,14 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
       additional-params:
       - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2ed0e59d/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8
447c447
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:fea7923d9a9dd4ee5655a42557f8cfb468c471c0
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:9e81f3c05dfc731cb2969e1f8e9fbc00611576c8 
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
```
 
</details> 
<br> 


</div>
