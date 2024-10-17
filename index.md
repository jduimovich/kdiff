# kustomize changes tracked by commits 
### This file generated at Thu Oct 17 08:05:03 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 77923ee4 to 8c4ebb10 on Thu Oct 17 07:40:05 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index 3b83af02..c0dfe850 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,19 +36,13 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller-metrics-monitor
+  name: multi-platform-controller
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: https
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
+    port: http-metrics
+    scheme: http
   selector:
     matchLabels:
-      control-plane: controller-manager
-
+      app: multi-platform-controller
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 3741601a..a86eadd9 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: 39d8b891b81117ef30bd3463b99552b647de49ae
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-77923ee4/production/components/multi-platform-controller/production/kustomize.out.yaml
940c940
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
944c944,947
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
946,947c949,952
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
950c955
<       app: multi-platform-controller
---
>       control-plane: controller-manager
./commit-77923ee4/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
940c940
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
944c944,947
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
946,947c949,952
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
950c955
<       app: multi-platform-controller
---
>       control-plane: controller-manager 
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
<h3>1: Staging changes from 77923ee4 to 8c4ebb10 on Thu Oct 17 07:40:05 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index 3b83af02..c0dfe850 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,19 +36,13 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller-metrics-monitor
+  name: multi-platform-controller
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: https
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
+    port: http-metrics
+    scheme: http
   selector:
     matchLabels:
-      control-plane: controller-manager
-
+      app: multi-platform-controller
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 3741601a..a86eadd9 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: 39d8b891b81117ef30bd3463b99552b647de49ae
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (172 lines)</summary>  

``` 
./commit-77923ee4/staging/components/multi-platform-controller/staging/kustomize.out.yaml
19c19
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
45,46c45
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
129a129,148
> kind: ClusterRole
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
163c182
<   name: multi-platform-controller
---
>   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
167c186
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
170c189,204
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller-controller-manager
533a568,584
>     control-plane: controller-manager
>   name: multi-platform-controller-controller-manager-metrics-service
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     app: multi-platform-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
542,545d592
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
594,596c641,667
<         - --v=4
<         - --zap-log-level=4
<         - --zap-devel=true
---
>         - --http2-disable
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
602c673
<         image: quay.io/konflux-ci/multi-platform-controller:5b1616c8b4c49c8d80605cedfbfd80f980145af3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:39d8b891b81117ef30bd3463b99552b647de49ae
604c675,681
<         name: multi-platform-controller
---
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
606,607c683,691
<         - containerPort: 8080
<           name: http-metrics
---
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
615a700,703
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
619c707
<       serviceAccountName: multi-platform-controller
---
>       serviceAccountName: multi-platform-controller-controller-manager
787c875
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
791c879,882
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
793,794c884,887
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
797c890
<       app: multi-platform-controller
---
>       control-plane: controller-manager 
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
<h3>1: Development changes from 77923ee4 to 8c4ebb10 on Thu Oct 17 07:40:05 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index 3b83af02..c0dfe850 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,19 +36,13 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller-metrics-monitor
+  name: multi-platform-controller
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: https
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
+    port: http-metrics
+    scheme: http
   selector:
     matchLabels:
-      control-plane: controller-manager
-
+      app: multi-platform-controller
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 3741601a..a86eadd9 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: 39d8b891b81117ef30bd3463b99552b647de49ae
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (173 lines)</summary>  

``` 
./commit-77923ee4/development/components/multi-platform-controller/development/kustomize.out.yaml
19c19
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
45,46c45
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
129a129,148
> kind: ClusterRole
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
163c182
<   name: multi-platform-controller
---
>   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
167c186
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
170c189,204
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller-controller-manager
199a234,250
>     control-plane: controller-manager
>   name: multi-platform-controller-controller-manager-metrics-service
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     app: multi-platform-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
208,211d258
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
260,262c307,311
<         - --v=4
<         - --zap-log-level=4
<         - --zap-devel=true
---
>         - --http2-disable
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
263a313,334
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
269c340
<         image: quay.io/konflux-ci/multi-platform-controller:5b1616c8b4c49c8d80605cedfbfd80f980145af3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:39d8b891b81117ef30bd3463b99552b647de49ae
271c342,348
<         name: multi-platform-controller
---
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
273,274c350,358
<         - containerPort: 8080
<           name: http-metrics
---
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
282a367,370
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
286c374
<       serviceAccountName: multi-platform-controller
---
>       serviceAccountName: multi-platform-controller-controller-manager
339c427
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
343c431,434
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
345,346c436,439
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
349c442
<       app: multi-platform-controller
---
>       control-plane: controller-manager 
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
<h3>2: Production changes from 9ce85849 to 77923ee4 on Wed Oct 16 20:02:59 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index a138add3..3b83af02 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -28,7 +28,7 @@ metadata:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: multi-platform-controller-reader
+  name: multi-platform-controller-metrics-reader
 subjects:
 - kind: ServiceAccount
   name: metrics-reader 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-9ce85849/production/components/multi-platform-controller/production/kustomize.out.yaml
