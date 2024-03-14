# kustomize changes tracked by commits 
### This file generated at Thu Mar 14 04:05:33 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 192922a6 to 761f54ce on Thu Mar 14 02:32:24 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 2a6bb3f9..796c0ad1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 52e80606..3036fccf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7aedc9a8..1b7f2ef7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f24b768c..1da3cb1e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7c674ade..796b507c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d68126df..78940544 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \ 
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
<h3>1: Staging changes from 192922a6 to 761f54ce on Thu Mar 14 02:32:24 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 2a6bb3f9..796c0ad1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 52e80606..3036fccf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7aedc9a8..1b7f2ef7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f24b768c..1da3cb1e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7c674ade..796b507c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d68126df..78940544 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (54 lines)</summary>  

``` 
./commit-192922a6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1374c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1528c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1665a1666,1673
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
./commit-192922a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1374c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1528c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1665a1666,1673
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f -
./commit-192922a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1374c1374
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1528c1528
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1665a1666,1673
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f - 
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
<h3>1: Development changes from 192922a6 to 761f54ce on Thu Mar 14 02:32:24 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 2a6bb3f9..796c0ad1 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 52e80606..3036fccf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 7aedc9a8..1b7f2ef7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d8bd79bfa8bd6c4d2822e3da0162b1ec757e5b00
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7ca341c412a0654bb2ba16e079ff7507195e5e1f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f24b768c..1da3cb1e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7c674ade..796b507c 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d68126df..78940544 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1371,7 +1371,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1525,7 +1525,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
+        image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
         name: watcher
         ports:
         - containerPort: 9090
@@ -1665,14 +1665,6 @@ spec:
             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
           fi
 
-          # If the secret is not marked as immutable, make it so.
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
-            echo "Making secret immutable"
-            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
-              --patch='{"immutable": true}' \
-            | kubectl apply -f -
-          fi
-
           echo "Generating/updating the secret with the public key"
           kubectl create secret generic public-key \
             --namespace "$namespace" \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-192922a6/development/components/pipeline-service/development/kustomize.out.yaml
1350c1350
<         image: quay.io/redhat-appstudio/tekton-results-api:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1568c1568
<         image: quay.io/redhat-appstudio/tekton-results-watcher:3429e667f92396aa273eb60c4212105ca2ffda9b
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
1802a1803,1810
>           fi
> 
>           # If the secret is not marked as immutable, make it so.
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
>             echo "Making secret immutable"
>             kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
>               --patch='{"immutable": true}' \
>             | kubectl apply -f - 
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
<h3>2: Production changes from ffa9fef1 to 192922a6 on Thu Mar 14 00:39:32 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index dae8dd44..e5c68931 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
+  newTag: c09c4f874cdda8505909b3b2627771c76df44797
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 5001d2cc..bc9c0065 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
+    value: c09c4f874cdda8505909b3b2627771c76df44797
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 02e3d6a6..897403ee 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-ffa9fef1/production/components/jvm-build-service/production/kustomize.out.yaml
173,175d172
<                         finishTime:
<                           format: int64
<                           type: integer
180,200d176
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
321,329d296
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                   type: object
<                 type: array
810,811d776
<               digest:
<                 type: string
1431c1396
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
1483c1448
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
1487c1452
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb 
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
<h3>2: Staging changes from ffa9fef1 to 192922a6 on Thu Mar 14 00:39:32 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index dae8dd44..e5c68931 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
+  newTag: c09c4f874cdda8505909b3b2627771c76df44797
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 5001d2cc..bc9c0065 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
+    value: c09c4f874cdda8505909b3b2627771c76df44797
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 02e3d6a6..897403ee 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-ffa9fef1/staging/components/jvm-build-service/staging/kustomize.out.yaml
173,175d172
<                         finishTime:
<                           format: int64
<                           type: integer
180,200d176
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
321,329d296
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                   type: object
<                 type: array
810,811d776
<               digest:
<                 type: string
1431c1396
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
1483c1448
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
1487c1452
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb 
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
<h3>2: Development changes from ffa9fef1 to 192922a6 on Thu Mar 14 00:39:32 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index dae8dd44..e5c68931 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=c09c4f874cdda8505909b3b2627771c76df44797
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 1f980ef8f4540dc09fcfc8454972418a7c114404
+  newTag: c09c4f874cdda8505909b3b2627771c76df44797
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 5001d2cc..bc9c0065 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 1f980ef8f4540dc09fcfc8454972418a7c114404
+    value: c09c4f874cdda8505909b3b2627771c76df44797
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index 02e3d6a6..897403ee 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=1f980ef8f4540dc09fcfc8454972418a7c114404
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=c09c4f874cdda8505909b3b2627771c76df44797
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-ffa9fef1/development/components/jvm-build-service/development/kustomize.out.yaml
173,175d172
<                         finishTime:
<                           format: int64
<                           type: integer
180,200d176
<                             contaminated:
<                               type: boolean
<                             contaminates:
<                               items:
<                                 properties:
<                                   allowed:
<                                     type: boolean
<                                   buildId:
<                                     type: string
<                                   contaminatedArtifacts:
<                                     items:
<                                       type: string
<                                     type: array
<                                   gav:
<                                     type: string
<                                   rebuildAvailable:
<                                     type: boolean
<                                   source:
<                                     type: string
<                                 type: object
<                               type: array
321,329d296
<               builderImages:
<                 items:
<                   properties:
<                     baseBuilderImage:
<                       type: string
<                     builtImageDigest:
<                       type: string
<                   type: object
<                 type: array
810,811d776
<               digest:
<                 type: string
1431c1396
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:c09c4f874cdda8505909b3b2627771c76df44797
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1f980ef8f4540dc09fcfc8454972418a7c114404
1462c1427
<       image: quay.io/redhat-appstudio/jbs-ubi7-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi7-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb
1466c1431
<       image: quay.io/redhat-appstudio/jbs-ubi8-builder:a86a5a611c58358c8670851b4ced7ebb6ce915b6
---
>       image: quay.io/redhat-appstudio/jbs-ubi8-builder:ad0aa55e2ff708f77742fde761d95367b9fc5beb 
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
<h3>3: Production changes from 0b5a4d39 to ffa9fef1 on Wed Mar 13 17:57:57 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ce8b9c73..a073f8f9 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -10,6 +10,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL=""
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index b342b5f2..f7f38971 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: c6ceab5e54a3b57e1a699d534ad1179ac60029f2
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b390da58..b9a05eb2 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 200m
             memory: 600Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index ec1f2bdb..9a47b350 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-0b5a4d39/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1085,1093d1084
<   CONSOLE_URL: https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace
<     }}/pipelinerun/{{ .PipelineRunName }}
< kind: ConfigMap
< metadata:
<   name: console-url-h2kgf6tmbb
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
1192,1198d1182
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-h2kgf6tmbb
<               optional: true 
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
<h3>3: Staging changes from 0b5a4d39 to ffa9fef1 on Wed Mar 13 17:57:57 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ce8b9c73..a073f8f9 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -10,6 +10,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL=""
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index b342b5f2..f7f38971 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: c6ceab5e54a3b57e1a699d534ad1179ac60029f2
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b390da58..b9a05eb2 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 200m
             memory: 600Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index ec1f2bdb..9a47b350 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-0b5a4d39/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1085,1093d1084
<   CONSOLE_URL: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace
<     }}/pipelinerun/{{ .PipelineRunName }}
< kind: ConfigMap
< metadata:
<   name: console-url-9bttdkbk4f
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
1192,1198d1182
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-9bttdkbk4f
<               optional: true 
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
<h3>3: Development changes from 0b5a4d39 to ffa9fef1 on Wed Mar 13 17:57:57 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index ce8b9c73..a073f8f9 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -10,6 +10,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL=""
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index b342b5f2..f7f38971 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: c6ceab5e54a3b57e1a699d534ad1179ac60029f2
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index b390da58..b9a05eb2 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 200m
             memory: 600Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index ec1f2bdb..9a47b350 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -11,6 +11,11 @@ images:
   newName: quay.io/redhat-appstudio/integration-service
   newTag: 55b2bae85419df8cd8b9e633d212826a7b9567ee
 
+configMapGenerator:
+- name: console-url
+  literals:
+    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+
 namespace: integration-service
 
 patches:
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 87ef961d..90c5a26b 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -15,3 +15,10 @@ spec:
           requests:
             cpu: 100m
             memory: 20Mi
+        env:
+        - name: CONSOLE_URL
+          valueFrom:
+              configMapKeyRef:
+                name: console-url
+                key: CONSOLE_URL
+                optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-0b5a4d39/development/components/integration/development/kustomize.out.yaml
1085,1092d1084
<   CONSOLE_URL: ""
< kind: ConfigMap
< metadata:
<   name: console-url-b957927t67
<   namespace: integration-service
< ---
< apiVersion: v1
< data:
1191,1197d1182
<         env:
<         - name: CONSOLE_URL
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_URL
<               name: console-url-b957927t67
<               optional: true 
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
<h3>4: Production changes from 595fd9c4 to 0b5a4d39 on Wed Mar 13 16:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..94d05424
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+namespace: konflux-public-staging
+patches:
+  - target:
+      kind: Application
+      name: all-application-sets
+    patch: |-
+      - op: replace
+        path: /spec/destination/namespace
+        value: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..146985da
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+namespace: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 595fd9c4 to 0b5a4d39 on Wed Mar 13 16:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..94d05424
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+namespace: konflux-public-staging
+patches:
+  - target:
+      kind: Application
+      name: all-application-sets
+    patch: |-
+      - op: replace
+        path: /spec/destination/namespace
+        value: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..146985da
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+namespace: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
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
<h3>4: Development changes from 595fd9c4 to 0b5a4d39 on Wed Mar 13 16:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..94d05424
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+namespace: konflux-public-staging
+patches:
+  - target:
+      kind: Application
+      name: all-application-sets
+    patch: |-
+      - op: replace
+        path: /spec/destination/namespace
+        value: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
new file mode 100644
index 00000000..146985da
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/host
+  - ../../base/member
+  - ../../base/all-clusters
+patches:
+  - path: migration.patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+namespace: konflux-public-staging
diff --git a/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
new file mode 100644
index 00000000..a60ffc01
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/migration.patch.yaml
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
