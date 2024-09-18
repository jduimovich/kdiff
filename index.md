# kustomize changes tracked by commits 
### This file generated at Wed Sep 18 20:04:28 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1257b394 to 0fe1e3e4 on Wed Sep 18 18:18:30 2024 </h3>  
 
<details> 
<summary>Git Diff (1831 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/default/kustomization.yaml b/components/workspaces/base/operator/config/default/kustomization.yaml
index 32bd602f..e55106c2 100644
--- a/components/workspaces/base/operator/config/default/kustomization.yaml
+++ b/components/workspaces/base/operator/config/default/kustomization.yaml
@@ -6,5 +6,41 @@ resources:
 - ../crd
 - ../rbac
 - ../manager
+- ../metrics
 patches:
 - path: manager_auth_proxy_patch.yaml
+replacements:
+- source:
+    fieldPath: metadata.name
+    kind: Secret
+    name: metrics-reader
+  targets:
+  - fieldPaths:
+    - spec.endpoints.*.authorization.credentials.name
+    select:
+      group: monitoring.coreos.com
+      kind: ServiceMonitor
+      name: metrics-proxy
+- source:
+    fieldPath: metadata.name
+    kind: ServiceAccount
+    name: metrics-reader
+  targets:
+  - fieldPaths:
+    - metadata.annotations.[kubernetes.io/service-account.name]
+    select:
+      kind: Secret
+      name: metrics-reader
+    options:
+      create: true
+
+# We need to make the secrets containing the service account tokens before the
+# service monitor can start checking for metrics.  To ensure this, let's make
+# the service account and its secrets before anything else.
+sortOptions:
+  order: legacy
+  legacySortOptions:
+    orderFirst:
+    - Namespace
+    - ServiceAccount
+    - Secret
diff --git a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
index bc2f7500..d61b91a2 100644
--- a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
+++ b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
@@ -23,32 +23,8 @@ spec:
                   values:
                     - linux
       containers:
-      - name: kube-rbac-proxy
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
-        args:
-        - "--secure-listen-address=0.0.0.0:8443"
-        - "--upstream=http://127.0.0.1:8080/"
-        - "--logtostderr=true"
-        - "--v=0"
-        ports:
-        - containerPort: 8443
-          protocol: TCP
-          name: https
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
       - name: manager
         args:
         - "--health-probe-bind-address=:8081"
-        - "--metrics-bind-address=127.0.0.1:8080"
+        - "--metrics-bind-address=0.0.0.0:8080"
         - "--leader-elect"
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index 7ab93730..379711c5 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/staging/base/operator/config/metrics/kustomization.yaml b/components/workspaces/base/operator/config/metrics/kustomization.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/kustomization.yaml
rename to components/workspaces/base/operator/config/metrics/kustomization.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/metrics-service.yaml b/components/workspaces/base/operator/config/metrics/metrics-service.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/metrics-service.yaml
rename to components/workspaces/base/operator/config/metrics/metrics-service.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/monitor.yaml b/components/workspaces/base/operator/config/metrics/monitor.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/monitor.yaml
rename to components/workspaces/base/operator/config/metrics/monitor.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/service-account.yaml b/components/workspaces/base/operator/config/metrics/service-account.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/service-account.yaml
rename to components/workspaces/base/operator/config/metrics/service-account.yaml
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
deleted file mode 100644
index e624d7e2..00000000
--- a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: v1
-kind: Service
-metadata:
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: service
-    app.kubernetes.io/instance: controller-manager-metrics-service
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: controller-manager-metrics-service
-  namespace: system
-spec:
-  ports:
-  - name: https
-    port: 8443
-    protocol: TCP
-    targetPort: https
-  selector:
-    control-plane: controller-manager
diff --git a/components/workspaces/base/operator/config/rbac/kustomization.yaml b/components/workspaces/base/operator/config/rbac/kustomization.yaml
index fb5a2b88..23ef9e87 100644
--- a/components/workspaces/base/operator/config/rbac/kustomization.yaml
+++ b/components/workspaces/base/operator/config/rbac/kustomization.yaml
@@ -12,7 +12,6 @@ resources:
 # Comment the following 4 lines if you want to disable
 # the auth proxy (https://github.com/brancz/kube-rbac-proxy)
 # which protects your /metrics endpoint.
-# - auth_proxy_service.yaml
-# - auth_proxy_role.yaml
-# - auth_proxy_role_binding.yaml
-# - auth_proxy_client_clusterrole.yaml
+- auth_proxy_role.yaml
+- auth_proxy_role_binding.yaml
+- auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
index a589096c..d61459b2 100644
--- a/components/workspaces/base/operator/config/rbac/role.yaml
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -52,6 +52,14 @@ rules:
   - patch
   - update
   - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - toolchainstatuses
+  verbs:
+  - get
+  - list
+  - watch
 - apiGroups:
   - toolchain.dev.openshift.com
   resources:
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
index d0e3d69f..16811f2c 100644
--- a/components/workspaces/base/server/config/server/deployment.yaml
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -18,7 +18,7 @@ spec:
       securityContext:
         runAsNonRoot: true
       containers:
-      - image: traefik:v2.11.0
+      - image: traefik:v3.1.2
         name: proxy
         imagePullPolicy: IfNotPresent
         volumeMounts:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 59590c6c..4b038ccf 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index 42eae999..236c75a9 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -5,9 +5,9 @@ resources:
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 1d59ebf8..078c3cb5 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 1d59ebf8..078c3cb5 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/staging/base/kustomization.yaml b/components/workspaces/staging/base/kustomization.yaml
deleted file mode 100644
index 4b3440f0..00000000
--- a/components/workspaces/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- operator/config/default
-- server/config/default
diff --git a/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml b/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
deleted file mode 100644
index 9d719269..00000000
--- a/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
+++ /dev/null
@@ -1,173 +0,0 @@
----
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    controller-gen.kubebuilder.io/version: v0.14.0
-  name: internalworkspaces.workspaces.konflux-ci.dev
-spec:
-  group: workspaces.konflux-ci.dev
-  names:
-    kind: InternalWorkspace
-    listKind: InternalWorkspaceList
-    plural: internalworkspaces
-    singular: internalworkspace
-  scope: Namespaced
-  versions:
-  - additionalPrinterColumns:
-    - jsonPath: .spec.visibility
-      name: Visibility
-      type: string
-    name: v1alpha1
-    schema:
-      openAPIV3Schema:
-        description: InternalWorkspace is the Schema for the workspaces API
-        properties:
-          apiVersion:
-            description: |-
-              APIVersion defines the versioned schema of this representation of an object.
-              Servers should convert recognized schemas to the latest internal value, and
-              may reject unrecognized values.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
-            type: string
-          kind:
-            description: |-
-              Kind is a string value representing the REST resource this object represents.
-              Servers may infer this from the endpoint the client submits requests to.
-              Cannot be updated.
-              In CamelCase.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
-            type: string
-          metadata:
-            type: object
-          spec:
-            description: InternalWorkspaceSpec defines the desired state of Workspace
-            properties:
-              displayName:
-                type: string
-              owner:
-                description: UserInfo contains information about a user identity
-                properties:
-                  jwtInfo:
-                    description: JwtInfo contains information extracted from the user
-                      JWT Token
-                    properties:
-                      email:
-                        type: string
-                      sub:
-                        type: string
-                      userId:
-                        type: string
-                    required:
-                    - email
-                    - sub
-                    - userId
-                    type: object
-                required:
-                - jwtInfo
-                type: object
-              visibility:
-                enum:
-                - community
-                - private
-                type: string
-            required:
-            - displayName
-            - owner
-            - visibility
-            type: object
-          status:
-            description: InternalWorkspaceStatus defines the observed state of Workspace
-            properties:
-              conditions:
-                items:
-                  description: "Condition contains details for one aspect of the current
-                    state of this API Resource.\n---\nThis struct is intended for
-                    direct use as an array at the field path .status.conditions.  For
-                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
-                    observations of a foo's current state.\n\t    // Known .status.conditions.type
-                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
-                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
-                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
-                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
-                    \   // other fields\n\t}"
-                  properties:
-                    lastTransitionTime:
-                      description: |-
-                        lastTransitionTime is the last time the condition transitioned from one status to another.
-                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
-                      format: date-time
-                      type: string
-                    message:
-                      description: |-
-                        message is a human readable message indicating details about the transition.
-                        This may be an empty string.
-                      maxLength: 32768
-                      type: string
-                    observedGeneration:
-                      description: |-
-                        observedGeneration represents the .metadata.generation that the condition was set based upon.
-                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
-                        with respect to the current state of the instance.
-                      format: int64
-                      minimum: 0
-                      type: integer
-                    reason:
-                      description: |-
-                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
-                        Producers of specific condition types may define expected values and meanings for this field,
-                        and whether the values are considered a guaranteed API.
-                        The value should be a CamelCase string.
-                        This field may not be empty.
-                      maxLength: 1024
-                      minLength: 1
-                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
-                      type: string
-                    status:
-                      description: status of the condition, one of True, False, Unknown.
-                      enum:
-                      - "True"
-                      - "False"
-                      - Unknown
-                      type: string
-                    type:
-                      description: |-
-                        type of condition in CamelCase or in foo.example.com/CamelCase.
-                        ---
-                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
-                        useful (see .node.status.conditions), the ability to deconflict is important.
-                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
-                      maxLength: 316
-                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
-                      type: string
-                  required:
-                  - lastTransitionTime
-                  - message
-                  - reason
-                  - status
-                  - type
-                  type: object
-                type: array
-              owner:
-                description: Owner contains information on the owner
-                properties:
-                  username:
-                    type: string
-                type: object
-              space:
-                description: Space contains information about the underlying Space
-                properties:
-                  isHome:
-                    type: boolean
-                  name:
-                    type: string
-                required:
-                - isHome
-                - name
-                type: object
-            type: object
-        type: object
-    served: true
-    storage: true
-    subresources:
-      status: {}
diff --git a/components/workspaces/staging/base/operator/config/crd/kustomization.yaml b/components/workspaces/staging/base/operator/config/crd/kustomization.yaml
deleted file mode 100644
index d65647e6..00000000
--- a/components/workspaces/staging/base/operator/config/crd/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
-#+kubebuilder:scaffold:crdkustomizeresource
-
-patches: []
-# [WEBHOOK] To enable webhook, uncomment all the sections with [WEBHOOK] prefix.
-# patches here are for enabling the conversion webhook for each CRD
-#- patches/webhook_in_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizewebhookpatch
-
-# [CERTMANAGER] To enable cert-manager, uncomment all the sections with [CERTMANAGER] prefix.
-# patches here are for enabling the CA injection for each CRD
-#- patches/cainjection_in_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizecainjectionpatch
-
-# the following config is for teaching kustomize how to do kustomization for CRDs.
-configurations:
-- kustomizeconfig.yaml
diff --git a/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml b/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml
deleted file mode 100644
index ec5c150a..00000000
--- a/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# This file is for teaching kustomize how to substitute name and namespace reference in CRD
-nameReference:
-- kind: Service
-  version: v1
-  fieldSpecs:
-  - kind: CustomResourceDefinition
-    version: v1
-    group: apiextensions.k8s.io
-    path: spec/conversion/webhook/clientConfig/service/name
-
-namespace:
-- kind: CustomResourceDefinition
-  version: v1
-  group: apiextensions.k8s.io
-  path: spec/conversion/webhook/clientConfig/service/namespace
-  create: false
-
-varReference:
-- path: metadata/annotations
diff --git a/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml b/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
deleted file mode 100644
index 4e01dc55..00000000
--- a/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-# The following patch adds a directive for certmanager to inject CA into the CRD
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    cert-manager.io/inject-ca-from: $(CERTIFICATE_NAMESPACE)/$(CERTIFICATE_NAME)
-  name: workspaces.workspaces.io
diff --git a/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml b/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml
deleted file mode 100644
index 7684f103..00000000
--- a/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-# The following patch enables a conversion webhook for the CRD
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  name: workspaces.workspaces.io
-spec:
-  conversion:
-    strategy: Webhook
-    webhook:
-      clientConfig:
-        service:
-          namespace: system
-          name: webhook-service
-          path: /convert
-      conversionReviewVersions:
-      - v1
diff --git a/components/workspaces/staging/base/operator/config/default/kustomization.yaml b/components/workspaces/staging/base/operator/config/default/kustomization.yaml
deleted file mode 100644
index e55106c2..00000000
--- a/components/workspaces/staging/base/operator/config/default/kustomization.yaml
+++ /dev/null
@@ -1,46 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: workspaces-system
-namePrefix: workspaces-
-resources:
-- ../crd
-- ../rbac
-- ../manager
-- ../metrics
-patches:
-- path: manager_auth_proxy_patch.yaml
-replacements:
-- source:
-    fieldPath: metadata.name
-    kind: Secret
-    name: metrics-reader
-  targets:
-  - fieldPaths:
-    - spec.endpoints.*.authorization.credentials.name
-    select:
-      group: monitoring.coreos.com
-      kind: ServiceMonitor
-      name: metrics-proxy
-- source:
-    fieldPath: metadata.name
-    kind: ServiceAccount
-    name: metrics-reader
-  targets:
-  - fieldPaths:
-    - metadata.annotations.[kubernetes.io/service-account.name]
-    select:
-      kind: Secret
-      name: metrics-reader
-    options:
-      create: true
-
-# We need to make the secrets containing the service account tokens before the
-# service monitor can start checking for metrics.  To ensure this, let's make
-# the service account and its secrets before anything else.
-sortOptions:
-  order: legacy
-  legacySortOptions:
-    orderFirst:
-    - Namespace
-    - ServiceAccount
-    - Secret
diff --git a/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml
deleted file mode 100644
index d61b91a2..00000000
--- a/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-spec:
-  template:
-    spec:
-      affinity:
-        nodeAffinity:
-          requiredDuringSchedulingIgnoredDuringExecution:
-            nodeSelectorTerms:
-              - matchExpressions:
-                - key: kubernetes.io/arch
-                  operator: In
-                  values:
-                    - amd64
-                    # - arm64
-                    # - ppc64le
-                    # - s390x
-                - key: kubernetes.io/os
-                  operator: In
-                  values:
-                    - linux
-      containers:
-      - name: manager
-        args:
-        - "--health-probe-bind-address=:8081"
-        - "--metrics-bind-address=0.0.0.0:8080"
-        - "--leader-elect"
diff --git a/components/workspaces/staging/base/operator/config/manager/kustomization.yaml b/components/workspaces/staging/base/operator/config/manager/kustomization.yaml
deleted file mode 100644
index 379711c5..00000000
--- a/components/workspaces/staging/base/operator/config/manager/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- manager.yaml
-images:
-- name: controller
-  newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha6
-configMapGenerator:
-- behavior: replace
-  literals:
-  - kubesaw.namespace=toolchain-host-operator
-  name: operator-config
diff --git a/components/workspaces/staging/base/operator/config/manager/manager.yaml b/components/workspaces/staging/base/operator/config/manager/manager.yaml
deleted file mode 100644
index 64845c39..00000000
--- a/components/workspaces/staging/base/operator/config/manager/manager.yaml
+++ /dev/null
@@ -1,104 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: namespace
-    app.kubernetes.io/instance: system
-    app.kubernetes.io/component: manager
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: system
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: deployment
-    app.kubernetes.io/instance: controller-manager
-    app.kubernetes.io/component: manager
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-spec:
-  selector:
-    matchLabels:
-      control-plane: controller-manager
-  replicas: 1
-  template:
-    metadata:
-      annotations:
-        kubectl.kubernetes.io/default-container: manager
-      labels:
-        control-plane: controller-manager
-    spec:
-      securityContext:
-        runAsNonRoot: true
-        # TODO(user): For common cases that do not require escalating privileges
-        # it is recommended to ensure that all your Pods/Containers are restrictive.
-        # More info: https://kubernetes.io/docs/concepts/security/pod-security-standards/#restricted
-        # Please uncomment the following code if your project does NOT have to work on old Kubernetes
-        # versions < 1.19 or on vendors versions which do NOT support this field by default (i.e. Openshift < 4.11 ).
-        # seccompProfile:
-        #   type: RuntimeDefault
-      containers:
-      - name: manager
-        command:
-        - /manager
-        args:
-        - "--leader-elect"
-        image: controller:latest
-        imagePullPolicy: IfNotPresent
-        env:
-        - name: KUBESAW_NAMESPACE
-          valueFrom:
-            configMapKeyRef:
-              name: workspaces-operator-config
-              key: kubesaw.namespace
-        - name: WORKSPACES_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        livenessProbe:
-          httpGet:
-            path: /healthz
-            port: 8081
-          initialDelaySeconds: 15
-          periodSeconds: 20
-        readinessProbe:
-          httpGet:
-            path: /readyz
-            port: 8081
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        # TODO(user): Configure the resources accordingly based on the project requirements.
-        # More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-        ports:
-        - containerPort: 8081
-          name: http
-      serviceAccountName: controller-manager
-      terminationGracePeriodSeconds: 10
----
-apiVersion: v1
-kind: ConfigMap
-metadata:
-  name: operator-config
-data:
-  kubesaw.namespace: toolchain-host-operator
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
deleted file mode 100644
index 1993ada2..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrole
-    app.kubernetes.io/instance: metrics-reader
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: metrics-reader
-rules:
-- nonResourceURLs:
-  - "/metrics"
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml
deleted file mode 100644
index 606c8411..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrole
-    app.kubernetes.io/instance: proxy-role
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: proxy-role
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml
deleted file mode 100644
index 729d0a19..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrolebinding
-    app.kubernetes.io/instance: proxy-rolebinding
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: proxy-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: proxy-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml
deleted file mode 100644
index db391703..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
-# permissions for end users to edit workspaces.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-  name: workspace-editor-role
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml
deleted file mode 100644
index c4733bd9..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-# permissions for end users to view workspaces.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-  name: workspace-viewer-role
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml b/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml
deleted file mode 100644
index 23ef9e87..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-resources:
-# All RBAC will be applied under this service account in
-# the deployment namespace. You may comment out this resource
-# if your manager will use a service account that exists at
-# runtime. Be sure to update RoleBinding and ClusterRoleBinding
-# subjects if changing service account names.
-- service_account.yaml
-- role.yaml
-- role_binding.yaml
-- leader_election_role.yaml
-- leader_election_role_binding.yaml
-# Comment the following 4 lines if you want to disable
-# the auth proxy (https://github.com/brancz/kube-rbac-proxy)
-# which protects your /metrics endpoint.
-- auth_proxy_role.yaml
-- auth_proxy_role_binding.yaml
-- auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml b/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml
deleted file mode 100644
index b11092a1..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-# permissions to do leader election.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/name: role
-    app.kubernetes.io/instance: leader-election-role
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: leader-election-role
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - configmaps
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - update
-  - patch
-  - delete
-- apiGroups:
-  - coordination.k8s.io
-  resources:
-  - leases
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - update
-  - patch
-  - delete
-- apiGroups:
-  - ""
-  resources:
-  - events
-  verbs:
-  - create
-  - patch
diff --git a/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml
deleted file mode 100644
index 63d84233..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: rolebinding
-    app.kubernetes.io/instance: leader-election-rolebinding
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: leader-election-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: leader-election-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/role.yaml b/components/workspaces/staging/base/operator/config/rbac/role.yaml
deleted file mode 100644
index d61459b2..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/role.yaml
+++ /dev/null
@@ -1,97 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: manager-role
-rules:
-- apiGroups:
-  - rbac.authorization.k8s.io
-  resources:
-  - rolebindings
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - rbac.authorization.k8s.io
-  resources:
-  - roles
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spacebindings
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spaces
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - toolchainstatuses
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - usersignups
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - create
-  - delete
-  - deletecollection
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/finalizers
-  verbs:
-  - update
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
-  - patch
-  - update
diff --git a/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml
deleted file mode 100644
index 21dbb96f..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrolebinding
-    app.kubernetes.io/instance: manager-rolebinding
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: manager-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: manager-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/service_account.yaml b/components/workspaces/staging/base/operator/config/rbac/service_account.yaml
deleted file mode 100644
index f1a705d4..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/service_account.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  labels:
-    app.kubernetes.io/name: serviceaccount
-    app.kubernetes.io/instance: controller-manager
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml b/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
deleted file mode 100644
index 4a99e8a8..00000000
--- a/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
+++ /dev/null
@@ -1,147 +0,0 @@
----
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    controller-gen.kubebuilder.io/version: v0.14.0
-  name: workspaces.workspaces.konflux-ci.dev
-spec:
-  group: workspaces.konflux-ci.dev
-  names:
-    kind: Workspace
-    listKind: WorkspaceList
-    plural: workspaces
-    singular: workspace
-  scope: Namespaced
-  versions:
-  - additionalPrinterColumns:
-    - jsonPath: .spec.visibility
-      name: Visibility
-      type: string
-    name: v1alpha1
-    schema:
-      openAPIV3Schema:
-        description: Workspace is the Schema for the workspaces API
-        properties:
-          apiVersion:
-            description: |-
-              APIVersion defines the versioned schema of this representation of an object.
-              Servers should convert recognized schemas to the latest internal value, and
-              may reject unrecognized values.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
-            type: string
-          kind:
-            description: |-
-              Kind is a string value representing the REST resource this object represents.
-              Servers may infer this from the endpoint the client submits requests to.
-              Cannot be updated.
-              In CamelCase.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
-            type: string
-          metadata:
-            type: object
-          spec:
-            description: WorkspaceSpec defines the desired state of Workspace
-            properties:
-              visibility:
-                enum:
-                - community
-                - private
-                type: string
-            required:
-            - visibility
-            type: object
-          status:
-            description: WorkspaceStatus defines the observed state of Workspace
-            properties:
-              conditions:
-                items:
-                  description: "Condition contains details for one aspect of the current
-                    state of this API Resource.\n---\nThis struct is intended for
-                    direct use as an array at the field path .status.conditions.  For
-                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
-                    observations of a foo's current state.\n\t    // Known .status.conditions.type
-                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
-                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
-                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
-                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
-                    \   // other fields\n\t}"
-                  properties:
-                    lastTransitionTime:
-                      description: |-
-                        lastTransitionTime is the last time the condition transitioned from one status to another.
-                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
-                      format: date-time
-                      type: string
-                    message:
-                      description: |-
-                        message is a human readable message indicating details about the transition.
-                        This may be an empty string.
-                      maxLength: 32768
-                      type: string
-                    observedGeneration:
-                      description: |-
-                        observedGeneration represents the .metadata.generation that the condition was set based upon.
-                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
-                        with respect to the current state of the instance.
-                      format: int64
-                      minimum: 0
-                      type: integer
-                    reason:
-                      description: |-
-                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
-                        Producers of specific condition types may define expected values and meanings for this field,
-                        and whether the values are considered a guaranteed API.
-                        The value should be a CamelCase string.
-                        This field may not be empty.
-                      maxLength: 1024
-                      minLength: 1
-                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
-                      type: string
-                    status:
-                      description: status of the condition, one of True, False, Unknown.
-                      enum:
-                      - "True"
-                      - "False"
-                      - Unknown
-                      type: string
-                    type:
-                      description: |-
-                        type of condition in CamelCase or in foo.example.com/CamelCase.
-                        ---
-                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
-                        useful (see .node.status.conditions), the ability to deconflict is important.
-                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
-                      maxLength: 316
-                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
-                      type: string
-                  required:
-                  - lastTransitionTime
-                  - message
-                  - reason
-                  - status
-                  - type
-                  type: object
-                type: array
-              owner:
-                description: UserInfoStatus User info stored in the status
-                properties:
-                  email:
-                    type: string
-                required:
-                - email
-                type: object
-              space:
-                description: SpaceInfo Information about a Space
-                properties:
-                  name:
-                    type: string
-                required:
-                - name
-                type: object
-            type: object
-        type: object
-    served: true
-    storage: true
-    subresources:
-      status: {}
diff --git a/components/workspaces/staging/base/server/config/crd/kustomization.yaml b/components/workspaces/staging/base/server/config/crd/kustomization.yaml
deleted file mode 100644
index 1cc95a86..00000000
--- a/components/workspaces/staging/base/server/config/crd/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-# This kustomization.yaml is not intended to be run by itself,
-# since it depends on service name and namespace that are out of this kustomize package.
-# It should be run by config/default
-resources:
-- bases/workspaces.konflux-ci.dev_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizeresource
-
diff --git a/components/workspaces/staging/base/server/config/default/kustomization.yaml b/components/workspaces/staging/base/server/config/default/kustomization.yaml
deleted file mode 100644
index 5e5a32e0..00000000
--- a/components/workspaces/staging/base/server/config/default/kustomization.yaml
+++ /dev/null
@@ -1,101 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../crd
-- ../rbac
-- ../server
-namePrefix: workspaces-
-
-  # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
-  # create Role and RoleBinding to read UserSignups into toolchain-host-operator
-  # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
-  # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
-replacements:
-- source:
-    fieldPath: data.[kubesaw.namespace]
-    kind: ConfigMap
-    name: rest-api-server-config
-    options:
-      create: true
-  targets:
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: Role
-      name: spacebinding-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: Role
-      name: usersignup-reader
-- source:
-    fieldPath: metadata.namespace
-    kind: ServiceAccount
-    name: rest-api-server
-  targets:
-  - fieldPaths:
-    - subjects.0.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - subjects.0.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-- source:
-    fieldPath: metadata.name
-    kind: ServiceAccount
-    name: rest-api-server
-  targets:
-  - fieldPaths:
-    - subjects.0.name
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - subjects.0.name
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-namespace: workspaces-system
-configMapGenerator:
-- behavior: replace
-  literals:
-  - log.level=0
-  - kubesaw.namespace=toolchain-host-operator
-  name: rest-api-server-config
diff --git a/components/workspaces/staging/base/server/config/rbac/kustomization.yaml b/components/workspaces/staging/base/server/config/rbac/kustomization.yaml
deleted file mode 100644
index 5f78348a..00000000
--- a/components/workspaces/staging/base/server/config/rbac/kustomization.yaml
+++ /dev/null
@@ -1,10 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- role_spacebinding_reader.yaml
-- role_usersignup_reader.yaml
-- role_workspace_server_editor.yaml
-- rolebinding_spacebinding_reader.yaml
-- rolebinding_usersignup_reader.yaml
-- rolebinding_workspace_server_editor.yaml
-- serviceaccount.yaml
diff --git a/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml b/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml
deleted file mode 100644
index e602e374..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: spacebinding-reader
-rules:
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spacebindings
-  verbs:
-  - list
-  - get
-  - watch
diff --git a/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml b/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml
deleted file mode 100644
index 60eba82a..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: usersignup-reader
-rules:
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - usersignups
-  verbs:
-  - list
-  - get
-  - watch
diff --git a/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml
deleted file mode 100644
index 217aa852..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: workspace-server-editor
-  namespace: system
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - list
-  - get
-  - watch
-  - update
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
deleted file mode 100644
index 889c039f..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:spacebinding-reader
-  namespace: system
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: spacebinding-reader
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml
deleted file mode 100644
index dd1ddf76..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:usersignup-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: usersignup-reader
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
deleted file mode 100644
index e9f2eae5..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:workspace-server-editor
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: workspace-server-editor
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml b/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml
deleted file mode 100644
index 3ea73e85..00000000
--- a/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/server/deployment.yaml b/components/workspaces/staging/base/server/config/server/deployment.yaml
deleted file mode 100644
index 16811f2c..00000000
--- a/components/workspaces/staging/base/server/config/server/deployment.yaml
+++ /dev/null
@@ -1,120 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  labels:
-    app: rest-api-server
-  name: rest-api-server
-  namespace: system
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app: rest-api-server
-  template:
-    metadata:
-      labels:
-        app: rest-api-server
-    spec:
-      securityContext:
-        runAsNonRoot: true
-      containers:
-      - image: traefik:v3.1.2
-        name: proxy
-        imagePullPolicy: IfNotPresent
-        volumeMounts:
-        - name: "traefik-static-config"
-          mountPath: "/etc/traefik"
-        - name: "traefik-dynamic-config"
-          mountPath: "/etc/traefik/dynamic"
-        - name: "traefik-plugin-storage"
-          mountPath: "/plugins-storage" 
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-      - image: workspaces/rest-api:latest
-        name: rest-api
-        imagePullPolicy: IfNotPresent
-        env:
-        - name: KUBESAW_NAMESPACE
-          valueFrom:
-            configMapKeyRef:
-              name: rest-api-server-config
-              key: kubesaw.namespace
-        - name: LOG_LEVEL
-          valueFrom:
-            configMapKeyRef:
-              name: rest-api-server-config
-              key: log.level
-        - name: WORKSPACES_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        # livenessProbe:
-        #   httpGet:
-        #     path: /healthz
-        #     port: 8080
-        #   initialDelaySeconds: 15
-        #   periodSeconds: 20
-        # readinessProbe:
-        #   httpGet:
-        #     path: /readyz
-        #     port: 8081
-        #   initialDelaySeconds: 5
-        #   periodSeconds: 10
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-        ports:
-          - containerPort: 8080
-            name: http
-      volumes:
-      - name: "traefik-plugin-storage"
-        emptyDir:
-          sizeLimit: 20Mi
-      - name: "traefik-static-config"
-        configMap:
-          name: "traefik-sidecar-static-config"
-      - name: "traefik-dynamic-config"
-        configMap:
-          name: "traefik-sidecar-dynamic-config"
-      serviceAccountName: rest-api-server
-      terminationGracePeriodSeconds: 60
----
-apiVersion: v1
-kind: ConfigMap
-metadata:
-  name: rest-api-server-config
-data:
-  kubesaw.namespace: system
----
-apiVersion: v1
-data: {}
-kind: ConfigMap
-metadata:
-  name: traefik-sidecar-static-config
----
-apiVersion: v1
-data: {}
-kind: ConfigMap
-metadata:
-  name: traefik-sidecar-dynamic-config
diff --git a/components/workspaces/staging/base/server/config/server/kustomization.yaml b/components/workspaces/staging/base/server/config/server/kustomization.yaml
deleted file mode 100644
index 4b038ccf..00000000
--- a/components/workspaces/staging/base/server/config/server/kustomization.yaml
+++ /dev/null
@@ -1,22 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- deployment.yaml
-- service.yaml
-configMapGenerator:
-- behavior: merge
-  files:
-  - traefik.yaml=./proxy-config/traefik.yaml
-  name: traefik-sidecar-static-config
-  options:
-    disableNameSuffixHash: true
-- behavior: merge
-  files:
-  - config.yaml=./proxy-config/dynamic/config.yaml
-  name: traefik-sidecar-dynamic-config
-  options:
-    disableNameSuffixHash: true
-images:
-- name: workspaces/rest-api
-  newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha6
diff --git a/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml
deleted file mode 100644
index fab2b210..00000000
--- a/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml
+++ /dev/null
@@ -1,31 +0,0 @@
-http:
-  services:
-    web:
-      loadBalancer:
-        servers:
-        - url: "http://localhost:8080/"
-  routers:
-    app-apis:
-      service: web
-      entrypoints:
-      - web
-      rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
-      middlewares:
-        - jwt-authorizer
-    app-healthz:
-      service: web
-      entrypoints:
-      - web
-      rule: Path(`/healthz`)
-
-# Middlewares
-  middlewares:
-
-# JWT Auth
-    jwt-authorizer:
-      plugin:
-        jwt:
-          required: true
-          keys: []
-          jwtHeaders:
-            X-Subject: sub
diff --git a/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml b/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml
deleted file mode 100644
index 25b22119..00000000
--- a/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml
+++ /dev/null
@@ -1,32 +0,0 @@
-entryPoints:
-  web:
-    address: ":8000"
-  metrics:
-    address: ":8001"
-providers:
-  file:
-    directory: /etc/traefik/dynamic/
-    watch: true
-# Configure Logger
-log:
-  level: INFO
-  format: json
-# Print acess logs
-accessLog:
-  format: json
-# enable Prometheus metrics
-metrics:
-  prometheus:
-    entryPoint: metrics
-# enable Jaeger tracing
-# tracing:
-#   jaeger: {}
-experimental:
-  plugins:
-    jwt:
-      moduleName: github.com/traefik-plugins/traefik-jwt-plugin
-      version: v0.7.1
-authSources:
-  jwtSource:
-    jwt:
-      jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
diff --git a/components/workspaces/staging/base/server/config/server/service.yaml b/components/workspaces/staging/base/server/config/server/service.yaml
deleted file mode 100644
index 1399b7bc..00000000
--- a/components/workspaces/staging/base/server/config/server/service.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-kind: Service
-apiVersion: v1
-metadata:
-  name: rest-api-server
-  namespace: system
-  labels:
-    provider: workspaces
-    run: rest-api-server
-spec:
-  ports:
-  - protocol: TCP
-    port: 8000
-    targetPort: 8000
-  selector:
-    app: rest-api-server
-  type: ClusterIP
-  sessionAffinity: None
----
-kind: Service
-apiVersion: v1
-metadata:
-  name: rest-api-server-metrics
-  namespace: system
-  labels:
-    provider: workspaces
-    run: rest-api-server
-spec:
-  ports:
-  - protocol: TCP
-    port: 8001
-    targetPort: 8001
-  selector:
-    app: rest-api-server
-  type: ClusterIP
-  sessionAffinity: None
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index b267cf7c..84c4b30e 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base/
+- ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha6
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 3a6f8907..f5678297 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base/
+- ../../base/
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (597 lines)</summary>  

``` 
./commit-1257b394/production/components/workspaces/production/stone-prd-host1/kustomize.out.yaml
350,355d349
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
506,513d499
<   - toolchainstatuses
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
548,589d533
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: metrics-reader
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-metrics-reader
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
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-role
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
672,704d615
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: workspaces-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
802,835d712
< data: {}
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: workspaces-metrics-reader
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - name: metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     control-plane: controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
910a788,811
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
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
912c813
<         - --metrics-bind-address=0.0.0.0:8080
---
>         - --metrics-bind-address=127.0.0.1:8080
926c827
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha6
---
>         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha5
980c881
<       - image: traefik:v3.1.2
---
>       - image: traefik:v2.11.0
1018c919
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha6
---
>         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha5
1051,1078d951
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-metrics-proxy
<   namespace: workspaces-system
< spec:
<   endpoints:
<   - authorization:
<       credentials:
<         key: token
<         name: workspaces-metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app.kubernetes.io/component: metrics
<       control-plane: controller-manager
./commit-1257b394/production/components/workspaces/production/stone-prod-p01/kustomize.out.yaml
350,355d349
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
506,513d499
<   - toolchainstatuses
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
548,589d533
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: metrics-reader
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-metrics-reader
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
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-role
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
672,704d615
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: workspaces-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
802,835d712
< data: {}
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: workspaces-metrics-reader
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - name: metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     control-plane: controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
910a788,811
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
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
912c813
<         - --metrics-bind-address=0.0.0.0:8080
---
>         - --metrics-bind-address=127.0.0.1:8080
926c827
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha6
---
>         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha5
980c881
<       - image: traefik:v3.1.2
---
>       - image: traefik:v2.11.0
1018c919
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha6
---
>         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha5
1051,1078d951
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-metrics-proxy
<   namespace: workspaces-system
< spec:
<   endpoints:
<   - authorization:
<       credentials:
<         key: token
<         name: workspaces-metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app.kubernetes.io/component: metrics
<       control-plane: controller-manager
./commit-1257b394/production/components/workspaces/production/stone-prod-p02/kustomize.out.yaml
350,355d349
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
506,513d499
<   - toolchainstatuses
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
548,589d533
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: metrics-reader
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-metrics-reader
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
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-role
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
672,704d615
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: workspaces-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
802,835d712
< data: {}
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: workspaces-metrics-reader
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - name: metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     control-plane: controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
910a788,811
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
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
912c813
<         - --metrics-bind-address=0.0.0.0:8080
---
>         - --metrics-bind-address=127.0.0.1:8080
926c827
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha6
---
>         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha5
980c881
<       - image: traefik:v3.1.2
---
>       - image: traefik:v2.11.0
1018c919
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha6
---
>         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha5
1051,1078d951
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-metrics-proxy
<   namespace: workspaces-system
< spec:
<   endpoints:
<   - authorization:
<       credentials:
<         key: token
<         name: workspaces-metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app.kubernetes.io/component: metrics
<       control-plane: controller-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 1257b394 to 0fe1e3e4 on Wed Sep 18 18:18:30 2024 </h3>  
 
<details> 
<summary>Git Diff (1831 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/default/kustomization.yaml b/components/workspaces/base/operator/config/default/kustomization.yaml
index 32bd602f..e55106c2 100644
--- a/components/workspaces/base/operator/config/default/kustomization.yaml
+++ b/components/workspaces/base/operator/config/default/kustomization.yaml
@@ -6,5 +6,41 @@ resources:
 - ../crd
 - ../rbac
 - ../manager
+- ../metrics
 patches:
 - path: manager_auth_proxy_patch.yaml
+replacements:
+- source:
+    fieldPath: metadata.name
+    kind: Secret
+    name: metrics-reader
+  targets:
+  - fieldPaths:
+    - spec.endpoints.*.authorization.credentials.name
+    select:
+      group: monitoring.coreos.com
+      kind: ServiceMonitor
+      name: metrics-proxy
+- source:
+    fieldPath: metadata.name
+    kind: ServiceAccount
+    name: metrics-reader
+  targets:
+  - fieldPaths:
+    - metadata.annotations.[kubernetes.io/service-account.name]
+    select:
+      kind: Secret
+      name: metrics-reader
+    options:
+      create: true
+
+# We need to make the secrets containing the service account tokens before the
+# service monitor can start checking for metrics.  To ensure this, let's make
+# the service account and its secrets before anything else.
+sortOptions:
+  order: legacy
+  legacySortOptions:
+    orderFirst:
+    - Namespace
+    - ServiceAccount
+    - Secret
diff --git a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
index bc2f7500..d61b91a2 100644
--- a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
+++ b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
@@ -23,32 +23,8 @@ spec:
                   values:
                     - linux
       containers:
-      - name: kube-rbac-proxy
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
-        args:
-        - "--secure-listen-address=0.0.0.0:8443"
-        - "--upstream=http://127.0.0.1:8080/"
-        - "--logtostderr=true"
-        - "--v=0"
-        ports:
-        - containerPort: 8443
-          protocol: TCP
-          name: https
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
       - name: manager
         args:
         - "--health-probe-bind-address=:8081"
-        - "--metrics-bind-address=127.0.0.1:8080"
+        - "--metrics-bind-address=0.0.0.0:8080"
         - "--leader-elect"
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index 7ab93730..379711c5 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/staging/base/operator/config/metrics/kustomization.yaml b/components/workspaces/base/operator/config/metrics/kustomization.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/kustomization.yaml
rename to components/workspaces/base/operator/config/metrics/kustomization.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/metrics-service.yaml b/components/workspaces/base/operator/config/metrics/metrics-service.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/metrics-service.yaml
rename to components/workspaces/base/operator/config/metrics/metrics-service.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/monitor.yaml b/components/workspaces/base/operator/config/metrics/monitor.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/monitor.yaml
rename to components/workspaces/base/operator/config/metrics/monitor.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/service-account.yaml b/components/workspaces/base/operator/config/metrics/service-account.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/service-account.yaml
rename to components/workspaces/base/operator/config/metrics/service-account.yaml
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
deleted file mode 100644
index e624d7e2..00000000
--- a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: v1
-kind: Service
-metadata:
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: service
-    app.kubernetes.io/instance: controller-manager-metrics-service
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: controller-manager-metrics-service
-  namespace: system
-spec:
-  ports:
-  - name: https
-    port: 8443
-    protocol: TCP
-    targetPort: https
-  selector:
-    control-plane: controller-manager
diff --git a/components/workspaces/base/operator/config/rbac/kustomization.yaml b/components/workspaces/base/operator/config/rbac/kustomization.yaml
index fb5a2b88..23ef9e87 100644
--- a/components/workspaces/base/operator/config/rbac/kustomization.yaml
+++ b/components/workspaces/base/operator/config/rbac/kustomization.yaml
@@ -12,7 +12,6 @@ resources:
 # Comment the following 4 lines if you want to disable
 # the auth proxy (https://github.com/brancz/kube-rbac-proxy)
 # which protects your /metrics endpoint.
-# - auth_proxy_service.yaml
-# - auth_proxy_role.yaml
-# - auth_proxy_role_binding.yaml
-# - auth_proxy_client_clusterrole.yaml
+- auth_proxy_role.yaml
+- auth_proxy_role_binding.yaml
+- auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
index a589096c..d61459b2 100644
--- a/components/workspaces/base/operator/config/rbac/role.yaml
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -52,6 +52,14 @@ rules:
   - patch
   - update
   - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - toolchainstatuses
+  verbs:
+  - get
+  - list
+  - watch
 - apiGroups:
   - toolchain.dev.openshift.com
   resources:
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
index d0e3d69f..16811f2c 100644
--- a/components/workspaces/base/server/config/server/deployment.yaml
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -18,7 +18,7 @@ spec:
       securityContext:
         runAsNonRoot: true
       containers:
-      - image: traefik:v2.11.0
+      - image: traefik:v3.1.2
         name: proxy
         imagePullPolicy: IfNotPresent
         volumeMounts:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 59590c6c..4b038ccf 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index 42eae999..236c75a9 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -5,9 +5,9 @@ resources:
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 1d59ebf8..078c3cb5 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 1d59ebf8..078c3cb5 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/staging/base/kustomization.yaml b/components/workspaces/staging/base/kustomization.yaml
deleted file mode 100644
index 4b3440f0..00000000
--- a/components/workspaces/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- operator/config/default
-- server/config/default
diff --git a/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml b/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
deleted file mode 100644
index 9d719269..00000000
--- a/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
+++ /dev/null
@@ -1,173 +0,0 @@
----
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    controller-gen.kubebuilder.io/version: v0.14.0
-  name: internalworkspaces.workspaces.konflux-ci.dev
-spec:
-  group: workspaces.konflux-ci.dev
-  names:
-    kind: InternalWorkspace
-    listKind: InternalWorkspaceList
-    plural: internalworkspaces
-    singular: internalworkspace
-  scope: Namespaced
-  versions:
-  - additionalPrinterColumns:
-    - jsonPath: .spec.visibility
-      name: Visibility
-      type: string
-    name: v1alpha1
-    schema:
-      openAPIV3Schema:
-        description: InternalWorkspace is the Schema for the workspaces API
-        properties:
-          apiVersion:
-            description: |-
-              APIVersion defines the versioned schema of this representation of an object.
-              Servers should convert recognized schemas to the latest internal value, and
-              may reject unrecognized values.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
-            type: string
-          kind:
-            description: |-
-              Kind is a string value representing the REST resource this object represents.
-              Servers may infer this from the endpoint the client submits requests to.
-              Cannot be updated.
-              In CamelCase.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
-            type: string
-          metadata:
-            type: object
-          spec:
-            description: InternalWorkspaceSpec defines the desired state of Workspace
-            properties:
-              displayName:
-                type: string
-              owner:
-                description: UserInfo contains information about a user identity
-                properties:
-                  jwtInfo:
-                    description: JwtInfo contains information extracted from the user
-                      JWT Token
-                    properties:
-                      email:
-                        type: string
-                      sub:
-                        type: string
-                      userId:
-                        type: string
-                    required:
-                    - email
-                    - sub
-                    - userId
-                    type: object
-                required:
-                - jwtInfo
-                type: object
-              visibility:
-                enum:
-                - community
-                - private
-                type: string
-            required:
-            - displayName
-            - owner
-            - visibility
-            type: object
-          status:
-            description: InternalWorkspaceStatus defines the observed state of Workspace
-            properties:
-              conditions:
-                items:
-                  description: "Condition contains details for one aspect of the current
-                    state of this API Resource.\n---\nThis struct is intended for
-                    direct use as an array at the field path .status.conditions.  For
-                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
-                    observations of a foo's current state.\n\t    // Known .status.conditions.type
-                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
-                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
-                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
-                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
-                    \   // other fields\n\t}"
-                  properties:
-                    lastTransitionTime:
-                      description: |-
-                        lastTransitionTime is the last time the condition transitioned from one status to another.
-                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
-                      format: date-time
-                      type: string
-                    message:
-                      description: |-
-                        message is a human readable message indicating details about the transition.
-                        This may be an empty string.
-                      maxLength: 32768
-                      type: string
-                    observedGeneration:
-                      description: |-
-                        observedGeneration represents the .metadata.generation that the condition was set based upon.
-                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
-                        with respect to the current state of the instance.
-                      format: int64
-                      minimum: 0
-                      type: integer
-                    reason:
-                      description: |-
-                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
-                        Producers of specific condition types may define expected values and meanings for this field,
-                        and whether the values are considered a guaranteed API.
-                        The value should be a CamelCase string.
-                        This field may not be empty.
-                      maxLength: 1024
-                      minLength: 1
-                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
-                      type: string
-                    status:
-                      description: status of the condition, one of True, False, Unknown.
-                      enum:
-                      - "True"
-                      - "False"
-                      - Unknown
-                      type: string
-                    type:
-                      description: |-
-                        type of condition in CamelCase or in foo.example.com/CamelCase.
-                        ---
-                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
-                        useful (see .node.status.conditions), the ability to deconflict is important.
-                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
-                      maxLength: 316
-                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
-                      type: string
-                  required:
-                  - lastTransitionTime
-                  - message
-                  - reason
-                  - status
-                  - type
-                  type: object
-                type: array
-              owner:
-                description: Owner contains information on the owner
-                properties:
-                  username:
-                    type: string
-                type: object
-              space:
-                description: Space contains information about the underlying Space
-                properties:
-                  isHome:
-                    type: boolean
-                  name:
-                    type: string
-                required:
-                - isHome
-                - name
-                type: object
-            type: object
-        type: object
-    served: true
-    storage: true
-    subresources:
-      status: {}
diff --git a/components/workspaces/staging/base/operator/config/crd/kustomization.yaml b/components/workspaces/staging/base/operator/config/crd/kustomization.yaml
deleted file mode 100644
index d65647e6..00000000
--- a/components/workspaces/staging/base/operator/config/crd/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
-#+kubebuilder:scaffold:crdkustomizeresource
-
-patches: []
-# [WEBHOOK] To enable webhook, uncomment all the sections with [WEBHOOK] prefix.
-# patches here are for enabling the conversion webhook for each CRD
-#- patches/webhook_in_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizewebhookpatch
-
-# [CERTMANAGER] To enable cert-manager, uncomment all the sections with [CERTMANAGER] prefix.
-# patches here are for enabling the CA injection for each CRD
-#- patches/cainjection_in_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizecainjectionpatch
-
-# the following config is for teaching kustomize how to do kustomization for CRDs.
-configurations:
-- kustomizeconfig.yaml
diff --git a/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml b/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml
deleted file mode 100644
index ec5c150a..00000000
--- a/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# This file is for teaching kustomize how to substitute name and namespace reference in CRD
-nameReference:
-- kind: Service
-  version: v1
-  fieldSpecs:
-  - kind: CustomResourceDefinition
-    version: v1
-    group: apiextensions.k8s.io
-    path: spec/conversion/webhook/clientConfig/service/name
-
-namespace:
-- kind: CustomResourceDefinition
-  version: v1
-  group: apiextensions.k8s.io
-  path: spec/conversion/webhook/clientConfig/service/namespace
-  create: false
-
-varReference:
-- path: metadata/annotations
diff --git a/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml b/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
deleted file mode 100644
index 4e01dc55..00000000
--- a/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-# The following patch adds a directive for certmanager to inject CA into the CRD
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    cert-manager.io/inject-ca-from: $(CERTIFICATE_NAMESPACE)/$(CERTIFICATE_NAME)
-  name: workspaces.workspaces.io
diff --git a/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml b/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml
deleted file mode 100644
index 7684f103..00000000
--- a/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-# The following patch enables a conversion webhook for the CRD
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  name: workspaces.workspaces.io
-spec:
-  conversion:
-    strategy: Webhook
-    webhook:
-      clientConfig:
-        service:
-          namespace: system
-          name: webhook-service
-          path: /convert
-      conversionReviewVersions:
-      - v1
diff --git a/components/workspaces/staging/base/operator/config/default/kustomization.yaml b/components/workspaces/staging/base/operator/config/default/kustomization.yaml
deleted file mode 100644
index e55106c2..00000000
--- a/components/workspaces/staging/base/operator/config/default/kustomization.yaml
+++ /dev/null
@@ -1,46 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: workspaces-system
-namePrefix: workspaces-
-resources:
-- ../crd
-- ../rbac
-- ../manager
-- ../metrics
-patches:
-- path: manager_auth_proxy_patch.yaml
-replacements:
-- source:
-    fieldPath: metadata.name
-    kind: Secret
-    name: metrics-reader
-  targets:
-  - fieldPaths:
-    - spec.endpoints.*.authorization.credentials.name
-    select:
-      group: monitoring.coreos.com
-      kind: ServiceMonitor
-      name: metrics-proxy
-- source:
-    fieldPath: metadata.name
-    kind: ServiceAccount
-    name: metrics-reader
-  targets:
-  - fieldPaths:
-    - metadata.annotations.[kubernetes.io/service-account.name]
-    select:
-      kind: Secret
-      name: metrics-reader
-    options:
-      create: true
-
-# We need to make the secrets containing the service account tokens before the
-# service monitor can start checking for metrics.  To ensure this, let's make
-# the service account and its secrets before anything else.
-sortOptions:
-  order: legacy
-  legacySortOptions:
-    orderFirst:
-    - Namespace
-    - ServiceAccount
-    - Secret
diff --git a/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml
deleted file mode 100644
index d61b91a2..00000000
--- a/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-spec:
-  template:
-    spec:
-      affinity:
-        nodeAffinity:
-          requiredDuringSchedulingIgnoredDuringExecution:
-            nodeSelectorTerms:
-              - matchExpressions:
-                - key: kubernetes.io/arch
-                  operator: In
-                  values:
-                    - amd64
-                    # - arm64
-                    # - ppc64le
-                    # - s390x
-                - key: kubernetes.io/os
-                  operator: In
-                  values:
-                    - linux
-      containers:
-      - name: manager
-        args:
-        - "--health-probe-bind-address=:8081"
-        - "--metrics-bind-address=0.0.0.0:8080"
-        - "--leader-elect"
diff --git a/components/workspaces/staging/base/operator/config/manager/kustomization.yaml b/components/workspaces/staging/base/operator/config/manager/kustomization.yaml
deleted file mode 100644
index 379711c5..00000000
--- a/components/workspaces/staging/base/operator/config/manager/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- manager.yaml
-images:
-- name: controller
-  newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha6
-configMapGenerator:
-- behavior: replace
-  literals:
-  - kubesaw.namespace=toolchain-host-operator
-  name: operator-config
diff --git a/components/workspaces/staging/base/operator/config/manager/manager.yaml b/components/workspaces/staging/base/operator/config/manager/manager.yaml
deleted file mode 100644
index 64845c39..00000000
--- a/components/workspaces/staging/base/operator/config/manager/manager.yaml
+++ /dev/null
@@ -1,104 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: namespace
-    app.kubernetes.io/instance: system
-    app.kubernetes.io/component: manager
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: system
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: deployment
-    app.kubernetes.io/instance: controller-manager
-    app.kubernetes.io/component: manager
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-spec:
-  selector:
-    matchLabels:
-      control-plane: controller-manager
-  replicas: 1
-  template:
-    metadata:
-      annotations:
-        kubectl.kubernetes.io/default-container: manager
-      labels:
-        control-plane: controller-manager
-    spec:
-      securityContext:
-        runAsNonRoot: true
-        # TODO(user): For common cases that do not require escalating privileges
-        # it is recommended to ensure that all your Pods/Containers are restrictive.
-        # More info: https://kubernetes.io/docs/concepts/security/pod-security-standards/#restricted
-        # Please uncomment the following code if your project does NOT have to work on old Kubernetes
-        # versions < 1.19 or on vendors versions which do NOT support this field by default (i.e. Openshift < 4.11 ).
-        # seccompProfile:
-        #   type: RuntimeDefault
-      containers:
-      - name: manager
-        command:
-        - /manager
-        args:
-        - "--leader-elect"
-        image: controller:latest
-        imagePullPolicy: IfNotPresent
-        env:
-        - name: KUBESAW_NAMESPACE
-          valueFrom:
-            configMapKeyRef:
-              name: workspaces-operator-config
-              key: kubesaw.namespace
-        - name: WORKSPACES_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        livenessProbe:
-          httpGet:
-            path: /healthz
-            port: 8081
-          initialDelaySeconds: 15
-          periodSeconds: 20
-        readinessProbe:
-          httpGet:
-            path: /readyz
-            port: 8081
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        # TODO(user): Configure the resources accordingly based on the project requirements.
-        # More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-        ports:
-        - containerPort: 8081
-          name: http
-      serviceAccountName: controller-manager
-      terminationGracePeriodSeconds: 10
----
-apiVersion: v1
-kind: ConfigMap
-metadata:
-  name: operator-config
-data:
-  kubesaw.namespace: toolchain-host-operator
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
deleted file mode 100644
index 1993ada2..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrole
-    app.kubernetes.io/instance: metrics-reader
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: metrics-reader
-rules:
-- nonResourceURLs:
-  - "/metrics"
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml
deleted file mode 100644
index 606c8411..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrole
-    app.kubernetes.io/instance: proxy-role
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: proxy-role
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml
deleted file mode 100644
index 729d0a19..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrolebinding
-    app.kubernetes.io/instance: proxy-rolebinding
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: proxy-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: proxy-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml
deleted file mode 100644
index db391703..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
-# permissions for end users to edit workspaces.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-  name: workspace-editor-role
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml
deleted file mode 100644
index c4733bd9..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-# permissions for end users to view workspaces.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-  name: workspace-viewer-role
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml b/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml
deleted file mode 100644
index 23ef9e87..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-resources:
-# All RBAC will be applied under this service account in
-# the deployment namespace. You may comment out this resource
-# if your manager will use a service account that exists at
-# runtime. Be sure to update RoleBinding and ClusterRoleBinding
-# subjects if changing service account names.
-- service_account.yaml
-- role.yaml
-- role_binding.yaml
-- leader_election_role.yaml
-- leader_election_role_binding.yaml
-# Comment the following 4 lines if you want to disable
-# the auth proxy (https://github.com/brancz/kube-rbac-proxy)
-# which protects your /metrics endpoint.
-- auth_proxy_role.yaml
-- auth_proxy_role_binding.yaml
-- auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml b/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml
deleted file mode 100644
index b11092a1..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-# permissions to do leader election.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/name: role
-    app.kubernetes.io/instance: leader-election-role
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: leader-election-role
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - configmaps
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - update
-  - patch
-  - delete
-- apiGroups:
-  - coordination.k8s.io
-  resources:
-  - leases
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - update
-  - patch
-  - delete
-- apiGroups:
-  - ""
-  resources:
-  - events
-  verbs:
-  - create
-  - patch
diff --git a/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml
deleted file mode 100644
index 63d84233..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: rolebinding
-    app.kubernetes.io/instance: leader-election-rolebinding
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: leader-election-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: leader-election-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/role.yaml b/components/workspaces/staging/base/operator/config/rbac/role.yaml
deleted file mode 100644
index d61459b2..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/role.yaml
+++ /dev/null
@@ -1,97 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: manager-role
-rules:
-- apiGroups:
-  - rbac.authorization.k8s.io
-  resources:
-  - rolebindings
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - rbac.authorization.k8s.io
-  resources:
-  - roles
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spacebindings
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spaces
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - toolchainstatuses
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - usersignups
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - create
-  - delete
-  - deletecollection
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/finalizers
-  verbs:
-  - update
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
-  - patch
-  - update
diff --git a/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml
deleted file mode 100644
index 21dbb96f..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrolebinding
-    app.kubernetes.io/instance: manager-rolebinding
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: manager-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: manager-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/service_account.yaml b/components/workspaces/staging/base/operator/config/rbac/service_account.yaml
deleted file mode 100644
index f1a705d4..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/service_account.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  labels:
-    app.kubernetes.io/name: serviceaccount
-    app.kubernetes.io/instance: controller-manager
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml b/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
deleted file mode 100644
index 4a99e8a8..00000000
--- a/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
+++ /dev/null
@@ -1,147 +0,0 @@
----
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    controller-gen.kubebuilder.io/version: v0.14.0
-  name: workspaces.workspaces.konflux-ci.dev
-spec:
-  group: workspaces.konflux-ci.dev
-  names:
-    kind: Workspace
-    listKind: WorkspaceList
-    plural: workspaces
-    singular: workspace
-  scope: Namespaced
-  versions:
-  - additionalPrinterColumns:
-    - jsonPath: .spec.visibility
-      name: Visibility
-      type: string
-    name: v1alpha1
-    schema:
-      openAPIV3Schema:
-        description: Workspace is the Schema for the workspaces API
-        properties:
-          apiVersion:
-            description: |-
-              APIVersion defines the versioned schema of this representation of an object.
-              Servers should convert recognized schemas to the latest internal value, and
-              may reject unrecognized values.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
-            type: string
-          kind:
-            description: |-
-              Kind is a string value representing the REST resource this object represents.
-              Servers may infer this from the endpoint the client submits requests to.
-              Cannot be updated.
-              In CamelCase.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
-            type: string
-          metadata:
-            type: object
-          spec:
-            description: WorkspaceSpec defines the desired state of Workspace
-            properties:
-              visibility:
-                enum:
-                - community
-                - private
-                type: string
-            required:
-            - visibility
-            type: object
-          status:
-            description: WorkspaceStatus defines the observed state of Workspace
-            properties:
-              conditions:
-                items:
-                  description: "Condition contains details for one aspect of the current
-                    state of this API Resource.\n---\nThis struct is intended for
-                    direct use as an array at the field path .status.conditions.  For
-                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
-                    observations of a foo's current state.\n\t    // Known .status.conditions.type
-                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
-                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
-                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
-                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
-                    \   // other fields\n\t}"
-                  properties:
-                    lastTransitionTime:
-                      description: |-
-                        lastTransitionTime is the last time the condition transitioned from one status to another.
-                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
-                      format: date-time
-                      type: string
-                    message:
-                      description: |-
-                        message is a human readable message indicating details about the transition.
-                        This may be an empty string.
-                      maxLength: 32768
-                      type: string
-                    observedGeneration:
-                      description: |-
-                        observedGeneration represents the .metadata.generation that the condition was set based upon.
-                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
-                        with respect to the current state of the instance.
-                      format: int64
-                      minimum: 0
-                      type: integer
-                    reason:
-                      description: |-
-                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
-                        Producers of specific condition types may define expected values and meanings for this field,
-                        and whether the values are considered a guaranteed API.
-                        The value should be a CamelCase string.
-                        This field may not be empty.
-                      maxLength: 1024
-                      minLength: 1
-                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
-                      type: string
-                    status:
-                      description: status of the condition, one of True, False, Unknown.
-                      enum:
-                      - "True"
-                      - "False"
-                      - Unknown
-                      type: string
-                    type:
-                      description: |-
-                        type of condition in CamelCase or in foo.example.com/CamelCase.
-                        ---
-                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
-                        useful (see .node.status.conditions), the ability to deconflict is important.
-                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
-                      maxLength: 316
-                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
-                      type: string
-                  required:
-                  - lastTransitionTime
-                  - message
-                  - reason
-                  - status
-                  - type
-                  type: object
-                type: array
-              owner:
-                description: UserInfoStatus User info stored in the status
-                properties:
-                  email:
-                    type: string
-                required:
-                - email
-                type: object
-              space:
-                description: SpaceInfo Information about a Space
-                properties:
-                  name:
-                    type: string
-                required:
-                - name
-                type: object
-            type: object
-        type: object
-    served: true
-    storage: true
-    subresources:
-      status: {}
diff --git a/components/workspaces/staging/base/server/config/crd/kustomization.yaml b/components/workspaces/staging/base/server/config/crd/kustomization.yaml
deleted file mode 100644
index 1cc95a86..00000000
--- a/components/workspaces/staging/base/server/config/crd/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-# This kustomization.yaml is not intended to be run by itself,
-# since it depends on service name and namespace that are out of this kustomize package.
-# It should be run by config/default
-resources:
-- bases/workspaces.konflux-ci.dev_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizeresource
-
diff --git a/components/workspaces/staging/base/server/config/default/kustomization.yaml b/components/workspaces/staging/base/server/config/default/kustomization.yaml
deleted file mode 100644
index 5e5a32e0..00000000
--- a/components/workspaces/staging/base/server/config/default/kustomization.yaml
+++ /dev/null
@@ -1,101 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../crd
-- ../rbac
-- ../server
-namePrefix: workspaces-
-
-  # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
-  # create Role and RoleBinding to read UserSignups into toolchain-host-operator
-  # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
-  # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
-replacements:
-- source:
-    fieldPath: data.[kubesaw.namespace]
-    kind: ConfigMap
-    name: rest-api-server-config
-    options:
-      create: true
-  targets:
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: Role
-      name: spacebinding-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: Role
-      name: usersignup-reader
-- source:
-    fieldPath: metadata.namespace
-    kind: ServiceAccount
-    name: rest-api-server
-  targets:
-  - fieldPaths:
-    - subjects.0.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - subjects.0.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-- source:
-    fieldPath: metadata.name
-    kind: ServiceAccount
-    name: rest-api-server
-  targets:
-  - fieldPaths:
-    - subjects.0.name
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - subjects.0.name
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-namespace: workspaces-system
-configMapGenerator:
-- behavior: replace
-  literals:
-  - log.level=0
-  - kubesaw.namespace=toolchain-host-operator
-  name: rest-api-server-config
diff --git a/components/workspaces/staging/base/server/config/rbac/kustomization.yaml b/components/workspaces/staging/base/server/config/rbac/kustomization.yaml
deleted file mode 100644
index 5f78348a..00000000
--- a/components/workspaces/staging/base/server/config/rbac/kustomization.yaml
+++ /dev/null
@@ -1,10 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- role_spacebinding_reader.yaml
-- role_usersignup_reader.yaml
-- role_workspace_server_editor.yaml
-- rolebinding_spacebinding_reader.yaml
-- rolebinding_usersignup_reader.yaml
-- rolebinding_workspace_server_editor.yaml
-- serviceaccount.yaml
diff --git a/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml b/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml
deleted file mode 100644
index e602e374..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: spacebinding-reader
-rules:
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spacebindings
-  verbs:
-  - list
-  - get
-  - watch
diff --git a/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml b/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml
deleted file mode 100644
index 60eba82a..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: usersignup-reader
-rules:
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - usersignups
-  verbs:
-  - list
-  - get
-  - watch
diff --git a/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml
deleted file mode 100644
index 217aa852..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: workspace-server-editor
-  namespace: system
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - list
-  - get
-  - watch
-  - update
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
deleted file mode 100644
index 889c039f..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:spacebinding-reader
-  namespace: system
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: spacebinding-reader
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml
deleted file mode 100644
index dd1ddf76..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:usersignup-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: usersignup-reader
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
deleted file mode 100644
index e9f2eae5..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:workspace-server-editor
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: workspace-server-editor
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml b/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml
deleted file mode 100644
index 3ea73e85..00000000
--- a/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/server/deployment.yaml b/components/workspaces/staging/base/server/config/server/deployment.yaml
deleted file mode 100644
index 16811f2c..00000000
--- a/components/workspaces/staging/base/server/config/server/deployment.yaml
+++ /dev/null
@@ -1,120 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  labels:
-    app: rest-api-server
-  name: rest-api-server
-  namespace: system
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app: rest-api-server
-  template:
-    metadata:
-      labels:
-        app: rest-api-server
-    spec:
-      securityContext:
-        runAsNonRoot: true
-      containers:
-      - image: traefik:v3.1.2
-        name: proxy
-        imagePullPolicy: IfNotPresent
-        volumeMounts:
-        - name: "traefik-static-config"
-          mountPath: "/etc/traefik"
-        - name: "traefik-dynamic-config"
-          mountPath: "/etc/traefik/dynamic"
-        - name: "traefik-plugin-storage"
-          mountPath: "/plugins-storage" 
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-      - image: workspaces/rest-api:latest
-        name: rest-api
-        imagePullPolicy: IfNotPresent
-        env:
-        - name: KUBESAW_NAMESPACE
-          valueFrom:
-            configMapKeyRef:
-              name: rest-api-server-config
-              key: kubesaw.namespace
-        - name: LOG_LEVEL
-          valueFrom:
-            configMapKeyRef:
-              name: rest-api-server-config
-              key: log.level
-        - name: WORKSPACES_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        # livenessProbe:
-        #   httpGet:
-        #     path: /healthz
-        #     port: 8080
-        #   initialDelaySeconds: 15
-        #   periodSeconds: 20
-        # readinessProbe:
-        #   httpGet:
-        #     path: /readyz
-        #     port: 8081
-        #   initialDelaySeconds: 5
-        #   periodSeconds: 10
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-        ports:
-          - containerPort: 8080
-            name: http
-      volumes:
-      - name: "traefik-plugin-storage"
-        emptyDir:
-          sizeLimit: 20Mi
-      - name: "traefik-static-config"
-        configMap:
-          name: "traefik-sidecar-static-config"
-      - name: "traefik-dynamic-config"
-        configMap:
-          name: "traefik-sidecar-dynamic-config"
-      serviceAccountName: rest-api-server
-      terminationGracePeriodSeconds: 60
----
-apiVersion: v1
-kind: ConfigMap
-metadata:
-  name: rest-api-server-config
-data:
-  kubesaw.namespace: system
----
-apiVersion: v1
-data: {}
-kind: ConfigMap
-metadata:
-  name: traefik-sidecar-static-config
----
-apiVersion: v1
-data: {}
-kind: ConfigMap
-metadata:
-  name: traefik-sidecar-dynamic-config
diff --git a/components/workspaces/staging/base/server/config/server/kustomization.yaml b/components/workspaces/staging/base/server/config/server/kustomization.yaml
deleted file mode 100644
index 4b038ccf..00000000
--- a/components/workspaces/staging/base/server/config/server/kustomization.yaml
+++ /dev/null
@@ -1,22 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- deployment.yaml
-- service.yaml
-configMapGenerator:
-- behavior: merge
-  files:
-  - traefik.yaml=./proxy-config/traefik.yaml
-  name: traefik-sidecar-static-config
-  options:
-    disableNameSuffixHash: true
-- behavior: merge
-  files:
-  - config.yaml=./proxy-config/dynamic/config.yaml
-  name: traefik-sidecar-dynamic-config
-  options:
-    disableNameSuffixHash: true
-images:
-- name: workspaces/rest-api
-  newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha6
diff --git a/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml
deleted file mode 100644
index fab2b210..00000000
--- a/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml
+++ /dev/null
@@ -1,31 +0,0 @@
-http:
-  services:
-    web:
-      loadBalancer:
-        servers:
-        - url: "http://localhost:8080/"
-  routers:
-    app-apis:
-      service: web
-      entrypoints:
-      - web
-      rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
-      middlewares:
-        - jwt-authorizer
-    app-healthz:
-      service: web
-      entrypoints:
-      - web
-      rule: Path(`/healthz`)
-
-# Middlewares
-  middlewares:
-
-# JWT Auth
-    jwt-authorizer:
-      plugin:
-        jwt:
-          required: true
-          keys: []
-          jwtHeaders:
-            X-Subject: sub
diff --git a/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml b/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml
deleted file mode 100644
index 25b22119..00000000
--- a/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml
+++ /dev/null
@@ -1,32 +0,0 @@
-entryPoints:
-  web:
-    address: ":8000"
-  metrics:
-    address: ":8001"
-providers:
-  file:
-    directory: /etc/traefik/dynamic/
-    watch: true
-# Configure Logger
-log:
-  level: INFO
-  format: json
-# Print acess logs
-accessLog:
-  format: json
-# enable Prometheus metrics
-metrics:
-  prometheus:
-    entryPoint: metrics
-# enable Jaeger tracing
-# tracing:
-#   jaeger: {}
-experimental:
-  plugins:
-    jwt:
-      moduleName: github.com/traefik-plugins/traefik-jwt-plugin
-      version: v0.7.1
-authSources:
-  jwtSource:
-    jwt:
-      jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
diff --git a/components/workspaces/staging/base/server/config/server/service.yaml b/components/workspaces/staging/base/server/config/server/service.yaml
deleted file mode 100644
index 1399b7bc..00000000
--- a/components/workspaces/staging/base/server/config/server/service.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-kind: Service
-apiVersion: v1
-metadata:
-  name: rest-api-server
-  namespace: system
-  labels:
-    provider: workspaces
-    run: rest-api-server
-spec:
-  ports:
-  - protocol: TCP
-    port: 8000
-    targetPort: 8000
-  selector:
-    app: rest-api-server
-  type: ClusterIP
-  sessionAffinity: None
----
-kind: Service
-apiVersion: v1
-metadata:
-  name: rest-api-server-metrics
-  namespace: system
-  labels:
-    provider: workspaces
-    run: rest-api-server
-spec:
-  ports:
-  - protocol: TCP
-    port: 8001
-    targetPort: 8001
-  selector:
-    app: rest-api-server
-  type: ClusterIP
-  sessionAffinity: None
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index b267cf7c..84c4b30e 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base/
+- ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha6
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 3a6f8907..f5678297 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base/
+- ../../base/
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server 
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
<h3>1: Development changes from 1257b394 to 0fe1e3e4 on Wed Sep 18 18:18:30 2024 </h3>  
 
<details> 
<summary>Git Diff (1831 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/default/kustomization.yaml b/components/workspaces/base/operator/config/default/kustomization.yaml
index 32bd602f..e55106c2 100644
--- a/components/workspaces/base/operator/config/default/kustomization.yaml
+++ b/components/workspaces/base/operator/config/default/kustomization.yaml
@@ -6,5 +6,41 @@ resources:
 - ../crd
 - ../rbac
 - ../manager
+- ../metrics
 patches:
 - path: manager_auth_proxy_patch.yaml
+replacements:
+- source:
+    fieldPath: metadata.name
+    kind: Secret
+    name: metrics-reader
+  targets:
+  - fieldPaths:
+    - spec.endpoints.*.authorization.credentials.name
+    select:
+      group: monitoring.coreos.com
+      kind: ServiceMonitor
+      name: metrics-proxy
+- source:
+    fieldPath: metadata.name
+    kind: ServiceAccount
+    name: metrics-reader
+  targets:
+  - fieldPaths:
+    - metadata.annotations.[kubernetes.io/service-account.name]
+    select:
+      kind: Secret
+      name: metrics-reader
+    options:
+      create: true
+
+# We need to make the secrets containing the service account tokens before the
+# service monitor can start checking for metrics.  To ensure this, let's make
+# the service account and its secrets before anything else.
+sortOptions:
+  order: legacy
+  legacySortOptions:
+    orderFirst:
+    - Namespace
+    - ServiceAccount
+    - Secret
diff --git a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
index bc2f7500..d61b91a2 100644
--- a/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
+++ b/components/workspaces/base/operator/config/default/manager_auth_proxy_patch.yaml
@@ -23,32 +23,8 @@ spec:
                   values:
                     - linux
       containers:
-      - name: kube-rbac-proxy
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.1
-        args:
-        - "--secure-listen-address=0.0.0.0:8443"
-        - "--upstream=http://127.0.0.1:8080/"
-        - "--logtostderr=true"
-        - "--v=0"
-        ports:
-        - containerPort: 8443
-          protocol: TCP
-          name: https
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
       - name: manager
         args:
         - "--health-probe-bind-address=:8081"
-        - "--metrics-bind-address=127.0.0.1:8080"
+        - "--metrics-bind-address=0.0.0.0:8080"
         - "--leader-elect"
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index 7ab93730..379711c5 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/staging/base/operator/config/metrics/kustomization.yaml b/components/workspaces/base/operator/config/metrics/kustomization.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/kustomization.yaml
rename to components/workspaces/base/operator/config/metrics/kustomization.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/metrics-service.yaml b/components/workspaces/base/operator/config/metrics/metrics-service.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/metrics-service.yaml
rename to components/workspaces/base/operator/config/metrics/metrics-service.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/monitor.yaml b/components/workspaces/base/operator/config/metrics/monitor.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/monitor.yaml
rename to components/workspaces/base/operator/config/metrics/monitor.yaml
diff --git a/components/workspaces/staging/base/operator/config/metrics/service-account.yaml b/components/workspaces/base/operator/config/metrics/service-account.yaml
similarity index 100%
rename from components/workspaces/staging/base/operator/config/metrics/service-account.yaml
rename to components/workspaces/base/operator/config/metrics/service-account.yaml
diff --git a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml b/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
deleted file mode 100644
index e624d7e2..00000000
--- a/components/workspaces/base/operator/config/rbac/auth_proxy_service.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: v1
-kind: Service
-metadata:
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: service
-    app.kubernetes.io/instance: controller-manager-metrics-service
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: controller-manager-metrics-service
-  namespace: system
-spec:
-  ports:
-  - name: https
-    port: 8443
-    protocol: TCP
-    targetPort: https
-  selector:
-    control-plane: controller-manager
diff --git a/components/workspaces/base/operator/config/rbac/kustomization.yaml b/components/workspaces/base/operator/config/rbac/kustomization.yaml
index fb5a2b88..23ef9e87 100644
--- a/components/workspaces/base/operator/config/rbac/kustomization.yaml
+++ b/components/workspaces/base/operator/config/rbac/kustomization.yaml
@@ -12,7 +12,6 @@ resources:
 # Comment the following 4 lines if you want to disable
 # the auth proxy (https://github.com/brancz/kube-rbac-proxy)
 # which protects your /metrics endpoint.
-# - auth_proxy_service.yaml
-# - auth_proxy_role.yaml
-# - auth_proxy_role_binding.yaml
-# - auth_proxy_client_clusterrole.yaml
+- auth_proxy_role.yaml
+- auth_proxy_role_binding.yaml
+- auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
index a589096c..d61459b2 100644
--- a/components/workspaces/base/operator/config/rbac/role.yaml
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -52,6 +52,14 @@ rules:
   - patch
   - update
   - watch
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - toolchainstatuses
+  verbs:
+  - get
+  - list
+  - watch
 - apiGroups:
   - toolchain.dev.openshift.com
   resources:
diff --git a/components/workspaces/base/server/config/server/deployment.yaml b/components/workspaces/base/server/config/server/deployment.yaml
index d0e3d69f..16811f2c 100644
--- a/components/workspaces/base/server/config/server/deployment.yaml
+++ b/components/workspaces/base/server/config/server/deployment.yaml
@@ -18,7 +18,7 @@ spec:
       securityContext:
         runAsNonRoot: true
       containers:
-      - image: traefik:v2.11.0
+      - image: traefik:v3.1.2
         name: proxy
         imagePullPolicy: IfNotPresent
         volumeMounts:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 59590c6c..4b038ccf 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index 42eae999..236c75a9 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -5,9 +5,9 @@ resources:
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 1d59ebf8..078c3cb5 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 1d59ebf8..078c3cb5 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha5
+  newTag: v0.1.0-alpha6
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/staging/base/kustomization.yaml b/components/workspaces/staging/base/kustomization.yaml
deleted file mode 100644
index 4b3440f0..00000000
--- a/components/workspaces/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- operator/config/default
-- server/config/default
diff --git a/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml b/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
deleted file mode 100644
index 9d719269..00000000
--- a/components/workspaces/staging/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
+++ /dev/null
@@ -1,173 +0,0 @@
----
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    controller-gen.kubebuilder.io/version: v0.14.0
-  name: internalworkspaces.workspaces.konflux-ci.dev
-spec:
-  group: workspaces.konflux-ci.dev
-  names:
-    kind: InternalWorkspace
-    listKind: InternalWorkspaceList
-    plural: internalworkspaces
-    singular: internalworkspace
-  scope: Namespaced
-  versions:
-  - additionalPrinterColumns:
-    - jsonPath: .spec.visibility
-      name: Visibility
-      type: string
-    name: v1alpha1
-    schema:
-      openAPIV3Schema:
-        description: InternalWorkspace is the Schema for the workspaces API
-        properties:
-          apiVersion:
-            description: |-
-              APIVersion defines the versioned schema of this representation of an object.
-              Servers should convert recognized schemas to the latest internal value, and
-              may reject unrecognized values.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
-            type: string
-          kind:
-            description: |-
-              Kind is a string value representing the REST resource this object represents.
-              Servers may infer this from the endpoint the client submits requests to.
-              Cannot be updated.
-              In CamelCase.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
-            type: string
-          metadata:
-            type: object
-          spec:
-            description: InternalWorkspaceSpec defines the desired state of Workspace
-            properties:
-              displayName:
-                type: string
-              owner:
-                description: UserInfo contains information about a user identity
-                properties:
-                  jwtInfo:
-                    description: JwtInfo contains information extracted from the user
-                      JWT Token
-                    properties:
-                      email:
-                        type: string
-                      sub:
-                        type: string
-                      userId:
-                        type: string
-                    required:
-                    - email
-                    - sub
-                    - userId
-                    type: object
-                required:
-                - jwtInfo
-                type: object
-              visibility:
-                enum:
-                - community
-                - private
-                type: string
-            required:
-            - displayName
-            - owner
-            - visibility
-            type: object
-          status:
-            description: InternalWorkspaceStatus defines the observed state of Workspace
-            properties:
-              conditions:
-                items:
-                  description: "Condition contains details for one aspect of the current
-                    state of this API Resource.\n---\nThis struct is intended for
-                    direct use as an array at the field path .status.conditions.  For
-                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
-                    observations of a foo's current state.\n\t    // Known .status.conditions.type
-                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
-                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
-                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
-                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
-                    \   // other fields\n\t}"
-                  properties:
-                    lastTransitionTime:
-                      description: |-
-                        lastTransitionTime is the last time the condition transitioned from one status to another.
-                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
-                      format: date-time
-                      type: string
-                    message:
-                      description: |-
-                        message is a human readable message indicating details about the transition.
-                        This may be an empty string.
-                      maxLength: 32768
-                      type: string
-                    observedGeneration:
-                      description: |-
-                        observedGeneration represents the .metadata.generation that the condition was set based upon.
-                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
-                        with respect to the current state of the instance.
-                      format: int64
-                      minimum: 0
-                      type: integer
-                    reason:
-                      description: |-
-                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
-                        Producers of specific condition types may define expected values and meanings for this field,
-                        and whether the values are considered a guaranteed API.
-                        The value should be a CamelCase string.
-                        This field may not be empty.
-                      maxLength: 1024
-                      minLength: 1
-                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
-                      type: string
-                    status:
-                      description: status of the condition, one of True, False, Unknown.
-                      enum:
-                      - "True"
-                      - "False"
-                      - Unknown
-                      type: string
-                    type:
-                      description: |-
-                        type of condition in CamelCase or in foo.example.com/CamelCase.
-                        ---
-                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
-                        useful (see .node.status.conditions), the ability to deconflict is important.
-                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
-                      maxLength: 316
-                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
-                      type: string
-                  required:
-                  - lastTransitionTime
-                  - message
-                  - reason
-                  - status
-                  - type
-                  type: object
-                type: array
-              owner:
-                description: Owner contains information on the owner
-                properties:
-                  username:
-                    type: string
-                type: object
-              space:
-                description: Space contains information about the underlying Space
-                properties:
-                  isHome:
-                    type: boolean
-                  name:
-                    type: string
-                required:
-                - isHome
-                - name
-                type: object
-            type: object
-        type: object
-    served: true
-    storage: true
-    subresources:
-      status: {}
diff --git a/components/workspaces/staging/base/operator/config/crd/kustomization.yaml b/components/workspaces/staging/base/operator/config/crd/kustomization.yaml
deleted file mode 100644
index d65647e6..00000000
--- a/components/workspaces/staging/base/operator/config/crd/kustomization.yaml
+++ /dev/null
@@ -1,20 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
-#+kubebuilder:scaffold:crdkustomizeresource
-
-patches: []
-# [WEBHOOK] To enable webhook, uncomment all the sections with [WEBHOOK] prefix.
-# patches here are for enabling the conversion webhook for each CRD
-#- patches/webhook_in_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizewebhookpatch
-
-# [CERTMANAGER] To enable cert-manager, uncomment all the sections with [CERTMANAGER] prefix.
-# patches here are for enabling the CA injection for each CRD
-#- patches/cainjection_in_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizecainjectionpatch
-
-# the following config is for teaching kustomize how to do kustomization for CRDs.
-configurations:
-- kustomizeconfig.yaml
diff --git a/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml b/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml
deleted file mode 100644
index ec5c150a..00000000
--- a/components/workspaces/staging/base/operator/config/crd/kustomizeconfig.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# This file is for teaching kustomize how to substitute name and namespace reference in CRD
-nameReference:
-- kind: Service
-  version: v1
-  fieldSpecs:
-  - kind: CustomResourceDefinition
-    version: v1
-    group: apiextensions.k8s.io
-    path: spec/conversion/webhook/clientConfig/service/name
-
-namespace:
-- kind: CustomResourceDefinition
-  version: v1
-  group: apiextensions.k8s.io
-  path: spec/conversion/webhook/clientConfig/service/namespace
-  create: false
-
-varReference:
-- path: metadata/annotations
diff --git a/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml b/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
deleted file mode 100644
index 4e01dc55..00000000
--- a/components/workspaces/staging/base/operator/config/crd/patches/cainjection_in_workspaces.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-# The following patch adds a directive for certmanager to inject CA into the CRD
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    cert-manager.io/inject-ca-from: $(CERTIFICATE_NAMESPACE)/$(CERTIFICATE_NAME)
-  name: workspaces.workspaces.io
diff --git a/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml b/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml
deleted file mode 100644
index 7684f103..00000000
--- a/components/workspaces/staging/base/operator/config/crd/patches/webhook_in_workspaces.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-# The following patch enables a conversion webhook for the CRD
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  name: workspaces.workspaces.io
-spec:
-  conversion:
-    strategy: Webhook
-    webhook:
-      clientConfig:
-        service:
-          namespace: system
-          name: webhook-service
-          path: /convert
-      conversionReviewVersions:
-      - v1
diff --git a/components/workspaces/staging/base/operator/config/default/kustomization.yaml b/components/workspaces/staging/base/operator/config/default/kustomization.yaml
deleted file mode 100644
index e55106c2..00000000
--- a/components/workspaces/staging/base/operator/config/default/kustomization.yaml
+++ /dev/null
@@ -1,46 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-namespace: workspaces-system
-namePrefix: workspaces-
-resources:
-- ../crd
-- ../rbac
-- ../manager
-- ../metrics
-patches:
-- path: manager_auth_proxy_patch.yaml
-replacements:
-- source:
-    fieldPath: metadata.name
-    kind: Secret
-    name: metrics-reader
-  targets:
-  - fieldPaths:
-    - spec.endpoints.*.authorization.credentials.name
-    select:
-      group: monitoring.coreos.com
-      kind: ServiceMonitor
-      name: metrics-proxy
-- source:
-    fieldPath: metadata.name
-    kind: ServiceAccount
-    name: metrics-reader
-  targets:
-  - fieldPaths:
-    - metadata.annotations.[kubernetes.io/service-account.name]
-    select:
-      kind: Secret
-      name: metrics-reader
-    options:
-      create: true
-
-# We need to make the secrets containing the service account tokens before the
-# service monitor can start checking for metrics.  To ensure this, let's make
-# the service account and its secrets before anything else.
-sortOptions:
-  order: legacy
-  legacySortOptions:
-    orderFirst:
-    - Namespace
-    - ServiceAccount
-    - Secret
diff --git a/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml b/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml
deleted file mode 100644
index d61b91a2..00000000
--- a/components/workspaces/staging/base/operator/config/default/manager_auth_proxy_patch.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-spec:
-  template:
-    spec:
-      affinity:
-        nodeAffinity:
-          requiredDuringSchedulingIgnoredDuringExecution:
-            nodeSelectorTerms:
-              - matchExpressions:
-                - key: kubernetes.io/arch
-                  operator: In
-                  values:
-                    - amd64
-                    # - arm64
-                    # - ppc64le
-                    # - s390x
-                - key: kubernetes.io/os
-                  operator: In
-                  values:
-                    - linux
-      containers:
-      - name: manager
-        args:
-        - "--health-probe-bind-address=:8081"
-        - "--metrics-bind-address=0.0.0.0:8080"
-        - "--leader-elect"
diff --git a/components/workspaces/staging/base/operator/config/manager/kustomization.yaml b/components/workspaces/staging/base/operator/config/manager/kustomization.yaml
deleted file mode 100644
index 379711c5..00000000
--- a/components/workspaces/staging/base/operator/config/manager/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- manager.yaml
-images:
-- name: controller
-  newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha6
-configMapGenerator:
-- behavior: replace
-  literals:
-  - kubesaw.namespace=toolchain-host-operator
-  name: operator-config
diff --git a/components/workspaces/staging/base/operator/config/manager/manager.yaml b/components/workspaces/staging/base/operator/config/manager/manager.yaml
deleted file mode 100644
index 64845c39..00000000
--- a/components/workspaces/staging/base/operator/config/manager/manager.yaml
+++ /dev/null
@@ -1,104 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: namespace
-    app.kubernetes.io/instance: system
-    app.kubernetes.io/component: manager
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: system
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-  labels:
-    control-plane: controller-manager
-    app.kubernetes.io/name: deployment
-    app.kubernetes.io/instance: controller-manager
-    app.kubernetes.io/component: manager
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-spec:
-  selector:
-    matchLabels:
-      control-plane: controller-manager
-  replicas: 1
-  template:
-    metadata:
-      annotations:
-        kubectl.kubernetes.io/default-container: manager
-      labels:
-        control-plane: controller-manager
-    spec:
-      securityContext:
-        runAsNonRoot: true
-        # TODO(user): For common cases that do not require escalating privileges
-        # it is recommended to ensure that all your Pods/Containers are restrictive.
-        # More info: https://kubernetes.io/docs/concepts/security/pod-security-standards/#restricted
-        # Please uncomment the following code if your project does NOT have to work on old Kubernetes
-        # versions < 1.19 or on vendors versions which do NOT support this field by default (i.e. Openshift < 4.11 ).
-        # seccompProfile:
-        #   type: RuntimeDefault
-      containers:
-      - name: manager
-        command:
-        - /manager
-        args:
-        - "--leader-elect"
-        image: controller:latest
-        imagePullPolicy: IfNotPresent
-        env:
-        - name: KUBESAW_NAMESPACE
-          valueFrom:
-            configMapKeyRef:
-              name: workspaces-operator-config
-              key: kubesaw.namespace
-        - name: WORKSPACES_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        livenessProbe:
-          httpGet:
-            path: /healthz
-            port: 8081
-          initialDelaySeconds: 15
-          periodSeconds: 20
-        readinessProbe:
-          httpGet:
-            path: /readyz
-            port: 8081
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        # TODO(user): Configure the resources accordingly based on the project requirements.
-        # More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-        ports:
-        - containerPort: 8081
-          name: http
-      serviceAccountName: controller-manager
-      terminationGracePeriodSeconds: 10
----
-apiVersion: v1
-kind: ConfigMap
-metadata:
-  name: operator-config
-data:
-  kubesaw.namespace: toolchain-host-operator
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
deleted file mode 100644
index 1993ada2..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_client_clusterrole.yaml
+++ /dev/null
@@ -1,16 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrole
-    app.kubernetes.io/instance: metrics-reader
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: metrics-reader
-rules:
-- nonResourceURLs:
-  - "/metrics"
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml
deleted file mode 100644
index 606c8411..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrole
-    app.kubernetes.io/instance: proxy-role
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: proxy-role
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
diff --git a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml
deleted file mode 100644
index 729d0a19..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/auth_proxy_role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrolebinding
-    app.kubernetes.io/instance: proxy-rolebinding
-    app.kubernetes.io/component: kube-rbac-proxy
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: proxy-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: proxy-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml
deleted file mode 100644
index db391703..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_editor_role.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
-# permissions for end users to edit workspaces.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-  name: workspace-editor-role
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml
deleted file mode 100644
index c4733bd9..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/internalworkspace_viewer_role.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-# permissions for end users to view workspaces.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-  name: workspace-viewer-role
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
diff --git a/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml b/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml
deleted file mode 100644
index 23ef9e87..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-resources:
-# All RBAC will be applied under this service account in
-# the deployment namespace. You may comment out this resource
-# if your manager will use a service account that exists at
-# runtime. Be sure to update RoleBinding and ClusterRoleBinding
-# subjects if changing service account names.
-- service_account.yaml
-- role.yaml
-- role_binding.yaml
-- leader_election_role.yaml
-- leader_election_role_binding.yaml
-# Comment the following 4 lines if you want to disable
-# the auth proxy (https://github.com/brancz/kube-rbac-proxy)
-# which protects your /metrics endpoint.
-- auth_proxy_role.yaml
-- auth_proxy_role_binding.yaml
-- auth_proxy_client_clusterrole.yaml
diff --git a/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml b/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml
deleted file mode 100644
index b11092a1..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/leader_election_role.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-# permissions to do leader election.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    app.kubernetes.io/name: role
-    app.kubernetes.io/instance: leader-election-role
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: leader-election-role
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - configmaps
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - update
-  - patch
-  - delete
-- apiGroups:
-  - coordination.k8s.io
-  resources:
-  - leases
-  verbs:
-  - get
-  - list
-  - watch
-  - create
-  - update
-  - patch
-  - delete
-- apiGroups:
-  - ""
-  resources:
-  - events
-  verbs:
-  - create
-  - patch
diff --git a/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml
deleted file mode 100644
index 63d84233..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/leader_election_role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: rolebinding
-    app.kubernetes.io/instance: leader-election-rolebinding
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: leader-election-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: leader-election-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/role.yaml b/components/workspaces/staging/base/operator/config/rbac/role.yaml
deleted file mode 100644
index d61459b2..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/role.yaml
+++ /dev/null
@@ -1,97 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: manager-role
-rules:
-- apiGroups:
-  - rbac.authorization.k8s.io
-  resources:
-  - rolebindings
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - rbac.authorization.k8s.io
-  resources:
-  - roles
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spacebindings
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spaces
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - toolchainstatuses
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - usersignups
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - create
-  - delete
-  - deletecollection
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/finalizers
-  verbs:
-  - update
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces/status
-  verbs:
-  - get
-  - patch
-  - update
diff --git a/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml b/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml
deleted file mode 100644
index 21dbb96f..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/role_binding.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  labels:
-    app.kubernetes.io/name: clusterrolebinding
-    app.kubernetes.io/instance: manager-rolebinding
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: manager-rolebinding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: manager-role
-subjects:
-- kind: ServiceAccount
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/operator/config/rbac/service_account.yaml b/components/workspaces/staging/base/operator/config/rbac/service_account.yaml
deleted file mode 100644
index f1a705d4..00000000
--- a/components/workspaces/staging/base/operator/config/rbac/service_account.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  labels:
-    app.kubernetes.io/name: serviceaccount
-    app.kubernetes.io/instance: controller-manager
-    app.kubernetes.io/component: rbac
-    app.kubernetes.io/created-by: workspaces
-    app.kubernetes.io/part-of: workspaces
-    app.kubernetes.io/managed-by: kustomize
-  name: controller-manager
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml b/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
deleted file mode 100644
index 4a99e8a8..00000000
--- a/components/workspaces/staging/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
+++ /dev/null
@@ -1,147 +0,0 @@
----
-apiVersion: apiextensions.k8s.io/v1
-kind: CustomResourceDefinition
-metadata:
-  annotations:
-    controller-gen.kubebuilder.io/version: v0.14.0
-  name: workspaces.workspaces.konflux-ci.dev
-spec:
-  group: workspaces.konflux-ci.dev
-  names:
-    kind: Workspace
-    listKind: WorkspaceList
-    plural: workspaces
-    singular: workspace
-  scope: Namespaced
-  versions:
-  - additionalPrinterColumns:
-    - jsonPath: .spec.visibility
-      name: Visibility
-      type: string
-    name: v1alpha1
-    schema:
-      openAPIV3Schema:
-        description: Workspace is the Schema for the workspaces API
-        properties:
-          apiVersion:
-            description: |-
-              APIVersion defines the versioned schema of this representation of an object.
-              Servers should convert recognized schemas to the latest internal value, and
-              may reject unrecognized values.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
-            type: string
-          kind:
-            description: |-
-              Kind is a string value representing the REST resource this object represents.
-              Servers may infer this from the endpoint the client submits requests to.
-              Cannot be updated.
-              In CamelCase.
-              More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
-            type: string
-          metadata:
-            type: object
-          spec:
-            description: WorkspaceSpec defines the desired state of Workspace
-            properties:
-              visibility:
-                enum:
-                - community
-                - private
-                type: string
-            required:
-            - visibility
-            type: object
-          status:
-            description: WorkspaceStatus defines the observed state of Workspace
-            properties:
-              conditions:
-                items:
-                  description: "Condition contains details for one aspect of the current
-                    state of this API Resource.\n---\nThis struct is intended for
-                    direct use as an array at the field path .status.conditions.  For
-                    example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
-                    observations of a foo's current state.\n\t    // Known .status.conditions.type
-                    are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
-                    +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
-                    \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
-                    patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
-                    \   // other fields\n\t}"
-                  properties:
-                    lastTransitionTime:
-                      description: |-
-                        lastTransitionTime is the last time the condition transitioned from one status to another.
-                        This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
-                      format: date-time
-                      type: string
-                    message:
-                      description: |-
-                        message is a human readable message indicating details about the transition.
-                        This may be an empty string.
-                      maxLength: 32768
-                      type: string
-                    observedGeneration:
-                      description: |-
-                        observedGeneration represents the .metadata.generation that the condition was set based upon.
-                        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
-                        with respect to the current state of the instance.
-                      format: int64
-                      minimum: 0
-                      type: integer
-                    reason:
-                      description: |-
-                        reason contains a programmatic identifier indicating the reason for the condition's last transition.
-                        Producers of specific condition types may define expected values and meanings for this field,
-                        and whether the values are considered a guaranteed API.
-                        The value should be a CamelCase string.
-                        This field may not be empty.
-                      maxLength: 1024
-                      minLength: 1
-                      pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
-                      type: string
-                    status:
-                      description: status of the condition, one of True, False, Unknown.
-                      enum:
-                      - "True"
-                      - "False"
-                      - Unknown
-                      type: string
-                    type:
-                      description: |-
-                        type of condition in CamelCase or in foo.example.com/CamelCase.
-                        ---
-                        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
-                        useful (see .node.status.conditions), the ability to deconflict is important.
-                        The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
-                      maxLength: 316
-                      pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
-                      type: string
-                  required:
-                  - lastTransitionTime
-                  - message
-                  - reason
-                  - status
-                  - type
-                  type: object
-                type: array
-              owner:
-                description: UserInfoStatus User info stored in the status
-                properties:
-                  email:
-                    type: string
-                required:
-                - email
-                type: object
-              space:
-                description: SpaceInfo Information about a Space
-                properties:
-                  name:
-                    type: string
-                required:
-                - name
-                type: object
-            type: object
-        type: object
-    served: true
-    storage: true
-    subresources:
-      status: {}
diff --git a/components/workspaces/staging/base/server/config/crd/kustomization.yaml b/components/workspaces/staging/base/server/config/crd/kustomization.yaml
deleted file mode 100644
index 1cc95a86..00000000
--- a/components/workspaces/staging/base/server/config/crd/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-# This kustomization.yaml is not intended to be run by itself,
-# since it depends on service name and namespace that are out of this kustomize package.
-# It should be run by config/default
-resources:
-- bases/workspaces.konflux-ci.dev_workspaces.yaml
-#+kubebuilder:scaffold:crdkustomizeresource
-
diff --git a/components/workspaces/staging/base/server/config/default/kustomization.yaml b/components/workspaces/staging/base/server/config/default/kustomization.yaml
deleted file mode 100644
index 5e5a32e0..00000000
--- a/components/workspaces/staging/base/server/config/default/kustomization.yaml
+++ /dev/null
@@ -1,101 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../crd
-- ../rbac
-- ../server
-namePrefix: workspaces-
-
-  # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
-  # create Role and RoleBinding to read UserSignups into toolchain-host-operator
-  # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
-  # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
-replacements:
-- source:
-    fieldPath: data.[kubesaw.namespace]
-    kind: ConfigMap
-    name: rest-api-server-config
-    options:
-      create: true
-  targets:
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: Role
-      name: spacebinding-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-  - fieldPaths:
-    - metadata.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: Role
-      name: usersignup-reader
-- source:
-    fieldPath: metadata.namespace
-    kind: ServiceAccount
-    name: rest-api-server
-  targets:
-  - fieldPaths:
-    - subjects.0.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - subjects.0.namespace
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-- source:
-    fieldPath: metadata.name
-    kind: ServiceAccount
-    name: rest-api-server
-  targets:
-  - fieldPaths:
-    - subjects.0.name
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:spacebinding-reader
-  - fieldPaths:
-    - subjects.0.name
-    options:
-      create: true
-    select:
-      group: rbac.authorization.k8s.io
-      kind: RoleBinding
-      name: rest-api-server:usersignup-reader
-namespace: workspaces-system
-configMapGenerator:
-- behavior: replace
-  literals:
-  - log.level=0
-  - kubesaw.namespace=toolchain-host-operator
-  name: rest-api-server-config
diff --git a/components/workspaces/staging/base/server/config/rbac/kustomization.yaml b/components/workspaces/staging/base/server/config/rbac/kustomization.yaml
deleted file mode 100644
index 5f78348a..00000000
--- a/components/workspaces/staging/base/server/config/rbac/kustomization.yaml
+++ /dev/null
@@ -1,10 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- role_spacebinding_reader.yaml
-- role_usersignup_reader.yaml
-- role_workspace_server_editor.yaml
-- rolebinding_spacebinding_reader.yaml
-- rolebinding_usersignup_reader.yaml
-- rolebinding_workspace_server_editor.yaml
-- serviceaccount.yaml
diff --git a/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml b/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml
deleted file mode 100644
index e602e374..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_spacebinding_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: spacebinding-reader
-rules:
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - spacebindings
-  verbs:
-  - list
-  - get
-  - watch
diff --git a/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml b/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml
deleted file mode 100644
index 60eba82a..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_usersignup_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: usersignup-reader
-rules:
-- apiGroups:
-  - toolchain.dev.openshift.com
-  resources:
-  - usersignups
-  verbs:
-  - list
-  - get
-  - watch
diff --git a/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml
deleted file mode 100644
index 217aa852..00000000
--- a/components/workspaces/staging/base/server/config/rbac/role_workspace_server_editor.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: workspace-server-editor
-  namespace: system
-rules:
-- apiGroups:
-  - workspaces.konflux-ci.dev
-  resources:
-  - internalworkspaces
-  verbs:
-  - list
-  - get
-  - watch
-  - update
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
deleted file mode 100644
index 889c039f..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_spacebinding_reader.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:spacebinding-reader
-  namespace: system
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: spacebinding-reader
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml
deleted file mode 100644
index dd1ddf76..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_usersignup_reader.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:usersignup-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: usersignup-reader
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml b/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
deleted file mode 100644
index e9f2eae5..00000000
--- a/components/workspaces/staging/base/server/config/rbac/rolebinding_workspace_server_editor.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rest-api-server:workspace-server-editor
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: workspace-server-editor
-subjects:
-- kind: ServiceAccount
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml b/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml
deleted file mode 100644
index 3ea73e85..00000000
--- a/components/workspaces/staging/base/server/config/rbac/serviceaccount.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: rest-api-server
-  namespace: system
diff --git a/components/workspaces/staging/base/server/config/server/deployment.yaml b/components/workspaces/staging/base/server/config/server/deployment.yaml
deleted file mode 100644
index 16811f2c..00000000
--- a/components/workspaces/staging/base/server/config/server/deployment.yaml
+++ /dev/null
@@ -1,120 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  labels:
-    app: rest-api-server
-  name: rest-api-server
-  namespace: system
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app: rest-api-server
-  template:
-    metadata:
-      labels:
-        app: rest-api-server
-    spec:
-      securityContext:
-        runAsNonRoot: true
-      containers:
-      - image: traefik:v3.1.2
-        name: proxy
-        imagePullPolicy: IfNotPresent
-        volumeMounts:
-        - name: "traefik-static-config"
-          mountPath: "/etc/traefik"
-        - name: "traefik-dynamic-config"
-          mountPath: "/etc/traefik/dynamic"
-        - name: "traefik-plugin-storage"
-          mountPath: "/plugins-storage" 
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-      - image: workspaces/rest-api:latest
-        name: rest-api
-        imagePullPolicy: IfNotPresent
-        env:
-        - name: KUBESAW_NAMESPACE
-          valueFrom:
-            configMapKeyRef:
-              name: rest-api-server-config
-              key: kubesaw.namespace
-        - name: LOG_LEVEL
-          valueFrom:
-            configMapKeyRef:
-              name: rest-api-server-config
-              key: log.level
-        - name: WORKSPACES_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        securityContext:
-          allowPrivilegeEscalation: false
-          readOnlyRootFilesystem: true
-          capabilities:
-            drop:
-              - "ALL"
-        # livenessProbe:
-        #   httpGet:
-        #     path: /healthz
-        #     port: 8080
-        #   initialDelaySeconds: 15
-        #   periodSeconds: 20
-        # readinessProbe:
-        #   httpGet:
-        #     path: /readyz
-        #     port: 8081
-        #   initialDelaySeconds: 5
-        #   periodSeconds: 10
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 10m
-            memory: 64Mi
-        ports:
-          - containerPort: 8080
-            name: http
-      volumes:
-      - name: "traefik-plugin-storage"
-        emptyDir:
-          sizeLimit: 20Mi
-      - name: "traefik-static-config"
-        configMap:
-          name: "traefik-sidecar-static-config"
-      - name: "traefik-dynamic-config"
-        configMap:
-          name: "traefik-sidecar-dynamic-config"
-      serviceAccountName: rest-api-server
-      terminationGracePeriodSeconds: 60
----
-apiVersion: v1
-kind: ConfigMap
-metadata:
-  name: rest-api-server-config
-data:
-  kubesaw.namespace: system
----
-apiVersion: v1
-data: {}
-kind: ConfigMap
-metadata:
-  name: traefik-sidecar-static-config
----
-apiVersion: v1
-data: {}
-kind: ConfigMap
-metadata:
-  name: traefik-sidecar-dynamic-config
diff --git a/components/workspaces/staging/base/server/config/server/kustomization.yaml b/components/workspaces/staging/base/server/config/server/kustomization.yaml
deleted file mode 100644
index 4b038ccf..00000000
--- a/components/workspaces/staging/base/server/config/server/kustomization.yaml
+++ /dev/null
@@ -1,22 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- deployment.yaml
-- service.yaml
-configMapGenerator:
-- behavior: merge
-  files:
-  - traefik.yaml=./proxy-config/traefik.yaml
-  name: traefik-sidecar-static-config
-  options:
-    disableNameSuffixHash: true
-- behavior: merge
-  files:
-  - config.yaml=./proxy-config/dynamic/config.yaml
-  name: traefik-sidecar-dynamic-config
-  options:
-    disableNameSuffixHash: true
-images:
-- name: workspaces/rest-api
-  newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha6
diff --git a/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml
deleted file mode 100644
index fab2b210..00000000
--- a/components/workspaces/staging/base/server/config/server/proxy-config/dynamic/config.yaml
+++ /dev/null
@@ -1,31 +0,0 @@
-http:
-  services:
-    web:
-      loadBalancer:
-        servers:
-        - url: "http://localhost:8080/"
-  routers:
-    app-apis:
-      service: web
-      entrypoints:
-      - web
-      rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
-      middlewares:
-        - jwt-authorizer
-    app-healthz:
-      service: web
-      entrypoints:
-      - web
-      rule: Path(`/healthz`)
-
-# Middlewares
-  middlewares:
-
-# JWT Auth
-    jwt-authorizer:
-      plugin:
-        jwt:
-          required: true
-          keys: []
-          jwtHeaders:
-            X-Subject: sub
diff --git a/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml b/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml
deleted file mode 100644
index 25b22119..00000000
--- a/components/workspaces/staging/base/server/config/server/proxy-config/traefik.yaml
+++ /dev/null
@@ -1,32 +0,0 @@
-entryPoints:
-  web:
-    address: ":8000"
-  metrics:
-    address: ":8001"
-providers:
-  file:
-    directory: /etc/traefik/dynamic/
-    watch: true
-# Configure Logger
-log:
-  level: INFO
-  format: json
-# Print acess logs
-accessLog:
-  format: json
-# enable Prometheus metrics
-metrics:
-  prometheus:
-    entryPoint: metrics
-# enable Jaeger tracing
-# tracing:
-#   jaeger: {}
-experimental:
-  plugins:
-    jwt:
-      moduleName: github.com/traefik-plugins/traefik-jwt-plugin
-      version: v0.7.1
-authSources:
-  jwtSource:
-    jwt:
-      jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
diff --git a/components/workspaces/staging/base/server/config/server/service.yaml b/components/workspaces/staging/base/server/config/server/service.yaml
deleted file mode 100644
index 1399b7bc..00000000
--- a/components/workspaces/staging/base/server/config/server/service.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-kind: Service
-apiVersion: v1
-metadata:
-  name: rest-api-server
-  namespace: system
-  labels:
-    provider: workspaces
-    run: rest-api-server
-spec:
-  ports:
-  - protocol: TCP
-    port: 8000
-    targetPort: 8000
-  selector:
-    app: rest-api-server
-  type: ClusterIP
-  sessionAffinity: None
----
-kind: Service
-apiVersion: v1
-metadata:
-  name: rest-api-server-metrics
-  namespace: system
-  labels:
-    provider: workspaces
-    run: rest-api-server
-spec:
-  ports:
-  - protocol: TCP
-    port: 8001
-    targetPort: 8001
-  selector:
-    app: rest-api-server
-  type: ClusterIP
-  sessionAffinity: None
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index b267cf7c..84c4b30e 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base/
+- ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha6
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 3a6f8907..f5678297 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base/
+- ../../base/
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server 
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
<h3>2: Production changes from 5a8f2419 to 1257b394 on Wed Sep 18 16:01:01 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 83607291..72f609ce 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-5a8f2419/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71
./commit-5a8f2419/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5a8f2419 to 1257b394 on Wed Sep 18 16:01:01 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 83607291..72f609ce 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>2: Development changes from 5a8f2419 to 1257b394 on Wed Sep 18 16:01:01 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 83607291..72f609ce 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>3: Production changes from c0aea272 to 5a8f2419 on Wed Sep 18 14:57:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 2eec04e8..51a5bee5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index dfa3ef8c..57de23f2 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from c0aea272 to 5a8f2419 on Wed Sep 18 14:57:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 2eec04e8..51a5bee5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index dfa3ef8c..57de23f2 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c0aea272/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71 
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
<h3>3: Development changes from c0aea272 to 5a8f2419 on Wed Sep 18 14:57:46 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 2eec04e8..51a5bee5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index dfa3ef8c..57de23f2 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=726d465ca7c49ecf94dc9dff6828617766fd3b71
+- https://github.com/konflux-ci/build-service/config/default?ref=0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 726d465ca7c49ecf94dc9dff6828617766fd3b71
+  newTag: 0a91b31555bb417bcdf0d2238eaa376f9d07013c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c0aea272/development/components/build-service/development/kustomize.out.yaml
547c547
<         image: quay.io/konflux-ci/build-service:0a91b31555bb417bcdf0d2238eaa376f9d07013c
---
>         image: quay.io/konflux-ci/build-service:726d465ca7c49ecf94dc9dff6828617766fd3b71 
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
<h3>4: Production changes from 8ca44887 to c0aea272 on Wed Sep 18 14:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 28360442..a77d7682 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
-    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9bd6c54b..7d31b046 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
-    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 64a698ca..49b25d32 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
-    custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://console.redhat.com/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7d070931..83e8d587 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0f6aea93..9c64a4fa 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index c3248029..669d31a9 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1620,10 +1620,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1692cfa3..dce10120 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2124,10 +2124,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index ad85dabd..96c9f491 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
+      registrationServiceURL: https://console.redhat.com/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
@@ -70,4 +70,4 @@ spec:
       memberStatus:
         gitHubSecret:
           ref: member-operator-secret
-          accessTokenKey: github.access.token
\ No newline at end of file
+          accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index b9638bfe..f8e84fe0 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -43,7 +43,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-8ca44887/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2131,2132c2131,2132
<           custom-console-url: https://console.redhat.com/application-pipeline
<           custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url: https://console.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
2134c2134
<           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
./commit-8ca44887/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2131,2132c2131,2132
<           custom-console-url: https://console.redhat.com/application-pipeline
<           custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url: https://console.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
2134c2134
<           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8ca44887 to c0aea272 on Wed Sep 18 14:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 28360442..a77d7682 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
-    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9bd6c54b..7d31b046 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
-    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 64a698ca..49b25d32 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
-    custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://console.redhat.com/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7d070931..83e8d587 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0f6aea93..9c64a4fa 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index c3248029..669d31a9 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1620,10 +1620,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1692cfa3..dce10120 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2124,10 +2124,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index ad85dabd..96c9f491 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
+      registrationServiceURL: https://console.redhat.com/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
@@ -70,4 +70,4 @@ spec:
       memberStatus:
         gitHubSecret:
           ref: member-operator-secret
-          accessTokenKey: github.access.token
\ No newline at end of file
+          accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index b9638bfe..f8e84fe0 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -43,7 +43,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-8ca44887/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2127,2128c2127,2128
<           custom-console-url: https://console.dev.redhat.com/application-pipeline
<           custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
2130c2130
<           custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
---
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ 
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
<h3>4: Development changes from 8ca44887 to c0aea272 on Wed Sep 18 14:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 28360442..a77d7682 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
-    - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9bd6c54b..7d31b046 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -15,8 +15,8 @@ configMapGenerator:
 - name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
-    - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
   literals:
     - PIPELINE_TIMEOUT="6h"
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 64a698ca..49b25d32 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -4,6 +4,6 @@
   value:
     application-name: Red Hat Konflux
     custom-console-name: Red Hat Konflux
-    custom-console-url: https://console.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url: https://console.redhat.com/application-pipeline
+    custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7d070931..83e8d587 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0f6aea93..9c64a4fa 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2128,10 +2128,10 @@ spec:
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
-          custom-console-url: https://console.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index c3248029..669d31a9 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1620,10 +1620,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1692cfa3..dce10120 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2124,10 +2124,10 @@ spec:
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url: https://console.dev.redhat.com/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index ad85dabd..96c9f491 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
+      registrationServiceURL: https://console.redhat.com/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
@@ -70,4 +70,4 @@ spec:
       memberStatus:
         gitHubSecret:
           ref: member-operator-secret
-          accessTokenKey: github.access.token
\ No newline at end of file
+          accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index b9638bfe..f8e84fe0 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -43,7 +43,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