180c180
<   name: multi-platform-controller-metrics-reader
---
>   name: multi-platform-controller-reader
./commit-9ce85849/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
180c180
<   name: multi-platform-controller-metrics-reader
---
>   name: multi-platform-controller-reader 
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
<h3>2: Staging changes from 9ce85849 to 77923ee4 on Wed Oct 16 20:02:59 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index a138add3..3b83af02 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -28,7 +28,7 @@ metadata:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: multi-platform-controller-reader
+  name: multi-platform-controller-metrics-reader
 subjects:
 - kind: ServiceAccount
   name: metrics-reader 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9ce85849/staging/components/multi-platform-controller/staging/kustomize.out.yaml
214c214
<   name: multi-platform-controller-metrics-reader
---
>   name: multi-platform-controller-reader 
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
<h3>2: Development changes from 9ce85849 to 77923ee4 on Wed Oct 16 20:02:59 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index a138add3..3b83af02 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -28,7 +28,7 @@ metadata:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: multi-platform-controller-reader
+  name: multi-platform-controller-metrics-reader
 subjects:
 - kind: ServiceAccount
   name: metrics-reader 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9ce85849/development/components/multi-platform-controller/development/kustomize.out.yaml
214c214
<   name: multi-platform-controller-metrics-reader
---
>   name: multi-platform-controller-reader 
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
<h3>3: Production changes from 94385273 to 9ce85849 on Wed Oct 16 18:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index e143d8a7..52ce9731 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -10,3 +10,4 @@ approvers:
 - mftb
 - raks-tt
 - pacho-rh
+- martysp21
diff --git a/components/tracing/OWNERS b/components/tracing/OWNERS
index 12a728a1..47831f5c 100644
--- a/components/tracing/OWNERS
+++ b/components/tracing/OWNERS
@@ -5,4 +5,5 @@ approvers:
 - mftb
 - pacho-rh
 - raks-tt
+- martysp21
  
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
<h3>3: Staging changes from 94385273 to 9ce85849 on Wed Oct 16 18:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index e143d8a7..52ce9731 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -10,3 +10,4 @@ approvers:
 - mftb
 - raks-tt
 - pacho-rh
+- martysp21
diff --git a/components/tracing/OWNERS b/components/tracing/OWNERS
index 12a728a1..47831f5c 100644
--- a/components/tracing/OWNERS
+++ b/components/tracing/OWNERS
@@ -5,4 +5,5 @@ approvers:
 - mftb
 - pacho-rh
 - raks-tt
+- martysp21
  
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
<h3>3: Development changes from 94385273 to 9ce85849 on Wed Oct 16 18:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/monitoring/OWNERS b/components/monitoring/OWNERS
index e143d8a7..52ce9731 100644
--- a/components/monitoring/OWNERS
+++ b/components/monitoring/OWNERS
@@ -10,3 +10,4 @@ approvers:
 - mftb
 - raks-tt
 - pacho-rh
