# kustomize changes tracked by commits 
### This file generated at Mon Oct 21 16:07:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 51cdfcbd to 2bb3d6cd on Mon Oct 21 14:14:32 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
index 2aaaf106..351d7c26 100644
--- a/components/release/base/cronjobs/kustomization.yaml
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 
 resources:
 - remove-expired-releases.yaml
+- remove-internal-requests.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-51cdfcbd/production/components/release/production/kustomize.out.yaml
1999,2062d1998
<   name: cleanup-timed-out-pipelineruns-internal-requests
<   namespace: release-service
< spec:
<   failedJobsHistoryLimit: 3
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nINTERNAL_REQUESTS_FILE=\"/var/tmp/internal-requests-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nYD=$(date -d 'yesterday' +%s)\nkubectl get internalrequests
<               --all-namespaces \\\n--sort-by=.status.completionTime \\\n--template
<               '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.completionTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v yesterday=${YD} '{\n     # parsing the completionTime
<               and converting it to epoch\n     # so we can compute the precise IRs
<               that should be deleted\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    completionTime=strftime(\"%s\", t)\n     #\n     # completionTime
<               should be smaller than yesterday seconds so it can be deleted\n     if(yesterday
<               > completionTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE\n\n# The
<               deleteAndLog will run the CR deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
<               deleteAndLog() {\n  ir=${1%:*}\n  namespace=${1#*:}\n  kubectl delete
<               internalrequest $ir -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
<             imagePullPolicy: IfNotPresent
<             name: ir-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 300Mi
<               requests:
<                 cpu: 100m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
<   successfulJobsHistoryLimit: 3
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata: 
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
<h3>1: Staging changes from 51cdfcbd to 2bb3d6cd on Mon Oct 21 14:14:32 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
index 2aaaf106..351d7c26 100644
--- a/components/release/base/cronjobs/kustomization.yaml
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 
 resources:
 - remove-expired-releases.yaml
+- remove-internal-requests.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-51cdfcbd/staging/components/release/staging/kustomize.out.yaml
2193,2256d2192
<   name: cleanup-timed-out-pipelineruns-internal-requests
<   namespace: release-service
< spec:
<   failedJobsHistoryLimit: 3
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nINTERNAL_REQUESTS_FILE=\"/var/tmp/internal-requests-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nYD=$(date -d 'yesterday' +%s)\nkubectl get internalrequests
<               --all-namespaces \\\n--sort-by=.status.completionTime \\\n--template
<               '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.completionTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v yesterday=${YD} '{\n     # parsing the completionTime
<               and converting it to epoch\n     # so we can compute the precise IRs
<               that should be deleted\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    completionTime=strftime(\"%s\", t)\n     #\n     # completionTime
<               should be smaller than yesterday seconds so it can be deleted\n     if(yesterday
<               > completionTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE\n\n# The
<               deleteAndLog will run the CR deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
<               deleteAndLog() {\n  ir=${1%:*}\n  namespace=${1#*:}\n  kubectl delete
<               internalrequest $ir -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
<             imagePullPolicy: IfNotPresent
<             name: ir-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 300Mi
<               requests:
<                 cpu: 100m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
<   successfulJobsHistoryLimit: 3
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata: 
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
<h3>1: Development changes from 51cdfcbd to 2bb3d6cd on Mon Oct 21 14:14:32 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
index 2aaaf106..351d7c26 100644
--- a/components/release/base/cronjobs/kustomization.yaml
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 
 resources:
 - remove-expired-releases.yaml
+- remove-internal-requests.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-51cdfcbd/development/components/release/development/kustomize.out.yaml
2193,2256d2192
<   name: cleanup-timed-out-pipelineruns-internal-requests
<   namespace: release-service
< spec:
<   failedJobsHistoryLimit: 3
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nINTERNAL_REQUESTS_FILE=\"/var/tmp/internal-requests-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nYD=$(date -d 'yesterday' +%s)\nkubectl get internalrequests
<               --all-namespaces \\\n--sort-by=.status.completionTime \\\n--template
<               '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.completionTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v yesterday=${YD} '{\n     # parsing the completionTime
<               and converting it to epoch\n     # so we can compute the precise IRs
<               that should be deleted\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    completionTime=strftime(\"%s\", t)\n     #\n     # completionTime
<               should be smaller than yesterday seconds so it can be deleted\n     if(yesterday
<               > completionTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE\n\n# The
<               deleteAndLog will run the CR deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
<               deleteAndLog() {\n  ir=${1%:*}\n  namespace=${1#*:}\n  kubectl delete
<               internalrequest $ir -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
<             imagePullPolicy: IfNotPresent
<             name: ir-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 300Mi
<               requests:
<                 cpu: 100m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
<   successfulJobsHistoryLimit: 3
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata: 
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
<h3>2: Production changes from 924ab30e to 51cdfcbd on Mon Oct 21 13:11:18 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 9996a39e..e576fd96 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,9 +25,3 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index f19f5442..1c614516 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -176,3 +176,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: proactive-scaler
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index e036e910..e70e6244 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: proactive-scaler
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 6f117206..28ee7162 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,9 +43,3 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 218dcc2c..af361355 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
   - ../../base/keycloak
   - ../../base/repository-validator
   - ../../base/cluster-secret-store-rh
+  - ../../base/member/infra-deployments/proactive-scaler
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -191,3 +192,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: proactive-scaler
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index f0e9ed35..22868810 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -1,38 +1,6 @@
 ---
 apiVersion: apps/v1
 kind: Deployment
-metadata:
-  name: m6a-2xlarge
-  namespace: proactive-scaler
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: m6a-2xlarge
-  template:
-    metadata:
-      labels:
-        run: m6a-2xlarge
-    spec:
-      nodeSelector:
-        konflux-ci.dev/workload: konflux-tenants
-        node.kubernetes.io/instance-type: m6a.2xlarge
-      tolerations:
-        - key: konflux-ci.dev/workload
-          operator: "Equal"
-          value: "konflux-tenants"
-          effect: "NoSchedule"
-      priorityClassName: pause-pods
-      containers:
-        - name: reserve-resources
-          image: registry.k8s.io/pause
-          resources:
-            requests:
-              memory: "22Gi"
-              cpu: "5"
----
-apiVersion: apps/v1
-kind: Deployment
 metadata:
   name: m6a-4xlarge
   namespace: proactive-scaler
@@ -62,35 +30,3 @@ spec:
             requests:
               memory: "45Gi"
               cpu: "10"
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: c5d-4xlarge
-  namespace: proactive-scaler
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: c5d-4xlarge
-  template:
-    metadata:
-      labels:
-        run: c5d-4xlarge
-    spec:
-      nodeSelector:
-        konflux-ci.dev/storage: nvme
-        node.kubernetes.io/instance-type: c5d.4xlarge
-      tolerations:
-        - key: konflux-ci.dev/storage
-          operator: "Equal"
-          value: "nvme"
-          effect: "NoSchedule"
-      priorityClassName: pause-pods
-      containers:
-        - name: reserve-resources
-          image: registry.k8s.io/pause
-          resources:
-            requests:
-              memory: "22Gi"
-              cpu: "10" 
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
<h3>2: Staging changes from 924ab30e to 51cdfcbd on Mon Oct 21 13:11:18 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 9996a39e..e576fd96 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,9 +25,3 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index f19f5442..1c614516 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -176,3 +176,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: proactive-scaler
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index e036e910..e70e6244 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: proactive-scaler
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 6f117206..28ee7162 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,9 +43,3 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 218dcc2c..af361355 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
   - ../../base/keycloak
   - ../../base/repository-validator
   - ../../base/cluster-secret-store-rh
+  - ../../base/member/infra-deployments/proactive-scaler
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -191,3 +192,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: proactive-scaler
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index f0e9ed35..22868810 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -1,38 +1,6 @@
 ---
 apiVersion: apps/v1
 kind: Deployment
-metadata:
-  name: m6a-2xlarge
-  namespace: proactive-scaler
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: m6a-2xlarge
-  template:
-    metadata:
-      labels:
-        run: m6a-2xlarge
-    spec:
-      nodeSelector:
-        konflux-ci.dev/workload: konflux-tenants
-        node.kubernetes.io/instance-type: m6a.2xlarge
-      tolerations:
-        - key: konflux-ci.dev/workload
-          operator: "Equal"
-          value: "konflux-tenants"
-          effect: "NoSchedule"
-      priorityClassName: pause-pods
-      containers:
-        - name: reserve-resources
-          image: registry.k8s.io/pause
-          resources:
-            requests:
-              memory: "22Gi"
-              cpu: "5"
----
-apiVersion: apps/v1
-kind: Deployment
 metadata:
   name: m6a-4xlarge
   namespace: proactive-scaler
@@ -62,35 +30,3 @@ spec:
             requests:
               memory: "45Gi"
               cpu: "10"
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: c5d-4xlarge
-  namespace: proactive-scaler
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: c5d-4xlarge
-  template:
-    metadata:
-      labels:
-        run: c5d-4xlarge
-    spec:
-      nodeSelector:
-        konflux-ci.dev/storage: nvme
-        node.kubernetes.io/instance-type: c5d.4xlarge
-      tolerations:
-        - key: konflux-ci.dev/storage
-          operator: "Equal"
-          value: "nvme"
-          effect: "NoSchedule"
-      priorityClassName: pause-pods
-      containers:
-        - name: reserve-resources
-          image: registry.k8s.io/pause
-          resources:
-            requests:
-              memory: "22Gi"
-              cpu: "10" 
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
<h3>2: Development changes from 924ab30e to 51cdfcbd on Mon Oct 21 13:11:18 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 9996a39e..e576fd96 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,9 +25,3 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index f19f5442..1c614516 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -176,3 +176,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: proactive-scaler
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index e036e910..e70e6244 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: proactive-scaler
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 6f117206..28ee7162 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,9 +43,3 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: proactive-scaler
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 218dcc2c..af361355 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
   - ../../base/keycloak
   - ../../base/repository-validator
   - ../../base/cluster-secret-store-rh
+  - ../../base/member/infra-deployments/proactive-scaler
 patchesStrategicMerge:
   - delete-applications.yaml
 namespace: argocd
@@ -191,3 +192,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: notification-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: proactive-scaler
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index f0e9ed35..22868810 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -1,38 +1,6 @@
 ---
 apiVersion: apps/v1
 kind: Deployment
-metadata:
-  name: m6a-2xlarge
-  namespace: proactive-scaler
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: m6a-2xlarge
-  template:
-    metadata:
-      labels:
-        run: m6a-2xlarge
-    spec:
-      nodeSelector:
-        konflux-ci.dev/workload: konflux-tenants
-        node.kubernetes.io/instance-type: m6a.2xlarge
-      tolerations:
-        - key: konflux-ci.dev/workload
-          operator: "Equal"
-          value: "konflux-tenants"
-          effect: "NoSchedule"
-      priorityClassName: pause-pods
-      containers:
-        - name: reserve-resources
-          image: registry.k8s.io/pause
-          resources:
-            requests:
-              memory: "22Gi"
-              cpu: "5"
----
-apiVersion: apps/v1
-kind: Deployment
 metadata:
   name: m6a-4xlarge
   namespace: proactive-scaler
@@ -62,35 +30,3 @@ spec:
             requests:
               memory: "45Gi"
               cpu: "10"
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: c5d-4xlarge
-  namespace: proactive-scaler
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: c5d-4xlarge
-  template:
-    metadata:
-      labels:
-        run: c5d-4xlarge
-    spec:
-      nodeSelector:
-        konflux-ci.dev/storage: nvme
-        node.kubernetes.io/instance-type: c5d.4xlarge
-      tolerations:
-        - key: konflux-ci.dev/storage
-          operator: "Equal"
-          value: "nvme"
-          effect: "NoSchedule"
-      priorityClassName: pause-pods
-      containers:
-        - name: reserve-resources
-          image: registry.k8s.io/pause
-          resources:
-            requests:
-              memory: "22Gi"
-              cpu: "10" 
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
<h3>3: Production changes from 8dbf6514 to 924ab30e on Mon Oct 21 11:29:31 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml b/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
index 020e2b99..abb15d22 100644
--- a/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
+++ b/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
-  path: /spec/template/spec/containers/0/args/-
+  path: /spec/template/spec/containers/1/args/-
   value: '--zap-encoder=console' 
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
<h3>3: Staging changes from 8dbf6514 to 924ab30e on Mon Oct 21 11:29:31 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml b/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
index 020e2b99..abb15d22 100644
--- a/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
+++ b/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
-  path: /spec/template/spec/containers/0/args/-
+  path: /spec/template/spec/containers/1/args/-
   value: '--zap-encoder=console' 
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
<h3>3: Development changes from 8dbf6514 to 924ab30e on Mon Oct 21 11:29:31 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml b/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
index 020e2b99..abb15d22 100644
--- a/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
+++ b/components/multi-platform-controller/development/logs-in-console-format-cmd-arg-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
-  path: /spec/template/spec/containers/0/args/-
+  path: /spec/template/spec/containers/1/args/-
   value: '--zap-encoder=console' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8dbf6514/development/components/multi-platform-controller/development/kustomize.out.yaml
311a312
>         - --zap-encoder=console
334d334
<         - --zap-encoder=console 
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
<h3>4: Production changes from 4730166a to 8dbf6514 on Fri Oct 18 20:00:50 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 0455b3cd..ace354f1 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
 - host-config.yaml
 - external-secrets.yaml
 
@@ -16,7 +16,7 @@ patchesStrategicMerge:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574 
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
<h3>4: Staging changes from 4730166a to 8dbf6514 on Fri Oct 18 20:00:50 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 0455b3cd..ace354f1 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
 - host-config.yaml
 - external-secrets.yaml
 
@@ -16,7 +16,7 @@ patchesStrategicMerge:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574 
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
<h3>4: Development changes from 4730166a to 8dbf6514 on Fri Oct 18 20:00:50 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 0455b3cd..ace354f1 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,8 +5,8 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
 - host-config.yaml
 - external-secrets.yaml
 
@@ -16,7 +16,7 @@ patchesStrategicMerge:
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574 
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
