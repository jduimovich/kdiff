# kustomize changes tracked by commits 
### This file generated at Wed Oct 23 16:05:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cac6945d to c2a3f868 on Wed Oct 23 13:48:15 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 9a87dd83..43034497 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 34622a4c..e2ae9fdd 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 31eab4f7..a4580512 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (306 lines)</summary>  

``` 
./commit-cac6945d/production/components/multi-platform-controller/production/kustomize.out.yaml
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
<   name: multi-platform-controller-manager-rolebinding
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
698,714d663
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
722a672,675
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
771,797c724,726
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
803c732
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:09ca43a7a0415feb6ff29fa2278f2d2f34374bac
805,811c734
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
---
>         name: multi-platform-controller
813,821c736,737
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
830,833d745
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
837c749
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: multi-platform-controller
862c774
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:09ca43a7a0415feb6ff29fa2278f2d2f34374bac
./commit-cac6945d/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
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
<   name: multi-platform-controller-manager-rolebinding
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
698,714d663
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
722a672,675
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
771,797c724,726
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
803c732
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:09ca43a7a0415feb6ff29fa2278f2d2f34374bac
805,811c734
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
---
>         name: multi-platform-controller
813,821c736,737
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
830,833d745
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
837c749
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: multi-platform-controller
862c774
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:09ca43a7a0415feb6ff29fa2278f2d2f34374bac 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from cac6945d to c2a3f868 on Wed Oct 23 13:48:15 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 9a87dd83..43034497 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 34622a4c..e2ae9fdd 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 31eab4f7..a4580512 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
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
<h3>1: Development changes from cac6945d to c2a3f868 on Wed Oct 23 13:48:15 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 9a87dd83..43034497 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 34622a4c..e2ae9fdd 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 31eab4f7..a4580512 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
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
<h3>2: Production changes from 9d8ae45c to cac6945d on Wed Oct 23 09:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index f7743e19..e992e806 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9d8ae45c to cac6945d on Wed Oct 23 09:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index f7743e19..e992e806 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9d8ae45c/staging/components/multi-platform-controller/staging/kustomize.out.yaml
673c673
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574 
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
<h3>2: Development changes from 9d8ae45c to cac6945d on Wed Oct 23 09:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index f7743e19..e992e806 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9d8ae45c/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574 
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
<h3>3: Production changes from 3de751f9 to 9d8ae45c on Wed Oct 23 08:37:34 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index ace354f1..9a87dd83 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -10,9 +10,6 @@ resources:
 - host-config.yaml
 - external-secrets.yaml
 
-patchesStrategicMerge:
-  - replicas_patch.yaml
-
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/replicas_patch.yaml b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
deleted file mode 100644
index b4928d6b..00000000
--- a/components/multi-platform-controller/production-downstream/replicas_patch.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: multi-platform-controller
-  namespace: multi-platform-controller
-spec:
-  replicas: 1
-  template:
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-            - weight: 100
-              podAffinityTerm:
-                labelSelector:
-                  matchExpressions:
-                    - key: app
-                      operator: In
-                      values:
-                        - multi-platform-controller
-                topologyKey: kubernetes.io/hostname
\ No newline at end of file
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
index 392c106f..edfa9ff5 100644
--- a/components/multi-platform-controller/staging-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -6,7 +6,3 @@ resources:
 - external-secrets.yaml
 
 namespace: multi-platform-controller
-
-
-patchesStrategicMerge:
-  - replicas_patch.yaml
diff --git a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
deleted file mode 100644
index 658f80c7..00000000
--- a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: multi-platform-controller
-  namespace: multi-platform-controller
-spec:
-  replicas: 3
-  template:
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-            - weight: 100
-              podAffinityTerm:
-                labelSelector:
-                  matchExpressions:
-                    - key: app
-                      operator: In
-                      values:
-                        - multi-platform-controller
-                topologyKey: kubernetes.io/hostname 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 3de751f9 to 9d8ae45c on Wed Oct 23 08:37:34 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index ace354f1..9a87dd83 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -10,9 +10,6 @@ resources:
 - host-config.yaml
 - external-secrets.yaml
 
-patchesStrategicMerge:
-  - replicas_patch.yaml
-
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/replicas_patch.yaml b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
deleted file mode 100644
index b4928d6b..00000000
--- a/components/multi-platform-controller/production-downstream/replicas_patch.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: multi-platform-controller
-  namespace: multi-platform-controller
-spec:
-  replicas: 1
-  template:
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-            - weight: 100
-              podAffinityTerm:
-                labelSelector:
-                  matchExpressions:
-                    - key: app
-                      operator: In
-                      values:
-                        - multi-platform-controller
-                topologyKey: kubernetes.io/hostname
\ No newline at end of file
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
index 392c106f..edfa9ff5 100644
--- a/components/multi-platform-controller/staging-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -6,7 +6,3 @@ resources:
 - external-secrets.yaml
 
 namespace: multi-platform-controller
-
-
-patchesStrategicMerge:
-  - replicas_patch.yaml
diff --git a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
deleted file mode 100644
index 658f80c7..00000000
--- a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: multi-platform-controller
-  namespace: multi-platform-controller
-spec:
-  replicas: 3
-  template:
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-            - weight: 100
-              podAffinityTerm:
-                labelSelector:
-                  matchExpressions:
-                    - key: app
-                      operator: In
-                      values:
-                        - multi-platform-controller
-                topologyKey: kubernetes.io/hostname 
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
<h3>3: Development changes from 3de751f9 to 9d8ae45c on Wed Oct 23 08:37:34 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index ace354f1..9a87dd83 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -10,9 +10,6 @@ resources:
 - host-config.yaml
 - external-secrets.yaml
 
-patchesStrategicMerge:
-  - replicas_patch.yaml
-
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/replicas_patch.yaml b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
deleted file mode 100644
index b4928d6b..00000000
--- a/components/multi-platform-controller/production-downstream/replicas_patch.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: multi-platform-controller
-  namespace: multi-platform-controller
-spec:
-  replicas: 1
-  template:
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-            - weight: 100
-              podAffinityTerm:
-                labelSelector:
-                  matchExpressions:
-                    - key: app
-                      operator: In
-                      values:
-                        - multi-platform-controller
-                topologyKey: kubernetes.io/hostname
\ No newline at end of file
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
index 392c106f..edfa9ff5 100644
--- a/components/multi-platform-controller/staging-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -6,7 +6,3 @@ resources:
 - external-secrets.yaml
 
 namespace: multi-platform-controller
-
-
-patchesStrategicMerge:
-  - replicas_patch.yaml
diff --git a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml b/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
deleted file mode 100644
index 658f80c7..00000000
--- a/components/multi-platform-controller/staging-downstream/replicas_patch.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: multi-platform-controller
-  namespace: multi-platform-controller
-spec:
-  replicas: 3
-  template:
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-            - weight: 100
-              podAffinityTerm:
-                labelSelector:
-                  matchExpressions:
-                    - key: app
-                      operator: In
-                      values:
-                        - multi-platform-controller
-                topologyKey: kubernetes.io/hostname 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (664 lines)</summary>  

``` 
./commit-3de751f9/development/components/multi-platform-controller/development/kustomize.out.yaml
1,662d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-controller-manager
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: pipeline-anyuid-role
<   namespace: multi-platform-controller
< rules:
< - apiGroups:
<   - security.openshift.io
<   resourceNames:
<   - anyuid
<   resources:
<   - securitycontextconstraints
<   verbs:
<   - use
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   creationTimestamp: null
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-manager-role
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - apiextensions.k8s.io
<   resources:
<   - customresourcedefinitions
<   verbs:
<   - get
< - apiGroups:
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - tekton.dev
<   resources:
<   - taskruns/status
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: multi-platform-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
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
< kind: RoleBinding
< metadata:
<   name: grant-argocd
<   namespace: multi-platform-controller
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
< subjects:
< - kind: ServiceAccount
<   name: openshift-gitops-argocd-application-controller
<   namespace: openshift-gitops
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: pipeline-anyuid-rolebinding
<   namespace: multi-platform-controller
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: pipeline-anyuid-role
< subjects:
< - kind: ServiceAccount
<   name: pipeline
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-manager-rolebinding
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
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: multi-platform-controller-controller-manager
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-multi-platform-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: multi-platform-controller
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: multi-platform-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: multi-platform-controller
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
<   name: multi-platform-controller-monitor
<   namespace: multi-platform-controller
< spec:
<   internalTrafficPolicy: Cluster
<   ipFamilies:
<   - IPv4
<   ipFamilyPolicy: SingleStack
<   ports:
<   - name: probes
<     port: 8081
<     protocol: TCP
<     targetPort: 8081
<   selector:
<     app: multi-platform-controller
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     service.beta.openshift.io/serving-cert-secret-name: otp-tls-secrets
<   labels:
<     app: multi-platform-otp-server
<   name: multi-platform-otp-server
<   namespace: multi-platform-controller
< spec:
<   ports:
<   - name: https
<     port: 443
<     protocol: TCP
<     targetPort: 8443
<   selector:
<     app: multi-platform-otp-server
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller
<   namespace: multi-platform-controller
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: multi-platform-controller
<   template:
<     metadata:
<       labels:
<         app: multi-platform-controller
<     spec:
<       containers:
<       - args:
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
<         - --zap-encoder=console
<         env:
<         - name: POD_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
<         imagePullPolicy: Always
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8081
<           name: probes
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 4Gi
<           requests:
<             cpu: 100m
<             memory: 512Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: multi-platform-controller-controller-manager
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: multi-platform-otp-server
<   name: multi-platform-otp-server
<   namespace: multi-platform-controller
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: multi-platform-otp-server
<   template:
<     metadata:
<       labels:
<         app: multi-platform-otp-server
<     spec:
<       containers:
<       - env:
<         - name: POD_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574
<         imagePullPolicy: Always
<         name: multi-platform-otp-server
<         ports:
<         - containerPort: 8080
<           name: server
<         resources:
<           limits:
<             cpu: 100m
<             memory: 128Mi
<           requests:
<             cpu: 100m
<             memory: 128Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /tls
<           name: tls
<       securityContext:
<         runAsNonRoot: true
<       volumes:
<       - name: tls
<         secret:
<           secretName: otp-tls-secrets
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: multi-platform-controller-metrics-monitor
<   namespace: multi-platform-controller
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: clean-shared-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will clean up after a build
<   params:
<   - name: SECRET_NAME
<     type: string
<   - name: TASKRUN_NAME
<     type: string
<   - name: NAMESPACE
<     type: string
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
< 
<       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo userdel -f -r -Z $USERNAME
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: provision-shared-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: SECRET_NAME
<     type: string
<   - name: TASKRUN_NAME
<     type: string
<   - name: NAMESPACE
<     type: string
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   - name: SUDO_COMMANDS
<     type: string
<   stepTemplate:
<     env:
<     - name: SECRET_NAME
<       value: $(params.SECRET_NAME)
<     - name: TASKRUN_NAME
<       value: $(params.TASKRUN_NAME)
<     - name: NAMESPACE
<       value: $(params.NAMESPACE)
<     - name: HOST
<       value: $(params.HOST)
<     - name: USER
<       value: $(params.USER)
<     - name: SUDO_COMMANDS
<       value: $(params.SUDO_COMMANDS)
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: provision
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       set -eu
<       set -o pipefail
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST="$USER@$HOST"
< 
<       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
< 
<       cat >script.sh <<EOF
<       sudo dnf install podman -y
<       rm -f $USERNAME $USERNAME.pub
<       # sometimes it hits  "useradd: cannot lock /etc/passwd; try again later" error, so need to repeat
<       for i in {10..1}; do
<         sudo useradd -m $USERNAME -p $(openssl rand -base64 12) && break
<         sleep 1
<       done
<       ssh-keygen -N '' -f $USERNAME
<       sudo su $USERNAME -c 'mkdir /home/$USERNAME/.ssh'
<       sudo su $USERNAME -c 'mkdir /home/$USERNAME/build'
<       sudo mv $USERNAME.pub /home/$USERNAME/.ssh/authorized_keys
<       sudo chown $USERNAME /home/$USERNAME/.ssh/authorized_keys
<       sudo restorecon -FRvv /home/$USERNAME/.ssh
<       EOF
< 
<       if [ ! -z "$SUDO_COMMANDS" ]; then
<       #if we need sudo access add it to the script
<       cat >>script.sh <<EOF
<       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
<       EOF
<       fi
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST cat $USERNAME  >id_rsa
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST rm $USERNAME
<       chmod 0400 id_rsa
<       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
<       DIR=$(echo /home/$USERNAME | base64 -w 0)
< 
<       if [ -e "/tls/tls.crt" ]; then
<         KEY=$(cat id_rsa)
<         OTP=$(curl --cacert /tls/tls.crt -XPOST -d "$KEY" https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/store-key | base64 -w 0)
<         OTP_SERVER="$(echo https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/otp | base64 -w 0)"
<         echo $OTP | base64 -d
<         cat >secret.yaml <<EOF
<         apiVersion: v1
<         data:
<           otp-ca: "$(cat /tls/tls.crt | base64 -w 0)"
<           otp: "$OTP"
<           otp-server: "$OTP_SERVER"
<           host: "$HOST"
<           user-dir: "$DIR"
<         kind: Secret
<         metadata:
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
<           labels:
<             build.appstudio.redhat.com/multi-platform-secret: "true"
<         type: Opaque
<       EOF
<       else
<         KEY=$(cat id_rsa | base64 -w 0)
<         cat >secret.yaml <<EOF
<         apiVersion: v1
<         data:
<           id_rsa: "$KEY"
<           host: "$HOST"
<           user-dir: "$DIR"
<         kind: Secret
<         metadata:
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
<           labels:
<             build.appstudio.redhat.com/multi-platform-secret: "true"
<         type: Opaque
<       EOF
<       fi
< 
<       kubectl create -f secret.yaml
<     volumeMounts:
<     - mountPath: /tls
<       name: tls
<   volumes:
<   - name: tls
<     secret:
<       optional: true
<       secretName: otp-tls-secrets
<   workspaces:
<   - name: ssh
< ---
< apiVersion: tekton.dev/v1beta1
< kind: Task
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: update-host
<   namespace: multi-platform-controller
< spec:
<   description: This task will create a new user on a host, setup ssh keys, and then
<     create the relevant secret.
<   params:
<   - name: HOST
<     type: string
<   - name: USER
<     type: string
<   steps:
<   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
<     imagePullPolicy: IfNotPresent
<     name: update
<     script: |
<       #!/bin/bash
<       cd /tmp
<       set -o verbose
<       mkdir -p /root/.ssh
<       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
<       chmod 0400 /tmp/master_key
<       export SSH_HOST=$(params.USER)@$(params.HOST)
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y"
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in u-*; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
<   workspaces:
<   - name: ssh 
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
<h3>4: Production changes from e8e07b35 to 3de751f9 on Tue Oct 22 15:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (138 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index e576fd96..7894dc06 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,3 +25,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 28ee7162..88ca15d7 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 2dff07c8..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-e8e07b35/production/components: workspaces 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from e8e07b35 to 3de751f9 on Tue Oct 22 15:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (138 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index e576fd96..7894dc06 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,3 +25,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 28ee7162..88ca15d7 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 2dff07c8..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
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
<h3>4: Development changes from e8e07b35 to 3de751f9 on Tue Oct 22 15:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (138 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index 6325686a..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -19,12 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-                - nameNormalized: stone-prd-host1
-                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: workspaces-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index e576fd96..7894dc06 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -25,3 +25,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 28ee7162..88ca15d7 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -43,3 +43,10 @@ kind: ApplicationSet
 metadata:
   name: workspaces-member
 $patch: delete
+---
+# Workspaces is deprecated from production use cases
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: workspaces
+$patch: delete
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
deleted file mode 100644
index 2dff07c8..00000000
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- route.yaml
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prd-host1/route.yaml b/components/workspaces/production/stone-prd-host1/route.yaml
deleted file mode 100644
index 20ff6fe2..00000000
--- a/components/workspaces/production/stone-prd-host1/route.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    provider: workspaces
-    app: rest-api-server
-  name: workspaces-rest-api-server
-  namespace: workspaces-system
-spec:
-  port:
-    targetPort: 8000
-  tls:
-    termination: edge
-  to:
-    kind: Service
-    name: workspaces-rest-api-server
-    weight: 100
-  wildcardPolicy: None
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 5a9dc23f..00000000
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../../base/
-- ../../team
-images:
-- name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha7
-- name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha7
-
-configMapGenerator:
-- behavior: merge
-  literals:
-  - log.level=0
-  name: rest-api-server-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (664 lines)</summary>  

``` 
./commit-e8e07b35/development/components/multi-platform-controller/development/kustomize.out.yaml
0a1,662
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   name: metrics-reader
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: pipeline-anyuid-role
>   namespace: multi-platform-controller
> rules:
> - apiGroups:
>   - security.openshift.io
>   resourceNames:
>   - anyuid
>   resources:
>   - securitycontextconstraints
>   verbs:
>   - use
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   creationTimestamp: null
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-manager-role
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> - apiGroups:
>   - ""
>   resources:
>   - pods
>   verbs:
>   - create
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - apiextensions.k8s.io
>   resources:
>   - customresourcedefinitions
>   verbs:
>   - get
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - tekton.dev
>   resources:
>   - taskruns/status
>   verbs:
>   - create
>   - delete
>   - deletecollection
>   - get
>   - list
>   - patch
>   - update
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: multi-platform-controller-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
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
> kind: RoleBinding
> metadata:
>   name: grant-argocd
>   namespace: multi-platform-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: pipeline-anyuid-rolebinding
>   namespace: multi-platform-controller
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: pipeline-anyuid-role
> subjects:
> - kind: ServiceAccount
>   name: pipeline
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-manager-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-manager-role
> subjects:
> - kind: ServiceAccount
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
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: prometheus-multi-platform-controller-metrics-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-metrics-reader
> subjects:
> - kind: ServiceAccount
>   name: metrics-reader
>   namespace: multi-platform-controller
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: metrics-reader
>   name: metrics-reader
>   namespace: multi-platform-controller
> type: kubernetes.io/service-account-token
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
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
>   name: multi-platform-controller-monitor
>   namespace: multi-platform-controller
> spec:
>   internalTrafficPolicy: Cluster
>   ipFamilies:
>   - IPv4
>   ipFamilyPolicy: SingleStack
>   ports:
>   - name: probes
>     port: 8081
>     protocol: TCP
>     targetPort: 8081
>   selector:
>     app: multi-platform-controller
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: otp-tls-secrets
>   labels:
>     app: multi-platform-otp-server
>   name: multi-platform-otp-server
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 443
>     protocol: TCP
>     targetPort: 8443
>   selector:
>     app: multi-platform-otp-server
>   sessionAffinity: None
>   type: ClusterIP
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller
>   namespace: multi-platform-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: multi-platform-controller
>   template:
>     metadata:
>       labels:
>         app: multi-platform-controller
>     spec:
>       containers:
>       - args:
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
>         - --zap-encoder=console
>         env:
>         - name: POD_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
>         imagePullPolicy: Always
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 4Gi
>           requests:
>             cpu: 100m
>             memory: 512Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: multi-platform-controller-controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app: multi-platform-otp-server
>   name: multi-platform-otp-server
>   namespace: multi-platform-controller
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app: multi-platform-otp-server
>   template:
>     metadata:
>       labels:
>         app: multi-platform-otp-server
>     spec:
>       containers:
>       - env:
>         - name: POD_NAMESPACE
>           valueFrom:
>             fieldRef:
>               fieldPath: metadata.namespace
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574
>         imagePullPolicy: Always
>         name: multi-platform-otp-server
>         ports:
>         - containerPort: 8080
>           name: server
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 100m
>             memory: 128Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tls
>           name: tls
>       securityContext:
>         runAsNonRoot: true
>       volumes:
>       - name: tls
>         secret:
>           secretName: otp-tls-secrets
> ---
> apiVersion: monitoring.coreos.com/v1
> kind: ServiceMonitor
> metadata:
>   name: multi-platform-controller-metrics-monitor
>   namespace: multi-platform-controller
> spec:
>   endpoints:
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
>     path: /metrics
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
>   selector:
>     matchLabels:
>       control-plane: controller-manager
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: clean-shared-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will clean up after a build
>   params:
>   - name: SECRET_NAME
>     type: string
>   - name: TASKRUN_NAME
>     type: string
>   - name: NAMESPACE
>     type: string
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: provision
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       set -eu
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST=$(params.USER)@$(params.HOST)
> 
>       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo userdel -f -r -Z $USERNAME
>   workspaces:
>   - name: ssh
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: provision-shared-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will create a new user on a host, setup ssh keys, and then
>     create the relevant secret.
>   params:
>   - name: SECRET_NAME
>     type: string
>   - name: TASKRUN_NAME
>     type: string
>   - name: NAMESPACE
>     type: string
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   - name: SUDO_COMMANDS
>     type: string
>   stepTemplate:
>     env:
>     - name: SECRET_NAME
>       value: $(params.SECRET_NAME)
>     - name: TASKRUN_NAME
>       value: $(params.TASKRUN_NAME)
>     - name: NAMESPACE
>       value: $(params.NAMESPACE)
>     - name: HOST
>       value: $(params.HOST)
>     - name: USER
>       value: $(params.USER)
>     - name: SUDO_COMMANDS
>       value: $(params.SUDO_COMMANDS)
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: provision
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       set -eu
>       set -o pipefail
>       mkdir -p /root/.ssh
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST="$USER@$HOST"
> 
>       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
> 
>       cat >script.sh <<EOF
>       sudo dnf install podman -y
>       rm -f $USERNAME $USERNAME.pub
>       # sometimes it hits  "useradd: cannot lock /etc/passwd; try again later" error, so need to repeat
>       for i in {10..1}; do
>         sudo useradd -m $USERNAME -p $(openssl rand -base64 12) && break
>         sleep 1
>       done
>       ssh-keygen -N '' -f $USERNAME
>       sudo su $USERNAME -c 'mkdir /home/$USERNAME/.ssh'
>       sudo su $USERNAME -c 'mkdir /home/$USERNAME/build'
>       sudo mv $USERNAME.pub /home/$USERNAME/.ssh/authorized_keys
>       sudo chown $USERNAME /home/$USERNAME/.ssh/authorized_keys
>       sudo restorecon -FRvv /home/$USERNAME/.ssh
>       EOF
> 
>       if [ ! -z "$SUDO_COMMANDS" ]; then
>       #if we need sudo access add it to the script
>       cat >>script.sh <<EOF
>       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
>       EOF
>       fi
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST cat $USERNAME  >id_rsa
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST rm $USERNAME
>       chmod 0400 id_rsa
>       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
>       DIR=$(echo /home/$USERNAME | base64 -w 0)
> 
>       if [ -e "/tls/tls.crt" ]; then
>         KEY=$(cat id_rsa)
>         OTP=$(curl --cacert /tls/tls.crt -XPOST -d "$KEY" https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/store-key | base64 -w 0)
>         OTP_SERVER="$(echo https://multi-platform-otp-server.multi-platform-controller.svc.cluster.local/otp | base64 -w 0)"
>         echo $OTP | base64 -d
>         cat >secret.yaml <<EOF
>         apiVersion: v1
>         data:
>           otp-ca: "$(cat /tls/tls.crt | base64 -w 0)"
>           otp: "$OTP"
>           otp-server: "$OTP_SERVER"
>           host: "$HOST"
>           user-dir: "$DIR"
>         kind: Secret
>         metadata:
>           name: "$SECRET_NAME"
>           namespace: "$NAMESPACE"
>           labels:
>             build.appstudio.redhat.com/multi-platform-secret: "true"
>         type: Opaque
>       EOF
>       else
>         KEY=$(cat id_rsa | base64 -w 0)
>         cat >secret.yaml <<EOF
>         apiVersion: v1
>         data:
>           id_rsa: "$KEY"
>           host: "$HOST"
>           user-dir: "$DIR"
>         kind: Secret
>         metadata:
>           name: "$SECRET_NAME"
>           namespace: "$NAMESPACE"
>           labels:
>             build.appstudio.redhat.com/multi-platform-secret: "true"
>         type: Opaque
>       EOF
>       fi
> 
>       kubectl create -f secret.yaml
>     volumeMounts:
>     - mountPath: /tls
>       name: tls
>   volumes:
>   - name: tls
>     secret:
>       optional: true
>       secretName: otp-tls-secrets
>   workspaces:
>   - name: ssh
> ---
> apiVersion: tekton.dev/v1beta1
> kind: Task
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: update-host
>   namespace: multi-platform-controller
> spec:
>   description: This task will create a new user on a host, setup ssh keys, and then
>     create the relevant secret.
>   params:
>   - name: HOST
>     type: string
>   - name: USER
>     type: string
>   steps:
>   - image: quay.io/redhat-appstudio/multi-platform-runner:01c7670e81d5120347cf0ad13372742489985e5f@sha256:246adeaaba600e207131d63a7f706cffdcdc37d8f600c56187123ec62823ff44
>     imagePullPolicy: IfNotPresent
>     name: update
>     script: |
>       #!/bin/bash
>       cd /tmp
>       set -o verbose
>       mkdir -p /root/.ssh
>       cp $(workspaces.ssh.path)/id_rsa /tmp/master_key
>       chmod 0400 /tmp/master_key
>       export SSH_HOST=$(params.USER)@$(params.HOST)
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "sudo dnf update -y"
> 
>       #now clean up any dangling users, if their cleanup failed for whatever reason
> 
>       cat >script.sh <<EOF
>       threshold=$(date -d "1 day ago" +%s)
>       cd /home
>       for file in u-*; do
>         # Check if the file is a regular file and older than the threshold
>         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
>         # Delete the user
>         sudo userdel -f -r -Z $file
>         echo "Deleted: $file"
>         fi
>       done
>       EOF
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh
>   workspaces:
>   - name: ssh 
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
