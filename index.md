# kustomize changes tracked by commits 
### This file generated at Fri Oct 18 12:05:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4cd68b9a to bb4d7db2 on Fri Oct 18 08:21:51 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index c0dfe850..3b83af02 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,13 +36,19 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller
+  name: multi-platform-controller-metrics-monitor
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: http-metrics
-    scheme: http
+    port: https
+    scheme: https
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+    tlsConfig:
+      insecureSkipVerify: true
   selector:
     matchLabels:
-      app: multi-platform-controller
+      control-plane: controller-manager
+
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a86eadd9..7a130952 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d0bc95cfb95f117609d27a8a9747c6ff55b10698
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d0bc95cfb95f117609d27a8a9747c6ff55b10698
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
+  newTag: d0bc95cfb95f117609d27a8a9747c6ff55b10698
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
+  newTag: d0bc95cfb95f117609d27a8a9747c6ff55b10698 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-4cd68b9a/production/components/multi-platform-controller/production/kustomize.out.yaml
940c940
<   name: multi-platform-controller-metrics-monitor
---
>   name: multi-platform-controller
944,947c944
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
---
>   - interval: 15s
949,952c946,947
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
---
>     port: http-metrics
>     scheme: http
955c950
<       control-plane: controller-manager
---
>       app: multi-platform-controller
./commit-4cd68b9a/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
940c940
<   name: multi-platform-controller-metrics-monitor
---
>   name: multi-platform-controller
944,947c944
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
---
>   - interval: 15s
949,952c946,947
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
---
>     port: http-metrics
>     scheme: http
955c950
<       control-plane: controller-manager
---
>       app: multi-platform-controller 
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
<h3>1: Staging changes from 4cd68b9a to bb4d7db2 on Fri Oct 18 08:21:51 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index c0dfe850..3b83af02 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,13 +36,19 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller
+  name: multi-platform-controller-metrics-monitor
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: http-metrics
-    scheme: http
+    port: https
+    scheme: https
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+    tlsConfig:
+      insecureSkipVerify: true
   selector:
     matchLabels:
-      app: multi-platform-controller
+      control-plane: controller-manager
+
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a86eadd9..7a130952 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d0bc95cfb95f117609d27a8a9747c6ff55b10698
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d0bc95cfb95f117609d27a8a9747c6ff55b10698
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
+  newTag: d0bc95cfb95f117609d27a8a9747c6ff55b10698
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
+  newTag: d0bc95cfb95f117609d27a8a9747c6ff55b10698 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (176 lines)</summary>  

