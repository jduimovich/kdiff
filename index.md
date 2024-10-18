# kustomize changes tracked by commits 
### This file generated at Fri Oct 18 08:03:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 80e69f91 to 4cd68b9a on Thu Oct 17 15:44:05 2024 </h3>  
 
<details> 
<summary>Git Diff (86 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-internal-requests.yaml b/components/release/base/cronjobs/remove-internal-requests.yaml
new file mode 100644
index 00000000..904c202c
--- /dev/null
+++ b/components/release/base/cronjobs/remove-internal-requests.yaml
@@ -0,0 +1,80 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: cleanup-timed-out-pipelineruns-internal-requests
+  namespace: release-service
+spec:
+  schedule: "10 03 * * *"
+  successfulJobsHistoryLimit: 3
+  failedJobsHistoryLimit: 3
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: release-service-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: ir-cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+                  PATH="/bin:/usr/bin:/usr/local/bin"
+                  MAX_PROCS=5
+                  INTERNAL_REQUESTS_FILE="/var/tmp/internal-requests-to-be-deleted"
+                  KUBECTL_OUTPUT=$(mktemp -p /var/tmp)
+                  YD=$(date -d 'yesterday' +%s)
+                  kubectl get internalrequests --all-namespaces \
+                  --sort-by=.status.completionTime \
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.completionTime}}{{"\n"}}{{end}}' > $KUBECTL_OUTPUT
+                  awk -v yesterday=${YD} '{
+                       # parsing the completionTime and converting it to epoch
+                       # so we can compute the precise IRs that should be deleted
+                       gsub("[:\\-TZ]", " ", $3)
+                       t=mktime($3)
+                       completionTime=strftime("%s", t)
+                       #
+                       # completionTime should be smaller than yesterday seconds so it can be deleted
+                       if(yesterday > completionTime) {
+                         args="%s:%s\n"
+                         printf(args, $1, $2)
+                       } 
+                    }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE
+
+                  # The deleteAndLog will run the CR deletion and save the operation in a structured way that        
+                  # can be read easily by kubectl or journalctl                                                           
+                  function deleteAndLog() {
+                    ir=${1%:*}
+                    namespace=${1#*:}
+                    kubectl delete internalrequest $ir -n $namespace |while read logLine; do
+                      echo "INFO: namespace=${namespace} log=${logLine}"
+                    done                                                                                                  
+                  }                                                                                                       
+                  export -f deleteAndLog
+                  xargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
+              imagePullPolicy: IfNotPresent
+              image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 200m
+                  memory: 300Mi
+                requests:
+                  cpu: 100m
+                  memory: 200Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault 
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
<h3>1: Staging changes from 80e69f91 to 4cd68b9a on Thu Oct 17 15:44:05 2024 </h3>  
 
<details> 
<summary>Git Diff (86 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-internal-requests.yaml b/components/release/base/cronjobs/remove-internal-requests.yaml
new file mode 100644
index 00000000..904c202c
--- /dev/null
+++ b/components/release/base/cronjobs/remove-internal-requests.yaml
@@ -0,0 +1,80 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: cleanup-timed-out-pipelineruns-internal-requests
+  namespace: release-service
+spec:
+  schedule: "10 03 * * *"
+  successfulJobsHistoryLimit: 3
+  failedJobsHistoryLimit: 3
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: release-service-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: ir-cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+                  PATH="/bin:/usr/bin:/usr/local/bin"
+                  MAX_PROCS=5
+                  INTERNAL_REQUESTS_FILE="/var/tmp/internal-requests-to-be-deleted"
+                  KUBECTL_OUTPUT=$(mktemp -p /var/tmp)
+                  YD=$(date -d 'yesterday' +%s)
+                  kubectl get internalrequests --all-namespaces \
+                  --sort-by=.status.completionTime \
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.completionTime}}{{"\n"}}{{end}}' > $KUBECTL_OUTPUT
+                  awk -v yesterday=${YD} '{
+                       # parsing the completionTime and converting it to epoch
+                       # so we can compute the precise IRs that should be deleted
+                       gsub("[:\\-TZ]", " ", $3)
+                       t=mktime($3)
+                       completionTime=strftime("%s", t)
+                       #
+                       # completionTime should be smaller than yesterday seconds so it can be deleted
+                       if(yesterday > completionTime) {
+                         args="%s:%s\n"
+                         printf(args, $1, $2)
+                       } 
+                    }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE
+
+                  # The deleteAndLog will run the CR deletion and save the operation in a structured way that        
+                  # can be read easily by kubectl or journalctl                                                           
+                  function deleteAndLog() {
+                    ir=${1%:*}
+                    namespace=${1#*:}
+                    kubectl delete internalrequest $ir -n $namespace |while read logLine; do
+                      echo "INFO: namespace=${namespace} log=${logLine}"
+                    done                                                                                                  
+                  }                                                                                                       
+                  export -f deleteAndLog
+                  xargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
+              imagePullPolicy: IfNotPresent
+              image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 200m
+                  memory: 300Mi
+                requests:
+                  cpu: 100m
+                  memory: 200Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault 
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
<h3>1: Development changes from 80e69f91 to 4cd68b9a on Thu Oct 17 15:44:05 2024 </h3>  
 
<details> 
<summary>Git Diff (86 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-internal-requests.yaml b/components/release/base/cronjobs/remove-internal-requests.yaml
new file mode 100644
index 00000000..904c202c
--- /dev/null
+++ b/components/release/base/cronjobs/remove-internal-requests.yaml
@@ -0,0 +1,80 @@
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  name: cleanup-timed-out-pipelineruns-internal-requests
+  namespace: release-service
+spec:
+  schedule: "10 03 * * *"
+  successfulJobsHistoryLimit: 3
+  failedJobsHistoryLimit: 3
+  jobTemplate:
+    spec:
+      template:
+        spec:
+          restartPolicy: Never
+          serviceAccountName: release-service-controller-manager
+          volumes:
+            - name: temp-directory
+              emptyDir: {}
+          containers:
+            - name: ir-cleanup
+              command:
+                - /bin/bash
+                - -c
+                - |
+                  set -o pipefail
+                  PATH="/bin:/usr/bin:/usr/local/bin"
+                  MAX_PROCS=5
+                  INTERNAL_REQUESTS_FILE="/var/tmp/internal-requests-to-be-deleted"
+                  KUBECTL_OUTPUT=$(mktemp -p /var/tmp)
+                  YD=$(date -d 'yesterday' +%s)
+                  kubectl get internalrequests --all-namespaces \
+                  --sort-by=.status.completionTime \
+                  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{.metadata.namespace}}{{"\t"}}{{.status.completionTime}}{{"\n"}}{{end}}' > $KUBECTL_OUTPUT
+                  awk -v yesterday=${YD} '{
+                       # parsing the completionTime and converting it to epoch
+                       # so we can compute the precise IRs that should be deleted
+                       gsub("[:\\-TZ]", " ", $3)
+                       t=mktime($3)
+                       completionTime=strftime("%s", t)
+                       #
+                       # completionTime should be smaller than yesterday seconds so it can be deleted
+                       if(yesterday > completionTime) {
+                         args="%s:%s\n"
+                         printf(args, $1, $2)
+                       } 
+                    }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE
+
+                  # The deleteAndLog will run the CR deletion and save the operation in a structured way that        
+                  # can be read easily by kubectl or journalctl                                                           
+                  function deleteAndLog() {
+                    ir=${1%:*}
+                    namespace=${1#*:}
+                    kubectl delete internalrequest $ir -n $namespace |while read logLine; do
+                      echo "INFO: namespace=${namespace} log=${logLine}"
+                    done                                                                                                  
+                  }                                                                                                       
+                  export -f deleteAndLog
+                  xargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
+              imagePullPolicy: IfNotPresent
+              image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
+              volumeMounts:
+                - mountPath: /var/tmp
+                  name: temp-directory
+              resources:
+                limits:
+                  cpu: 200m
+                  memory: 300Mi
+                requests:
+                  cpu: 100m
+                  memory: 200Mi
+              securityContext:
+                allowPrivilegeEscalation: false
+                capabilities:
+                  drop:
+                  - ALL
+                readOnlyRootFilesystem: true
+                runAsNonRoot: true
+                seccompProfile:
+                  type: RuntimeDefault 
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
<h3>2: Production changes from 16ee972d to 80e69f91 on Thu Oct 17 14:02:21 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
index edfa9ff5..392c106f 100644
--- a/components/multi-platform-controller/staging-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -6,3 +6,7 @@ resources:
 - external-secrets.yaml
 
 namespace: multi-platform-controller
+
+
+patchesStrategicMerge:
+  - replicas_patch.yaml
diff --git a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
new file mode 100644
index 00000000..658f80c7
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
@@ -0,0 +1,21 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  replicas: 3
+  template:
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - multi-platform-controller
+                topologyKey: kubernetes.io/hostname 
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
<h3>2: Staging changes from 16ee972d to 80e69f91 on Thu Oct 17 14:02:21 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
index edfa9ff5..392c106f 100644
--- a/components/multi-platform-controller/staging-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -6,3 +6,7 @@ resources:
 - external-secrets.yaml
 
 namespace: multi-platform-controller
+
+
+patchesStrategicMerge:
+  - replicas_patch.yaml
diff --git a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
new file mode 100644
index 00000000..658f80c7
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
@@ -0,0 +1,21 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  replicas: 3
+  template:
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - multi-platform-controller
+                topologyKey: kubernetes.io/hostname 
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
<h3>2: Development changes from 16ee972d to 80e69f91 on Thu Oct 17 14:02:21 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
index edfa9ff5..392c106f 100644
--- a/components/multi-platform-controller/staging-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -6,3 +6,7 @@ resources:
 - external-secrets.yaml
 
 namespace: multi-platform-controller
+
+
+patchesStrategicMerge:
+  - replicas_patch.yaml
diff --git a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
new file mode 100644
index 00000000..658f80c7
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
@@ -0,0 +1,21 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  replicas: 3
+  template:
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - multi-platform-controller
+                topologyKey: kubernetes.io/hostname 
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
<h3>3: Production changes from 7c9ce286 to 16ee972d on Thu Oct 17 13:10:05 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/insights-secret-store.yaml b/components/cluster-secret-store-rh/base/insights-secret-store.yaml
similarity index 100%
rename from components/cluster-secret-store/base/insights-secret-store.yaml
rename to components/cluster-secret-store-rh/base/insights-secret-store.yaml
diff --git a/components/cluster-secret-store-rh/base/kustomization.yaml b/components/cluster-secret-store-rh/base/kustomization.yaml
index 3f102092..54526e1d 100644
--- a/components/cluster-secret-store-rh/base/kustomization.yaml
+++ b/components/cluster-secret-store-rh/base/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - appsre-stonesoup-vault-rh-secret-store.yaml
+  - insights-secret-store.yaml
   - rh-artifacts-bucket-writer-secret-store.yml
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store-rh/production/insights-approle-id-patch.yaml
similarity index 100%
rename from components/cluster-secret-store/production/insights-approle-id-patch.yaml
rename to components/cluster-secret-store-rh/production/insights-approle-id-patch.yaml
diff --git a/components/cluster-secret-store-rh/production/kustomization.yaml b/components/cluster-secret-store-rh/production/kustomization.yaml
index abd71381..ae2ed270 100644
--- a/components/cluster-secret-store-rh/production/kustomization.yaml
+++ b/components/cluster-secret-store-rh/production/kustomization.yaml
@@ -8,3 +8,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/cluster-secret-store/base/kustomization.yaml b/components/cluster-secret-store/base/kustomization.yaml
index cf4b10d4..e00e631b 100644
--- a/components/cluster-secret-store/base/kustomization.yaml
+++ b/components/cluster-secret-store/base/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
   - appsre-stonesoup-vault-secret-store.yaml
   - appsre-vault-secret-store.yml
-  - insights-secret-store.yaml
diff --git a/components/cluster-secret-store/production/kustomization.yaml b/components/cluster-secret-store/production/kustomization.yaml
index aeeca68a..b5337323 100644
--- a/components/cluster-secret-store/production/kustomization.yaml
+++ b/components/cluster-secret-store/production/kustomization.yaml
@@ -15,9 +15,3 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
-  - path: insights-approle-id-patch.yaml
-    target:
-      name: insights-appsre-vault
-      kind: ClusterSecretStore
-      group: external-secrets.io
-      version: v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (52 lines)</summary>  

``` 
./commit-7c9ce286/production/components/cluster-secret-store/production/kustomize.out.yaml
82a83,106
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ClusterSecretStore
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: insights-appsre-vault
> spec:
>   conditions:
>   - namespaces:
>     - insights-management-tenant
>   provider:
>     vault:
>       auth:
>         appRole:
>           path: approle
>           roleId: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
>           secretRef:
>             key: secret-id
>             name: insights-appsre-vault
>             namespace: appsre-vault
>       path: insights
>       server: https://vault.ci.ext.devshift.net
>       version: v2
./commit-7c9ce286/production/components/cluster-secret-store-rh/production/kustomize.out.yaml
27,50d26
<   name: insights-appsre-vault
< spec:
<   conditions:
<   - namespaces:
<     - insights-management-tenant
<   provider:
<     vault:
<       auth:
<         appRole:
<           path: approle
<           roleId: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
<           secretRef:
<             key: secret-id
<             name: insights-appsre-vault
<             namespace: appsre-vault
<       path: insights
<       server: https://vault.ci.ext.devshift.net
<       version: v2
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ClusterSecretStore
< metadata:
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 7c9ce286 to 16ee972d on Thu Oct 17 13:10:05 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/insights-secret-store.yaml b/components/cluster-secret-store-rh/base/insights-secret-store.yaml
similarity index 100%
rename from components/cluster-secret-store/base/insights-secret-store.yaml
rename to components/cluster-secret-store-rh/base/insights-secret-store.yaml
diff --git a/components/cluster-secret-store-rh/base/kustomization.yaml b/components/cluster-secret-store-rh/base/kustomization.yaml
index 3f102092..54526e1d 100644
--- a/components/cluster-secret-store-rh/base/kustomization.yaml
+++ b/components/cluster-secret-store-rh/base/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - appsre-stonesoup-vault-rh-secret-store.yaml
+  - insights-secret-store.yaml
   - rh-artifacts-bucket-writer-secret-store.yml
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store-rh/production/insights-approle-id-patch.yaml
similarity index 100%
rename from components/cluster-secret-store/production/insights-approle-id-patch.yaml
rename to components/cluster-secret-store-rh/production/insights-approle-id-patch.yaml
diff --git a/components/cluster-secret-store-rh/production/kustomization.yaml b/components/cluster-secret-store-rh/production/kustomization.yaml
index abd71381..ae2ed270 100644
--- a/components/cluster-secret-store-rh/production/kustomization.yaml
+++ b/components/cluster-secret-store-rh/production/kustomization.yaml
@@ -8,3 +8,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/cluster-secret-store/base/kustomization.yaml b/components/cluster-secret-store/base/kustomization.yaml
index cf4b10d4..e00e631b 100644
--- a/components/cluster-secret-store/base/kustomization.yaml
+++ b/components/cluster-secret-store/base/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
   - appsre-stonesoup-vault-secret-store.yaml
   - appsre-vault-secret-store.yml
-  - insights-secret-store.yaml
diff --git a/components/cluster-secret-store/production/kustomization.yaml b/components/cluster-secret-store/production/kustomization.yaml
index aeeca68a..b5337323 100644
--- a/components/cluster-secret-store/production/kustomization.yaml
+++ b/components/cluster-secret-store/production/kustomization.yaml
@@ -15,9 +15,3 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
-  - path: insights-approle-id-patch.yaml
-    target:
-      name: insights-appsre-vault
-      kind: ClusterSecretStore
-      group: external-secrets.io
-      version: v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-7c9ce286/staging/components/cluster-secret-store/staging/kustomize.out.yaml
83a84,107
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ClusterSecretStore
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: insights-appsre-vault
> spec:
>   conditions:
>   - namespaces:
>     - insights-management-tenant
>   provider:
>     vault:
>       auth:
>         appRole:
>           path: approle
>           roleId: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
>           secretRef:
>             key: secret-id
>             name: insights-appsre-vault
>             namespace: appsre-vault
>       path: insights
>       server: https://vault.ci.ext.devshift.net
>       version: v2 
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
<h3>3: Development changes from 7c9ce286 to 16ee972d on Thu Oct 17 13:10:05 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/insights-secret-store.yaml b/components/cluster-secret-store-rh/base/insights-secret-store.yaml
similarity index 100%
rename from components/cluster-secret-store/base/insights-secret-store.yaml
rename to components/cluster-secret-store-rh/base/insights-secret-store.yaml
diff --git a/components/cluster-secret-store-rh/base/kustomization.yaml b/components/cluster-secret-store-rh/base/kustomization.yaml
index 3f102092..54526e1d 100644
--- a/components/cluster-secret-store-rh/base/kustomization.yaml
+++ b/components/cluster-secret-store-rh/base/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - appsre-stonesoup-vault-rh-secret-store.yaml
+  - insights-secret-store.yaml
   - rh-artifacts-bucket-writer-secret-store.yml
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store-rh/production/insights-approle-id-patch.yaml
similarity index 100%
rename from components/cluster-secret-store/production/insights-approle-id-patch.yaml
rename to components/cluster-secret-store-rh/production/insights-approle-id-patch.yaml
diff --git a/components/cluster-secret-store-rh/production/kustomization.yaml b/components/cluster-secret-store-rh/production/kustomization.yaml
index abd71381..ae2ed270 100644
--- a/components/cluster-secret-store-rh/production/kustomization.yaml
+++ b/components/cluster-secret-store-rh/production/kustomization.yaml
@@ -8,3 +8,9 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
+  - path: insights-approle-id-patch.yaml
+    target:
+      name: insights-appsre-vault
+      kind: ClusterSecretStore
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/cluster-secret-store/base/kustomization.yaml b/components/cluster-secret-store/base/kustomization.yaml
index cf4b10d4..e00e631b 100644
--- a/components/cluster-secret-store/base/kustomization.yaml
+++ b/components/cluster-secret-store/base/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
   - appsre-stonesoup-vault-secret-store.yaml
   - appsre-vault-secret-store.yml
-  - insights-secret-store.yaml
diff --git a/components/cluster-secret-store/production/kustomization.yaml b/components/cluster-secret-store/production/kustomization.yaml
index aeeca68a..b5337323 100644
--- a/components/cluster-secret-store/production/kustomization.yaml
+++ b/components/cluster-secret-store/production/kustomization.yaml
@@ -15,9 +15,3 @@ patches:
       kind: ClusterSecretStore
       group: external-secrets.io
       version: v1beta1
-  - path: insights-approle-id-patch.yaml
-    target:
-      name: insights-appsre-vault
-      kind: ClusterSecretStore
-      group: external-secrets.io
-      version: v1beta1 
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
<h3>4: Production changes from 4a820753 to 7c9ce286 on Thu Oct 17 11:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index fa4f99a4..517cf89e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-4a820753/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
./commit-4a820753/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c 
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
<h3>4: Staging changes from 4a820753 to 7c9ce286 on Thu Oct 17 11:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index fa4f99a4..517cf89e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-4a820753/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c 
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
<h3>4: Development changes from 4a820753 to 7c9ce286 on Thu Oct 17 11:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index fa4f99a4..517cf89e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-4a820753/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c 
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