+- martysp21
diff --git a/components/tracing/OWNERS b/components/tracing/OWNERS
index 12a728a1..47831f5c 100644
--- a/components/tracing/OWNERS
+++ b/components/tracing/OWNERS
@@ -5,4 +5,5 @@ approvers:
 - mftb
 - pacho-rh
 - raks-tt
+- martysp21
  
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
<h3>4: Production changes from a41c6592 to 94385273 on Wed Oct 16 18:40:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d4611081..3741601a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,7 +5,7 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=3545a328c43e81bcdcd824d8093c47f8bcbc4df1
+- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
  
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
<h3>4: Staging changes from a41c6592 to 94385273 on Wed Oct 16 18:40:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d4611081..3741601a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,7 +5,7 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=3545a328c43e81bcdcd824d8093c47f8bcbc4df1
+- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (70 lines)</summary>  

``` 
./commit-a41c6592/staging/components/multi-platform-controller/staging/kustomize.out.yaml
11c11,13
<   name: metrics-reader
---
>   labels:
>     app: multi-platform-controller
>   name: controller-manager
17,19c19
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-controller-manager
---
>   name: metrics-reader
45c45,46
<   name: multi-platform-controller-manager-role
---
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
133c134
<   name: multi-platform-controller-proxy-role
---
>   name: proxy-role
182c183
<   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
---
>   name: multi-platform-controller
186c187
<   name: multi-platform-controller-manager-role
---
>   name: multi-platform-controller
189c190
<   name: multi-platform-controller-controller-manager
---
>   name: controller-manager
195,197c196
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-rolebinding
---
>   name: prometheus-multi-platform-controller-metrics-reader
201c200
<   name: multi-platform-controller-proxy-role
---
>   name: multi-platform-controller-reader
204c203
<   name: multi-platform-controller-controller-manager
---
>   name: metrics-reader
210c209,211
<   name: prometheus-multi-platform-controller-metrics-reader
---
>   labels:
>     app: multi-platform-controller
>   name: proxy-rolebinding
214c215
<   name: multi-platform-controller-reader
---
>   name: proxy-role
217c218
<   name: metrics-reader
---
>   name: controller-manager
569c570
<   name: multi-platform-controller-controller-manager-metrics-service
---
>   name: controller-manager-metrics-service
707c708
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: controller-manager 
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
<h3>4: Development changes from a41c6592 to 94385273 on Wed Oct 16 18:40:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d4611081..3741601a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,7 +5,7 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=3545a328c43e81bcdcd824d8093c47f8bcbc4df1
+- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (70 lines)</summary>  

``` 
./commit-a41c6592/development/components/multi-platform-controller/development/kustomize.out.yaml
11c11,13
<   name: metrics-reader
---
>   labels:
>     app: multi-platform-controller
>   name: controller-manager
17,19c19
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-controller-manager
---
>   name: metrics-reader
45c45,46
<   name: multi-platform-controller-manager-role
---
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
133c134
<   name: multi-platform-controller-proxy-role
---
>   name: proxy-role
182c183
<   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
---
>   name: multi-platform-controller
186c187
<   name: multi-platform-controller-manager-role
---
>   name: multi-platform-controller
189c190
<   name: multi-platform-controller-controller-manager
---
>   name: controller-manager
195,197c196
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-rolebinding
---
>   name: prometheus-multi-platform-controller-metrics-reader
201c200
<   name: multi-platform-controller-proxy-role
---
>   name: multi-platform-controller-reader
204c203
<   name: multi-platform-controller-controller-manager
---
>   name: metrics-reader
210c209,211
<   name: prometheus-multi-platform-controller-metrics-reader
---
>   labels:
>     app: multi-platform-controller
>   name: proxy-rolebinding
214c215
<   name: multi-platform-controller-reader
---
>   name: proxy-role
217c218
<   name: metrics-reader
---
>   name: controller-manager
235c236
<   name: multi-platform-controller-controller-manager-metrics-service
---
>   name: controller-manager-metrics-service
374c375
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: controller-manager 
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