``` 
./commit-4cd68b9a/staging/components/multi-platform-controller/staging/kustomize.out.yaml
19c19
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
45c45,46
<   name: multi-platform-controller-manager-role
---
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
129,148d129
< kind: ClusterRole
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
182,197c163
<   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-manager-role
< subjects:
< - kind: ServiceAccount
<   name: multi-platform-controller-controller-manager
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-rolebinding
---
>   name: multi-platform-controller
201c167
<   name: multi-platform-controller-proxy-role
---
>   name: multi-platform-controller
204c170
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
568,584d533
<     control-plane: controller-manager
<   name: multi-platform-controller-controller-manager-metrics-service
<   namespace: multi-platform-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     app: multi-platform-controller
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: multi-platform-controller
592a542,545
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
641,667c594,596
<         - --http2-disable
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
---
>         - --v=4
>         - --zap-log-level=4
>         - --zap-devel=true
673c602
<         image: quay.io/konflux-ci/multi-platform-controller:d0bc95cfb95f117609d27a8a9747c6ff55b10698
---
>         image: quay.io/konflux-ci/multi-platform-controller:5b1616c8b4c49c8d80605cedfbfd80f980145af3
675,681c604
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
---
>         name: multi-platform-controller
683,691c606,607
<         - containerPort: 8081
<           name: probes
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
---
>         - containerPort: 8080
>           name: http-metrics
700,703d615
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
707c619
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: multi-platform-controller
732c644
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d0bc95cfb95f117609d27a8a9747c6ff55b10698
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:5b1616c8b4c49c8d80605cedfbfd80f980145af3
875c787
<   name: multi-platform-controller-metrics-monitor
---
>   name: multi-platform-controller
879,882c791
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
---
>   - interval: 15s
884,887c793,794
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
---
>     port: http-metrics
>     scheme: http
890c797
<       control-plane: controller-manager
---
>       app: multi-platform-controller 
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
<h3>1: Development changes from 4cd68b9a to bb4d7db2 on Fri Oct 18 08:21:51 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index c0dfe850..3b83af02 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,13 +36,19 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller
+  name: multi-platform-controller-metrics-monitor
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: http-metrics
-    scheme: http
+    port: https
+    scheme: https
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+    tlsConfig:
+      insecureSkipVerify: true
   selector:
     matchLabels:
-      app: multi-platform-controller
+      control-plane: controller-manager
+
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a86eadd9..7a130952 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d0bc95cfb95f117609d27a8a9747c6ff55b10698
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d0bc95cfb95f117609d27a8a9747c6ff55b10698
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
+  newTag: d0bc95cfb95f117609d27a8a9747c6ff55b10698
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
+  newTag: d0bc95cfb95f117609d27a8a9747c6ff55b10698 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (177 lines)</summary>  

``` 
./commit-4cd68b9a/development/components/multi-platform-controller/development/kustomize.out.yaml
19c19
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
45c45,46
<   name: multi-platform-controller-manager-role
---
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
129,148d129
< kind: ClusterRole
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
182,197c163
<   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-manager-role
< subjects:
< - kind: ServiceAccount
<   name: multi-platform-controller-controller-manager
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-rolebinding
---
>   name: multi-platform-controller
201c167
<   name: multi-platform-controller-proxy-role
---
>   name: multi-platform-controller
204c170
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
234,250d199
<     control-plane: controller-manager
<   name: multi-platform-controller-controller-manager-metrics-service
<   namespace: multi-platform-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     app: multi-platform-controller
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: multi-platform-controller
258a208,211
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
307,311c260,262
<         - --http2-disable
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
---
>         - --v=4
>         - --zap-log-level=4
>         - --zap-devel=true
313,334d263
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
340c269
<         image: quay.io/konflux-ci/multi-platform-controller:d0bc95cfb95f117609d27a8a9747c6ff55b10698
---
>         image: quay.io/konflux-ci/multi-platform-controller:5b1616c8b4c49c8d80605cedfbfd80f980145af3
342,348c271
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
---
>         name: multi-platform-controller
350,358c273,274
<         - containerPort: 8081
<           name: probes
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
---
>         - containerPort: 8080
>           name: http-metrics
367,370d282
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
374c286
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: multi-platform-controller
399c311
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d0bc95cfb95f117609d27a8a9747c6ff55b10698
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:5b1616c8b4c49c8d80605cedfbfd80f980145af3
427c339
<   name: multi-platform-controller-metrics-monitor
---
>   name: multi-platform-controller
431,434c343
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
---
>   - interval: 15s
436,439c345,346
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
---
>     port: http-metrics
>     scheme: http
442c349
<       control-plane: controller-manager
---
>       app: multi-platform-controller 
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
<h3>2: Production changes from 80e69f91 to 4cd68b9a on Thu Oct 17 15:44:05 2024 </h3>  
 
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
<h3>2: Staging changes from 80e69f91 to 4cd68b9a on Thu Oct 17 15:44:05 2024 </h3>  
 
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
<h3>2: Development changes from 80e69f91 to 4cd68b9a on Thu Oct 17 15:44:05 2024 </h3>  
 
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
<h3>3: Production changes from 16ee972d to 80e69f91 on Thu Oct 17 14:02:21 2024 </h3>  
 
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
<h3>3: Staging changes from 16ee972d to 80e69f91 on Thu Oct 17 14:02:21 2024 </h3>  
 
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
<h3>3: Development changes from 16ee972d to 80e69f91 on Thu Oct 17 14:02:21 2024 </h3>  
 
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
<h3>4: Production changes from 7c9ce286 to 16ee972d on Thu Oct 17 13:10:05 2024 </h3>  
 
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
<h3>4: Staging changes from 7c9ce286 to 16ee972d on Thu Oct 17 13:10:05 2024 </h3>  
 
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
<h3>4: Development changes from 7c9ce286 to 16ee972d on Thu Oct 17 13:10:05 2024 </h3>  
 
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
