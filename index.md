# kustomize changes tracked by commits 
### This file generated at Mon Nov 25 12:07:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from eebcbd6c to d8033565 on Mon Nov 25 12:00:54 2024 </h3>  
 
<details> 
<summary>Git Diff (1063 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/README b/argo-cd-apps/base/member/infra-deployments/konflux-ui/README
new file mode 100644
index 00000000..33918f24
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/README
@@ -0,0 +1 @@
+The new UI for Konflux. It will replace the ui ArgoCD app in the future.
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
new file mode 100644
index 00000000..a308ef33
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/konflux-ui
+                environment: staging
+                # This app must have cluster specific configurations
+                clusterDir: does-not-exist
+          - list:
+              elements:
+                - nameNormalized: stone-stg-rh01
+                  values.clusterDir: stone-stg-rh01
+  template:
+    metadata:
+      name: konflux-ui-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-ui
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
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml
new file mode 100644
index 00000000..fc85fb1f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- konflux-ui.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e602a10d..0670efb0 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -26,5 +26,6 @@ resources:
   - proactive-scaler
   - knative-eventing
   - crossplane-control-plane
+  - konflux-ui
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index c8cf77ae..e32dc4fa 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -100,3 +100,9 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 281da6e7..d25bff5e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -33,3 +33,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index dbee992c..bbf7c2fe 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -57,3 +57,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 983e6b78..92920e9d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -50,3 +50,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/components/konflux-ui/base/ns.yaml b/components/konflux-ui/base/ns.yaml
new file mode 100644
index 00000000..5ca5a63a
--- /dev/null
+++ b/components/konflux-ui/base/ns.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: konflux-ui
diff --git a/components/konflux-ui/staging/base/dex/dex.yaml b/components/konflux-ui/staging/base/dex/dex.yaml
new file mode 100644
index 00000000..49371c8e
--- /dev/null
+++ b/components/konflux-ui/staging/base/dex/dex.yaml
@@ -0,0 +1,126 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: dex
+  name: dex
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: dex
+  template:
+    metadata:
+      labels:
+        app: dex
+    spec:
+      serviceAccountName: dex
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: dex
+      containers:
+      - image: ghcr.io/dexidp/dex:v2.32.0
+        name: dex
+        command: ["/usr/local/bin/dex", "serve", "/etc/dex/cfg/config.yaml"]
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 100m
+            memory: 256Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi
+        ports:
+        - name: https
+          containerPort: 9443
+        - name: telemetry
+          containerPort: 5558
+          protocol: TCP
+        volumeMounts:
+        - name: dex
+          mountPath: /etc/dex/cfg
+        - name: tls
+          mountPath: /etc/dex/tls
+        readinessProbe:
+          httpGet:
+            path: /healthz/ready
+            port: telemetry
+        env:
+        - name: OPENSHIFT_OAUTH_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: dex-client
+              key: token
+        - name: OAUTH2_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-client-secret
+              key: client-secret
+      volumes:
+      - name: dex
+        configMap:
+          name: dex
+          defaultMode: 420
+          items:
+          - key: dex-config.yaml
+            path: config.yaml
+      - name: tls
+        secret:
+          secretName: dex-cert
+---
+apiVersion: v1
+kind: Service
+metadata:
+  name: dex
+  annotations:
+    service.beta.openshift.io/serving-cert-secret-name: dex-cert
+spec:
+  type: ClusterIP
+  ports:
+  - name: dex
+    port: 9443
+    protocol: TCP
+    targetPort: 9443
+  selector:
+    app: dex
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  labels:
+    app: dex
+  name: dex
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: dex
+rules:
+- apiGroups: ["dex.coreos.com"] # API group created by dex
+  resources: ["*"]
+  verbs: ["*"]
+- apiGroups: ["apiextensions.k8s.io"]
+  resources: ["customresourcedefinitions"]
+  verbs: ["create"] # To manage its own resources, dex must be able to create customresourcedefinitions
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: dex
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: dex
+subjects:
+- kind: ServiceAccount
+  name: dex           # Service account assigned to the dex pod, created above
+  namespace: konflux-ui  # The namespace dex is running in
diff --git a/components/konflux-ui/staging/base/dex/kustomization.yaml b/components/konflux-ui/staging/base/dex/kustomization.yaml
new file mode 100644
index 00000000..32291d23
--- /dev/null
+++ b/components/konflux-ui/staging/base/dex/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dex.yaml
diff --git a/components/konflux-ui/staging/base/kustomization.yaml b/components/konflux-ui/staging/base/kustomization.yaml
new file mode 100644
index 00000000..b3770aab
--- /dev/null
+++ b/components/konflux-ui/staging/base/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dex
+  - proxy
+  - route-and-oauth.yaml
+
+images:
+  - name: quay.io/konflux-ci/workspace-manager
+    digest: sha256:0b32c063d9fbce1af4f851d7cf1f8bc0ad1eda06dafaa4ad2bd4a0d5fbba62c7
+
+  - name: quay.io/konflux-ci/konflux-ui
+    digest: sha256:4d638ff6ed4874de0406b200e671ebac72b3f03c4d46b92f02bf62809c1cbed3
+
+namespace: konflux-ui
diff --git a/components/konflux-ui/staging/base/proxy/kustomization.yaml b/components/konflux-ui/staging/base/proxy/kustomization.yaml
new file mode 100644
index 00000000..526e2783
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/kustomization.yaml
@@ -0,0 +1,9 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - proxy.yaml
+
+configMapGenerator:
+  - name: proxy
+    files:
+      - nginx.conf
diff --git a/components/konflux-ui/staging/base/proxy/nginx.conf b/components/konflux-ui/staging/base/proxy/nginx.conf
new file mode 100644
index 00000000..2223cf23
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/nginx.conf
@@ -0,0 +1,169 @@
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
+    log_format upstreamlog '[$time_local] $remote_addr - $remote_user - $server_name $host to: $proxy_host  $upstream_addr: $request $status upstream_response_time $upstream_response_time msec $msec request_time $request_time X-Forwarded-Host: $http_x_forwarded_host';
+    access_log /dev/stderr upstreamlog;
+    error_log /dev/stderr;
+
+    sendfile on;
+    tcp_nopush on;
+    tcp_nodelay on;
+    keepalive_timeout 65;
+    types_hash_max_size 4096;
+
+    default_type application/octet-stream;
+
+    client_body_temp_path /var/run/openresty/nginx-client-body;
+    proxy_temp_path       /var/run/openresty/nginx-proxy;
+    fastcgi_temp_path     /var/run/openresty/nginx-fastcgi;
+    uwsgi_temp_path       /var/run/openresty/nginx-uwsgi;
+    scgi_temp_path        /var/run/openresty/nginx-scgi;
+
+    include /usr/local/openresty/nginx/conf/mime.types;
+
+    map $http_upgrade $connection_upgrade {
+        default upgrade;
+        '' close;
+    }
+
+    server {
+        listen 9443 ssl;
+        ssl_certificate /mnt/tls.crt;
+        ssl_certificate_key /mnt/tls.key;
+        server_name _;
+        root /opt/app-root/src;
+
+        location / {
+            alias /opt/app-root/src/static-content/;
+            try_files $uri /index.html;
+        }
+
+        location = /404.html {
+        }
+
+        location = /oauth2/auth {
+            internal; 
+            proxy_pass       http://127.0.0.1:6000;
+            proxy_set_header Host             $host;
+            proxy_set_header X-Real-IP        $remote_addr;
+            proxy_set_header X-Scheme         $scheme;
+            proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
+            # nginx auth_request includes headers but not body
+            proxy_set_header Content-Length   "";
+            proxy_pass_request_body           off;
+        }
+
+        location /oauth2/ {
+            proxy_pass       http://127.0.0.1:6000/oauth2/;
+            proxy_set_header Host             $host;
+            proxy_set_header X-Real-IP        $remote_addr;
+            proxy_set_header X-Scheme         $scheme;
+            proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
+        }
+
+        location /api/k8s/registration/ {
+           # Registration Service registration endpoint
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            proxy_set_header X-Email $email;
+            auth_request_set $user  $upstream_http_x_auth_request_user;
+            proxy_set_header X-User  $user;
+            auth_request_set $username  $upstream_http_x_auth_request_preferred_username; 
+            proxy_set_header X-Auth-Request-Preferred-Username $username;
+            auth_request_set $groups  $upstream_http_x_auth_request_groups;
+            proxy_set_header X-Auth-Request-Groups  $groups;    
+
+            auth_request /oauth2/auth;
+            proxy_pass http://127.0.0.1:5000/;
+        }
+
+        location /api/k8s/apis/toolchain.dev.openshift.com/v1alpha1/workspaces {
+           # Registration Service workspaces endpoint
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            proxy_set_header X-Email $email;
+            auth_request_set $user  $upstream_http_x_auth_request_user;
+            proxy_set_header X-User  $user;
+            auth_request_set $username  $upstream_http_x_auth_request_preferred_username; 
+            proxy_set_header X-Auth-Request-Preferred-Username $username;
+            auth_request_set $groups  $upstream_http_x_auth_request_groups;
+            proxy_set_header X-Auth-Request-Groups  $groups;
+
+            auth_request /oauth2/auth;
+            proxy_pass http://127.0.0.1:5000/workspaces;
+        }
+
+        location /api/k8s/workspaces/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /api/k8s/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://kubernetes.default.svc;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /wss/k8s/workspaces/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /wss/k8s/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://kubernetes.default.svc/;
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/websocket.conf;
+        }
+
+        location /api/k8s/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            proxy_pass https://kubernetes.default.svc/;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /wss/k8s/ {
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/websocket.conf;
+        }
+
+        location /api/k8s/plugins/tekton-results/workspaces/ {
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /api/k8s/plugins/tekton-results/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://tekton-results-api-service.tekton-results.svc.cluster.local:8080;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /health {
+            # Used for liveness probes
+            return 200;
+        }
+    }
+}
diff --git a/components/konflux-ui/staging/base/proxy/proxy.yaml b/components/konflux-ui/staging/base/proxy/proxy.yaml
new file mode 100644
index 00000000..0f61607d
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/proxy.yaml
@@ -0,0 +1,308 @@
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
+  replicas: 1
+  selector:
+    matchLabels:
+      app: proxy
+  minReadySeconds: 30
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 0
+  template:
+    metadata:
+      labels:
+        app: proxy
+    spec:
+      serviceAccountName: proxy
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: proxy
+      initContainers:
+      - name: copy-static-content
+        image: quay.io/konflux-ci/konflux-ui@sha256:4d638ff6ed4874de0406b200e671ebac72b3f03c4d46b92f02bf62809c1cbed3
+        command:
+          - cp
+          - -R
+          - /opt/app-root/src/.
+          - /mnt/static-content/
+        volumeMounts:
+        - name: static-content
+          mountPath: /mnt/static-content
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      - name: add-sva-token-to-nginx-config
+        image: registry.access.redhat.com/ubi9/ubi@sha256:66233eebd72bb5baa25190d4f55e1dc3fff3a9b77186c1f91a0abdb274452072
+        command:
+          - sh
+          - -c
+          - |
+            set -e
+            
+            token=$(cat /mnt/api-token/token)
+            token64=$(cat /mnt/api-token/token | base64 -w 0 | head -c-1)
+
+            echo "proxy_set_header Authorization \"Bearer $token\";" > /mnt/nginx-generated-config/bearer.conf
+
+            echo "proxy_set_header Sec-WebSocket-Protocol \"base64url.bearer.authorization.k8s.io.${token64}, base64.binary.k8s.io\";" > /mnt/nginx-generated-config/websocket.conf
+        volumeMounts:
+        - name: nginx-generated-config
+          mountPath: /mnt/nginx-generated-config
+        - name: api-token
+          mountPath: /mnt/api-token
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      containers:
+      - image: openresty/openresty:1.25.3.1-0-jammy
+        name: nginx-120
+        command: 
+          - "/usr/local/openresty/bin/openresty"
+          - "-g"
+          - "daemon off;"
+          - -c
+          - /etc/nginx/nginx.conf
+        livenessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 9443
+            scheme: HTTPS
+          initialDelaySeconds: 30
+          periodSeconds: 60
+          successThreshold: 1
+          timeoutSeconds: 1
+        readinessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 9443
+            scheme: HTTPS
+          initialDelaySeconds: 30
+          periodSeconds: 30
+          successThreshold: 1
+          timeoutSeconds: 1
+        ports:
+        - containerPort: 8080
+          name: web
+          protocol: TCP
+        - containerPort: 9443
+          name: web-tls
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
+          - name: logs
+            mountPath: /var/log/nginx
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
+          - name: serving-cert
+            mountPath: /mnt
+          - name: nginx-generated-config
+            mountPath: /mnt/nginx-generated-config
+          - name: openresty
+            mountPath: /var/run/openresty
+          - name: static-content
+            mountPath: /opt/app-root/src/static-content
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      - image: quay.io/konflux-ci/workspace-manager@sha256:6b7bfcf197cbff2ae9b1d84abd73636ce5733921524fb550438d8a8143a536b5
+        name: workspace-manager
+        ports:
+          - containerPort: 5000
+            name: web
+            protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      - image: quay.io/oauth2-proxy/oauth2-proxy@sha256:3da33b9670c67bd782277f99acadf7026f75b9507bfba2088eb2d497266ef7fc
+        name: oauth2-proxy
+        env:
+        - name: OAUTH2_PROXY_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-client-secret
+              key: client-secret
+        - name: OAUTH2_PROXY_COOKIE_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-cookie-secret
+              key: cookie-secret
+        args:
+          - to be replaced by a patch
+        ports:
+          - containerPort: 6000
+            name: web
+            protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: proxy
+            items:
+              - key: nginx.conf
+                path: nginx.conf 
+          name: proxy
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
+        - name: run
+          emptyDir: {}
+        - name: serving-cert
+          secret:
+            secretName: serving-cert
+        - name: nginx-generated-config
+          emptyDir: {}
+        - name: api-token
+          secret:
+            secretName: proxy
+        - name: openresty
+          emptyDir: {}
+        - name: static-content
+          emptyDir: {}
+
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+spec:
+  type: ClusterIP
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - name: web
+      port: 8888
+      protocol: TCP
+      targetPort: web
+    - name: web-tls
+      port: 9443
+      protocol: TCP
+      targetPort: web-tls
+  selector:
+    app: proxy
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: proxy
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: proxy
+  annotations:
+    kubernetes.io/service-account.name: proxy
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: konflux-proxy
+rules:
+- apiGroups: [""]
+  resources: ["users"]
+  verbs: ["impersonate"]
+- apiGroups: ["authorization.k8s.io"]
+  resources: ["localsubjectaccessreviews"]
+  verbs: ["create"]
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: konflux-proxy
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: konflux-proxy
+subjects:
+- kind: ServiceAccount
+  name: proxy
+  namespace: konflux-ui
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: konflux-proxy-namespace-lister
+rules:
+- apiGroups: [""]
+  resources: ["namespaces"]
+  verbs: ["list", "get"]
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: konflux-proxy-namespace-lister
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: konflux-proxy-namespace-lister
+subjects:
+- kind: ServiceAccount
+  name: proxy
+  namespace: konflux-ui
diff --git a/components/konflux-ui/staging/base/route-and-oauth.yaml b/components/konflux-ui/staging/base/route-and-oauth.yaml
new file mode 100644
index 00000000..89ec448f
--- /dev/null
+++ b/components/konflux-ui/staging/base/route-and-oauth.yaml
@@ -0,0 +1,52 @@
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: konflux
+  annotations:
+    # Needed for running a local development env for the Konflux UI
+    haproxy.router.openshift.io/set-forwarded-headers: if-none
+spec:
+  host: tba
+  path: /
+  port:
+    targetPort: web-tls
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: proxy
+    weight: 100
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: konflux-idp
+spec:
+  host: tba
+  path: /idp
+  port:
+    targetPort: dex
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: dex
+    weight: 100
+---
+kind: ServiceAccount
+apiVersion: v1
+metadata:
+  name: dex-client
+  annotations:
+    serviceaccounts.openshift.io/oauth-redirecturi.konflux: tba
+---
+kind: Secret
+apiVersion: v1
+metadata:
+  name: dex-client
+  annotations:
+    kubernetes.io/service-account.name: dex-client
+type: kubernetes.io/service-account-token
diff --git a/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml
new file mode 100644
index 00000000..b636793b
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/service.beta.openshift.io~1serving-cert-secret-name
+  value: serving-cert
diff --git a/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml b/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml
new file mode 100644
index 00000000..0a61fd09
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml
@@ -0,0 +1,34 @@
+issuer: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp
+storage:
+  type: kubernetes
+  config:
+    inCluster: true
+web:
+  https: 0.0.0.0:9443
+  tlsCert: /etc/dex/tls/tls.crt
+  tlsKey: /etc/dex/tls/tls.key
+oauth2:
+  skipApprovalScreen: true
+staticClients:
+- id: oauth2-proxy
+  redirectURIs:
+  - https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth2/callback
+  # required for using dex from a UI instance run locally
+  - https://localhost:8080/oauth2/callback
+  name: 'oauth2-proxy'
+  secretEnv: 'OAUTH2_CLIENT_SECRET'
+
+telemetry:
+  http: 0.0.0.0:5558
+
+connectors:
+  - type: openshift
+    id: openshift
+    name: OpenShift
+    config:
+      # OpenShift API
+      issuer: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
+      # Credentials can be string literals or pulled from the environment.
+      clientID: system:serviceaccount:konflux-ui:dex-client
+      clientSecret: $OPENSHIFT_OAUTH_CLIENT_SECRET
+      redirectURI: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp/callback
diff --git a/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml b/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml
new file mode 100644
index 00000000..149cbc6c
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml
@@ -0,0 +1,44 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+
+configMapGenerator:
+  - name: dex
+    files:
+      - dex-config.yaml
+
+patches:
+  - path: add-service-certs-patch.yaml
+    target:
+      group: ""
+      version: v1
+      kind: Service
+      name: proxy
+  - path: oauth2-proxy-args-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+      name: proxy
+  - path: remove-run-as-user-proxy-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+      name: proxy
+  - path: set-replicas-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+  - path: set-redirect-uri.yaml
+    target:
+      name: dex-client
+      kind: ServiceAccount
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
+
+namespace: konflux-ui
diff --git a/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml
new file mode 100644
index 00000000..27f53739
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml
@@ -0,0 +1,35 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/2/args
+  value:
+    - --provider
+    - oidc
+    - --provider-display-name
+    - "Dex"
+    - --client-id
+    - oauth2-proxy
+    - --http-address
+    - "127.0.0.1:6000"
+  # We use relative redirect URI and the reverse-proxy flag to support 
+  # setting the host using the X-Forwarded-Host header. This is needed
+  # when running a UI instance locally that should connect to a remote
+  # cluster.
+    - --redirect-url
+    - /oauth2/callback
+    - --reverse-proxy
+    - "true"
+    - --oidc-issuer-url
+    - https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp
+    - "true"
+    - --cookie-name
+    - __Host-konflux-ci-cookie
+    - --email-domain
+    - "*"
+    - --insecure-oidc-allow-unverified-email
+    - "true"
+    - --set-xauthrequest
+    - "true"
+    - --whitelist-domain
+    - localhost:9443
+    - --whitelist-domain
+    - konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
diff --git a/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml
new file mode 100644
index 00000000..a8939cef
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml
@@ -0,0 +1,15 @@
+---
+- op: remove
+  path: /spec/template/spec/initContainers/0/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/initContainers/1/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/0/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/1/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/2/securityContext/runAsUser
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml
new file mode 100644
index 00000000..59753bcc
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml
new file mode 100644
index 00000000..e6ea9d25
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.konflux
+  value: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp/callback
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml
new file mode 100644
index 00000000..e044d9c7
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/replicas
+  value: 3 
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
<h3>1: Staging changes from eebcbd6c to d8033565 on Mon Nov 25 12:00:54 2024 </h3>  
 
<details> 
<summary>Git Diff (1063 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/README b/argo-cd-apps/base/member/infra-deployments/konflux-ui/README
new file mode 100644
index 00000000..33918f24
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/README
@@ -0,0 +1 @@
+The new UI for Konflux. It will replace the ui ArgoCD app in the future.
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
new file mode 100644
index 00000000..a308ef33
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/konflux-ui
+                environment: staging
+                # This app must have cluster specific configurations
+                clusterDir: does-not-exist
+          - list:
+              elements:
+                - nameNormalized: stone-stg-rh01
+                  values.clusterDir: stone-stg-rh01
+  template:
+    metadata:
+      name: konflux-ui-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-ui
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
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml
new file mode 100644
index 00000000..fc85fb1f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- konflux-ui.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e602a10d..0670efb0 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -26,5 +26,6 @@ resources:
   - proactive-scaler
   - knative-eventing
   - crossplane-control-plane
+  - konflux-ui
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index c8cf77ae..e32dc4fa 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -100,3 +100,9 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 281da6e7..d25bff5e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -33,3 +33,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index dbee992c..bbf7c2fe 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -57,3 +57,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 983e6b78..92920e9d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -50,3 +50,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/components/konflux-ui/base/ns.yaml b/components/konflux-ui/base/ns.yaml
new file mode 100644
index 00000000..5ca5a63a
--- /dev/null
+++ b/components/konflux-ui/base/ns.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: konflux-ui
diff --git a/components/konflux-ui/staging/base/dex/dex.yaml b/components/konflux-ui/staging/base/dex/dex.yaml
new file mode 100644
index 00000000..49371c8e
--- /dev/null
+++ b/components/konflux-ui/staging/base/dex/dex.yaml
@@ -0,0 +1,126 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: dex
+  name: dex
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: dex
+  template:
+    metadata:
+      labels:
+        app: dex
+    spec:
+      serviceAccountName: dex
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: dex
+      containers:
+      - image: ghcr.io/dexidp/dex:v2.32.0
+        name: dex
+        command: ["/usr/local/bin/dex", "serve", "/etc/dex/cfg/config.yaml"]
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 100m
+            memory: 256Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi
+        ports:
+        - name: https
+          containerPort: 9443
+        - name: telemetry
+          containerPort: 5558
+          protocol: TCP
+        volumeMounts:
+        - name: dex
+          mountPath: /etc/dex/cfg
+        - name: tls
+          mountPath: /etc/dex/tls
+        readinessProbe:
+          httpGet:
+            path: /healthz/ready
+            port: telemetry
+        env:
+        - name: OPENSHIFT_OAUTH_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: dex-client
+              key: token
+        - name: OAUTH2_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-client-secret
+              key: client-secret
+      volumes:
+      - name: dex
+        configMap:
+          name: dex
+          defaultMode: 420
+          items:
+          - key: dex-config.yaml
+            path: config.yaml
+      - name: tls
+        secret:
+          secretName: dex-cert
+---
+apiVersion: v1
+kind: Service
+metadata:
+  name: dex
+  annotations:
+    service.beta.openshift.io/serving-cert-secret-name: dex-cert
+spec:
+  type: ClusterIP
+  ports:
+  - name: dex
+    port: 9443
+    protocol: TCP
+    targetPort: 9443
+  selector:
+    app: dex
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  labels:
+    app: dex
+  name: dex
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: dex
+rules:
+- apiGroups: ["dex.coreos.com"] # API group created by dex
+  resources: ["*"]
+  verbs: ["*"]
+- apiGroups: ["apiextensions.k8s.io"]
+  resources: ["customresourcedefinitions"]
+  verbs: ["create"] # To manage its own resources, dex must be able to create customresourcedefinitions
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: dex
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: dex
+subjects:
+- kind: ServiceAccount
+  name: dex           # Service account assigned to the dex pod, created above
+  namespace: konflux-ui  # The namespace dex is running in
diff --git a/components/konflux-ui/staging/base/dex/kustomization.yaml b/components/konflux-ui/staging/base/dex/kustomization.yaml
new file mode 100644
index 00000000..32291d23
--- /dev/null
+++ b/components/konflux-ui/staging/base/dex/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dex.yaml
diff --git a/components/konflux-ui/staging/base/kustomization.yaml b/components/konflux-ui/staging/base/kustomization.yaml
new file mode 100644
index 00000000..b3770aab
--- /dev/null
+++ b/components/konflux-ui/staging/base/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dex
+  - proxy
+  - route-and-oauth.yaml
+
+images:
+  - name: quay.io/konflux-ci/workspace-manager
+    digest: sha256:0b32c063d9fbce1af4f851d7cf1f8bc0ad1eda06dafaa4ad2bd4a0d5fbba62c7
+
+  - name: quay.io/konflux-ci/konflux-ui
+    digest: sha256:4d638ff6ed4874de0406b200e671ebac72b3f03c4d46b92f02bf62809c1cbed3
+
+namespace: konflux-ui
diff --git a/components/konflux-ui/staging/base/proxy/kustomization.yaml b/components/konflux-ui/staging/base/proxy/kustomization.yaml
new file mode 100644
index 00000000..526e2783
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/kustomization.yaml
@@ -0,0 +1,9 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - proxy.yaml
+
+configMapGenerator:
+  - name: proxy
+    files:
+      - nginx.conf
diff --git a/components/konflux-ui/staging/base/proxy/nginx.conf b/components/konflux-ui/staging/base/proxy/nginx.conf
new file mode 100644
index 00000000..2223cf23
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/nginx.conf
@@ -0,0 +1,169 @@
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
+    log_format upstreamlog '[$time_local] $remote_addr - $remote_user - $server_name $host to: $proxy_host  $upstream_addr: $request $status upstream_response_time $upstream_response_time msec $msec request_time $request_time X-Forwarded-Host: $http_x_forwarded_host';
+    access_log /dev/stderr upstreamlog;
+    error_log /dev/stderr;
+
+    sendfile on;
+    tcp_nopush on;
+    tcp_nodelay on;
+    keepalive_timeout 65;
+    types_hash_max_size 4096;
+
+    default_type application/octet-stream;
+
+    client_body_temp_path /var/run/openresty/nginx-client-body;
+    proxy_temp_path       /var/run/openresty/nginx-proxy;
+    fastcgi_temp_path     /var/run/openresty/nginx-fastcgi;
+    uwsgi_temp_path       /var/run/openresty/nginx-uwsgi;
+    scgi_temp_path        /var/run/openresty/nginx-scgi;
+
+    include /usr/local/openresty/nginx/conf/mime.types;
+
+    map $http_upgrade $connection_upgrade {
+        default upgrade;
+        '' close;
+    }
+
+    server {
+        listen 9443 ssl;
+        ssl_certificate /mnt/tls.crt;
+        ssl_certificate_key /mnt/tls.key;
+        server_name _;
+        root /opt/app-root/src;
+
+        location / {
+            alias /opt/app-root/src/static-content/;
+            try_files $uri /index.html;
+        }
+
+        location = /404.html {
+        }
+
+        location = /oauth2/auth {
+            internal; 
+            proxy_pass       http://127.0.0.1:6000;
+            proxy_set_header Host             $host;
+            proxy_set_header X-Real-IP        $remote_addr;
+            proxy_set_header X-Scheme         $scheme;
+            proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
+            # nginx auth_request includes headers but not body
+            proxy_set_header Content-Length   "";
+            proxy_pass_request_body           off;
+        }
+
+        location /oauth2/ {
+            proxy_pass       http://127.0.0.1:6000/oauth2/;
+            proxy_set_header Host             $host;
+            proxy_set_header X-Real-IP        $remote_addr;
+            proxy_set_header X-Scheme         $scheme;
+            proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
+        }
+
+        location /api/k8s/registration/ {
+           # Registration Service registration endpoint
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            proxy_set_header X-Email $email;
+            auth_request_set $user  $upstream_http_x_auth_request_user;
+            proxy_set_header X-User  $user;
+            auth_request_set $username  $upstream_http_x_auth_request_preferred_username; 
+            proxy_set_header X-Auth-Request-Preferred-Username $username;
+            auth_request_set $groups  $upstream_http_x_auth_request_groups;
+            proxy_set_header X-Auth-Request-Groups  $groups;    
+
+            auth_request /oauth2/auth;
+            proxy_pass http://127.0.0.1:5000/;
+        }
+
+        location /api/k8s/apis/toolchain.dev.openshift.com/v1alpha1/workspaces {
+           # Registration Service workspaces endpoint
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            proxy_set_header X-Email $email;
+            auth_request_set $user  $upstream_http_x_auth_request_user;
+            proxy_set_header X-User  $user;
+            auth_request_set $username  $upstream_http_x_auth_request_preferred_username; 
+            proxy_set_header X-Auth-Request-Preferred-Username $username;
+            auth_request_set $groups  $upstream_http_x_auth_request_groups;
+            proxy_set_header X-Auth-Request-Groups  $groups;
+
+            auth_request /oauth2/auth;
+            proxy_pass http://127.0.0.1:5000/workspaces;
+        }
+
+        location /api/k8s/workspaces/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /api/k8s/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://kubernetes.default.svc;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /wss/k8s/workspaces/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /wss/k8s/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://kubernetes.default.svc/;
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/websocket.conf;
+        }
+
+        location /api/k8s/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            proxy_pass https://kubernetes.default.svc/;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /wss/k8s/ {
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/websocket.conf;
+        }
+
+        location /api/k8s/plugins/tekton-results/workspaces/ {
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /api/k8s/plugins/tekton-results/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://tekton-results-api-service.tekton-results.svc.cluster.local:8080;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /health {
+            # Used for liveness probes
+            return 200;
+        }
+    }
+}
diff --git a/components/konflux-ui/staging/base/proxy/proxy.yaml b/components/konflux-ui/staging/base/proxy/proxy.yaml
new file mode 100644
index 00000000..0f61607d
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/proxy.yaml
@@ -0,0 +1,308 @@
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
+  replicas: 1
+  selector:
+    matchLabels:
+      app: proxy
+  minReadySeconds: 30
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 0
+  template:
+    metadata:
+      labels:
+        app: proxy
+    spec:
+      serviceAccountName: proxy
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: proxy
+      initContainers:
+      - name: copy-static-content
+        image: quay.io/konflux-ci/konflux-ui@sha256:4d638ff6ed4874de0406b200e671ebac72b3f03c4d46b92f02bf62809c1cbed3
+        command:
+          - cp
+          - -R
+          - /opt/app-root/src/.
+          - /mnt/static-content/
+        volumeMounts:
+        - name: static-content
+          mountPath: /mnt/static-content
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      - name: add-sva-token-to-nginx-config
+        image: registry.access.redhat.com/ubi9/ubi@sha256:66233eebd72bb5baa25190d4f55e1dc3fff3a9b77186c1f91a0abdb274452072
+        command:
+          - sh
+          - -c
+          - |
+            set -e
+            
+            token=$(cat /mnt/api-token/token)
+            token64=$(cat /mnt/api-token/token | base64 -w 0 | head -c-1)
+
+            echo "proxy_set_header Authorization \"Bearer $token\";" > /mnt/nginx-generated-config/bearer.conf
+
+            echo "proxy_set_header Sec-WebSocket-Protocol \"base64url.bearer.authorization.k8s.io.${token64}, base64.binary.k8s.io\";" > /mnt/nginx-generated-config/websocket.conf
+        volumeMounts:
+        - name: nginx-generated-config
+          mountPath: /mnt/nginx-generated-config
+        - name: api-token
+          mountPath: /mnt/api-token
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      containers:
+      - image: openresty/openresty:1.25.3.1-0-jammy
+        name: nginx-120
+        command: 
+          - "/usr/local/openresty/bin/openresty"
+          - "-g"
+          - "daemon off;"
+          - -c
+          - /etc/nginx/nginx.conf
+        livenessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 9443
+            scheme: HTTPS
+          initialDelaySeconds: 30
+          periodSeconds: 60
+          successThreshold: 1
+          timeoutSeconds: 1
+        readinessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 9443
+            scheme: HTTPS
+          initialDelaySeconds: 30
+          periodSeconds: 30
+          successThreshold: 1
+          timeoutSeconds: 1
+        ports:
+        - containerPort: 8080
+          name: web
+          protocol: TCP
+        - containerPort: 9443
+          name: web-tls
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
+          - name: logs
+            mountPath: /var/log/nginx
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
+          - name: serving-cert
+            mountPath: /mnt
+          - name: nginx-generated-config
+            mountPath: /mnt/nginx-generated-config
+          - name: openresty
+            mountPath: /var/run/openresty
+          - name: static-content
+            mountPath: /opt/app-root/src/static-content
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      - image: quay.io/konflux-ci/workspace-manager@sha256:6b7bfcf197cbff2ae9b1d84abd73636ce5733921524fb550438d8a8143a536b5
+        name: workspace-manager
+        ports:
+          - containerPort: 5000
+            name: web
+            protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      - image: quay.io/oauth2-proxy/oauth2-proxy@sha256:3da33b9670c67bd782277f99acadf7026f75b9507bfba2088eb2d497266ef7fc
+        name: oauth2-proxy
+        env:
+        - name: OAUTH2_PROXY_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-client-secret
+              key: client-secret
+        - name: OAUTH2_PROXY_COOKIE_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-cookie-secret
+              key: cookie-secret
+        args:
+          - to be replaced by a patch
+        ports:
+          - containerPort: 6000
+            name: web
+            protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: proxy
+            items:
+              - key: nginx.conf
+                path: nginx.conf 
+          name: proxy
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
+        - name: run
+          emptyDir: {}
+        - name: serving-cert
+          secret:
+            secretName: serving-cert
+        - name: nginx-generated-config
+          emptyDir: {}
+        - name: api-token
+          secret:
+            secretName: proxy
+        - name: openresty
+          emptyDir: {}
+        - name: static-content
+          emptyDir: {}
+
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+spec:
+  type: ClusterIP
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - name: web
+      port: 8888
+      protocol: TCP
+      targetPort: web
+    - name: web-tls
+      port: 9443
+      protocol: TCP
+      targetPort: web-tls
+  selector:
+    app: proxy
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: proxy
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: proxy
+  annotations:
+    kubernetes.io/service-account.name: proxy
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: konflux-proxy
+rules:
+- apiGroups: [""]
+  resources: ["users"]
+  verbs: ["impersonate"]
+- apiGroups: ["authorization.k8s.io"]
+  resources: ["localsubjectaccessreviews"]
+  verbs: ["create"]
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: konflux-proxy
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: konflux-proxy
+subjects:
+- kind: ServiceAccount
+  name: proxy
+  namespace: konflux-ui
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: konflux-proxy-namespace-lister
+rules:
+- apiGroups: [""]
+  resources: ["namespaces"]
+  verbs: ["list", "get"]
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: konflux-proxy-namespace-lister
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: konflux-proxy-namespace-lister
+subjects:
+- kind: ServiceAccount
+  name: proxy
+  namespace: konflux-ui
diff --git a/components/konflux-ui/staging/base/route-and-oauth.yaml b/components/konflux-ui/staging/base/route-and-oauth.yaml
new file mode 100644
index 00000000..89ec448f
--- /dev/null
+++ b/components/konflux-ui/staging/base/route-and-oauth.yaml
@@ -0,0 +1,52 @@
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: konflux
+  annotations:
+    # Needed for running a local development env for the Konflux UI
+    haproxy.router.openshift.io/set-forwarded-headers: if-none
+spec:
+  host: tba
+  path: /
+  port:
+    targetPort: web-tls
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: proxy
+    weight: 100
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: konflux-idp
+spec:
+  host: tba
+  path: /idp
+  port:
+    targetPort: dex
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: dex
+    weight: 100
+---
+kind: ServiceAccount
+apiVersion: v1
+metadata:
+  name: dex-client
+  annotations:
+    serviceaccounts.openshift.io/oauth-redirecturi.konflux: tba
+---
+kind: Secret
+apiVersion: v1
+metadata:
+  name: dex-client
+  annotations:
+    kubernetes.io/service-account.name: dex-client
+type: kubernetes.io/service-account-token
diff --git a/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml
new file mode 100644
index 00000000..b636793b
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/service.beta.openshift.io~1serving-cert-secret-name
+  value: serving-cert
diff --git a/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml b/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml
new file mode 100644
index 00000000..0a61fd09
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml
@@ -0,0 +1,34 @@
+issuer: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp
+storage:
+  type: kubernetes
+  config:
+    inCluster: true
+web:
+  https: 0.0.0.0:9443
+  tlsCert: /etc/dex/tls/tls.crt
+  tlsKey: /etc/dex/tls/tls.key
+oauth2:
+  skipApprovalScreen: true
+staticClients:
+- id: oauth2-proxy
+  redirectURIs:
+  - https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth2/callback
+  # required for using dex from a UI instance run locally
+  - https://localhost:8080/oauth2/callback
+  name: 'oauth2-proxy'
+  secretEnv: 'OAUTH2_CLIENT_SECRET'
+
+telemetry:
+  http: 0.0.0.0:5558
+
+connectors:
+  - type: openshift
+    id: openshift
+    name: OpenShift
+    config:
+      # OpenShift API
+      issuer: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
+      # Credentials can be string literals or pulled from the environment.
+      clientID: system:serviceaccount:konflux-ui:dex-client
+      clientSecret: $OPENSHIFT_OAUTH_CLIENT_SECRET
+      redirectURI: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp/callback
diff --git a/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml b/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml
new file mode 100644
index 00000000..149cbc6c
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml
@@ -0,0 +1,44 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+
+configMapGenerator:
+  - name: dex
+    files:
+      - dex-config.yaml
+
+patches:
+  - path: add-service-certs-patch.yaml
+    target:
+      group: ""
+      version: v1
+      kind: Service
+      name: proxy
+  - path: oauth2-proxy-args-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+      name: proxy
+  - path: remove-run-as-user-proxy-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+      name: proxy
+  - path: set-replicas-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+  - path: set-redirect-uri.yaml
+    target:
+      name: dex-client
+      kind: ServiceAccount
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
+
+namespace: konflux-ui
diff --git a/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml
new file mode 100644
index 00000000..27f53739
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml
@@ -0,0 +1,35 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/2/args
+  value:
+    - --provider
+    - oidc
+    - --provider-display-name
+    - "Dex"
+    - --client-id
+    - oauth2-proxy
+    - --http-address
+    - "127.0.0.1:6000"
+  # We use relative redirect URI and the reverse-proxy flag to support 
+  # setting the host using the X-Forwarded-Host header. This is needed
+  # when running a UI instance locally that should connect to a remote
+  # cluster.
+    - --redirect-url
+    - /oauth2/callback
+    - --reverse-proxy
+    - "true"
+    - --oidc-issuer-url
+    - https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp
+    - "true"
+    - --cookie-name
+    - __Host-konflux-ci-cookie
+    - --email-domain
+    - "*"
+    - --insecure-oidc-allow-unverified-email
+    - "true"
+    - --set-xauthrequest
+    - "true"
+    - --whitelist-domain
+    - localhost:9443
+    - --whitelist-domain
+    - konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
diff --git a/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml
new file mode 100644
index 00000000..a8939cef
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml
@@ -0,0 +1,15 @@
+---
+- op: remove
+  path: /spec/template/spec/initContainers/0/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/initContainers/1/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/0/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/1/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/2/securityContext/runAsUser
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml
new file mode 100644
index 00000000..59753bcc
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml
new file mode 100644
index 00000000..e6ea9d25
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.konflux
+  value: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp/callback
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml
new file mode 100644
index 00000000..e044d9c7
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/replicas
+  value: 3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-d8033565/staging/components: konflux-ui 
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
<h3>1: Development changes from eebcbd6c to d8033565 on Mon Nov 25 12:00:54 2024 </h3>  
 
<details> 
<summary>Git Diff (1063 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/README b/argo-cd-apps/base/member/infra-deployments/konflux-ui/README
new file mode 100644
index 00000000..33918f24
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/README
@@ -0,0 +1 @@
+The new UI for Konflux. It will replace the ui ArgoCD app in the future.
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
new file mode 100644
index 00000000..a308ef33
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/konflux-ui
+                environment: staging
+                # This app must have cluster specific configurations
+                clusterDir: does-not-exist
+          - list:
+              elements:
+                - nameNormalized: stone-stg-rh01
+                  values.clusterDir: stone-stg-rh01
+  template:
+    metadata:
+      name: konflux-ui-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: konflux-ui
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
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml
new file mode 100644
index 00000000..fc85fb1f
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- konflux-ui.yaml
+components:
+  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e602a10d..0670efb0 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -26,5 +26,6 @@ resources:
   - proactive-scaler
   - knative-eventing
   - crossplane-control-plane
+  - konflux-ui
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index c8cf77ae..e32dc4fa 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -100,3 +100,9 @@ kind: ApplicationSet
 metadata:
   name: nvme-storage-configurator
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 281da6e7..d25bff5e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -33,3 +33,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index dbee992c..bbf7c2fe 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -57,3 +57,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 983e6b78..92920e9d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -50,3 +50,9 @@ kind: ApplicationSet
 metadata:
   name: knative-eventing
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: konflux-ui
+$patch: delete
diff --git a/components/konflux-ui/base/ns.yaml b/components/konflux-ui/base/ns.yaml
new file mode 100644
index 00000000..5ca5a63a
--- /dev/null
+++ b/components/konflux-ui/base/ns.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: konflux-ui
diff --git a/components/konflux-ui/staging/base/dex/dex.yaml b/components/konflux-ui/staging/base/dex/dex.yaml
new file mode 100644
index 00000000..49371c8e
--- /dev/null
+++ b/components/konflux-ui/staging/base/dex/dex.yaml
@@ -0,0 +1,126 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  labels:
+    app: dex
+  name: dex
+  annotations:
+    ignore-check.kube-linter.io/no-anti-affinity: "Using topologySpreadConstraints"
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: dex
+  template:
+    metadata:
+      labels:
+        app: dex
+    spec:
+      serviceAccountName: dex
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: dex
+      containers:
+      - image: ghcr.io/dexidp/dex:v2.32.0
+        name: dex
+        command: ["/usr/local/bin/dex", "serve", "/etc/dex/cfg/config.yaml"]
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+        resources:
+          limits:
+            cpu: 100m
+            memory: 256Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi
+        ports:
+        - name: https
+          containerPort: 9443
+        - name: telemetry
+          containerPort: 5558
+          protocol: TCP
+        volumeMounts:
+        - name: dex
+          mountPath: /etc/dex/cfg
+        - name: tls
+          mountPath: /etc/dex/tls
+        readinessProbe:
+          httpGet:
+            path: /healthz/ready
+            port: telemetry
+        env:
+        - name: OPENSHIFT_OAUTH_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: dex-client
+              key: token
+        - name: OAUTH2_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-client-secret
+              key: client-secret
+      volumes:
+      - name: dex
+        configMap:
+          name: dex
+          defaultMode: 420
+          items:
+          - key: dex-config.yaml
+            path: config.yaml
+      - name: tls
+        secret:
+          secretName: dex-cert
+---
+apiVersion: v1
+kind: Service
+metadata:
+  name: dex
+  annotations:
+    service.beta.openshift.io/serving-cert-secret-name: dex-cert
+spec:
+  type: ClusterIP
+  ports:
+  - name: dex
+    port: 9443
+    protocol: TCP
+    targetPort: 9443
+  selector:
+    app: dex
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  labels:
+    app: dex
+  name: dex
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: dex
+rules:
+- apiGroups: ["dex.coreos.com"] # API group created by dex
+  resources: ["*"]
+  verbs: ["*"]
+- apiGroups: ["apiextensions.k8s.io"]
+  resources: ["customresourcedefinitions"]
+  verbs: ["create"] # To manage its own resources, dex must be able to create customresourcedefinitions
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: dex
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: dex
+subjects:
+- kind: ServiceAccount
+  name: dex           # Service account assigned to the dex pod, created above
+  namespace: konflux-ui  # The namespace dex is running in
diff --git a/components/konflux-ui/staging/base/dex/kustomization.yaml b/components/konflux-ui/staging/base/dex/kustomization.yaml
new file mode 100644
index 00000000..32291d23
--- /dev/null
+++ b/components/konflux-ui/staging/base/dex/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dex.yaml
diff --git a/components/konflux-ui/staging/base/kustomization.yaml b/components/konflux-ui/staging/base/kustomization.yaml
new file mode 100644
index 00000000..b3770aab
--- /dev/null
+++ b/components/konflux-ui/staging/base/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dex
+  - proxy
+  - route-and-oauth.yaml
+
+images:
+  - name: quay.io/konflux-ci/workspace-manager
+    digest: sha256:0b32c063d9fbce1af4f851d7cf1f8bc0ad1eda06dafaa4ad2bd4a0d5fbba62c7
+
+  - name: quay.io/konflux-ci/konflux-ui
+    digest: sha256:4d638ff6ed4874de0406b200e671ebac72b3f03c4d46b92f02bf62809c1cbed3
+
+namespace: konflux-ui
diff --git a/components/konflux-ui/staging/base/proxy/kustomization.yaml b/components/konflux-ui/staging/base/proxy/kustomization.yaml
new file mode 100644
index 00000000..526e2783
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/kustomization.yaml
@@ -0,0 +1,9 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - proxy.yaml
+
+configMapGenerator:
+  - name: proxy
+    files:
+      - nginx.conf
diff --git a/components/konflux-ui/staging/base/proxy/nginx.conf b/components/konflux-ui/staging/base/proxy/nginx.conf
new file mode 100644
index 00000000..2223cf23
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/nginx.conf
@@ -0,0 +1,169 @@
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
+    log_format upstreamlog '[$time_local] $remote_addr - $remote_user - $server_name $host to: $proxy_host  $upstream_addr: $request $status upstream_response_time $upstream_response_time msec $msec request_time $request_time X-Forwarded-Host: $http_x_forwarded_host';
+    access_log /dev/stderr upstreamlog;
+    error_log /dev/stderr;
+
+    sendfile on;
+    tcp_nopush on;
+    tcp_nodelay on;
+    keepalive_timeout 65;
+    types_hash_max_size 4096;
+
+    default_type application/octet-stream;
+
+    client_body_temp_path /var/run/openresty/nginx-client-body;
+    proxy_temp_path       /var/run/openresty/nginx-proxy;
+    fastcgi_temp_path     /var/run/openresty/nginx-fastcgi;
+    uwsgi_temp_path       /var/run/openresty/nginx-uwsgi;
+    scgi_temp_path        /var/run/openresty/nginx-scgi;
+
+    include /usr/local/openresty/nginx/conf/mime.types;
+
+    map $http_upgrade $connection_upgrade {
+        default upgrade;
+        '' close;
+    }
+
+    server {
+        listen 9443 ssl;
+        ssl_certificate /mnt/tls.crt;
+        ssl_certificate_key /mnt/tls.key;
+        server_name _;
+        root /opt/app-root/src;
+
+        location / {
+            alias /opt/app-root/src/static-content/;
+            try_files $uri /index.html;
+        }
+
+        location = /404.html {
+        }
+
+        location = /oauth2/auth {
+            internal; 
+            proxy_pass       http://127.0.0.1:6000;
+            proxy_set_header Host             $host;
+            proxy_set_header X-Real-IP        $remote_addr;
+            proxy_set_header X-Scheme         $scheme;
+            proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
+            # nginx auth_request includes headers but not body
+            proxy_set_header Content-Length   "";
+            proxy_pass_request_body           off;
+        }
+
+        location /oauth2/ {
+            proxy_pass       http://127.0.0.1:6000/oauth2/;
+            proxy_set_header Host             $host;
+            proxy_set_header X-Real-IP        $remote_addr;
+            proxy_set_header X-Scheme         $scheme;
+            proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
+        }
+
+        location /api/k8s/registration/ {
+           # Registration Service registration endpoint
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            proxy_set_header X-Email $email;
+            auth_request_set $user  $upstream_http_x_auth_request_user;
+            proxy_set_header X-User  $user;
+            auth_request_set $username  $upstream_http_x_auth_request_preferred_username; 
+            proxy_set_header X-Auth-Request-Preferred-Username $username;
+            auth_request_set $groups  $upstream_http_x_auth_request_groups;
+            proxy_set_header X-Auth-Request-Groups  $groups;    
+
+            auth_request /oauth2/auth;
+            proxy_pass http://127.0.0.1:5000/;
+        }
+
+        location /api/k8s/apis/toolchain.dev.openshift.com/v1alpha1/workspaces {
+           # Registration Service workspaces endpoint
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            proxy_set_header X-Email $email;
+            auth_request_set $user  $upstream_http_x_auth_request_user;
+            proxy_set_header X-User  $user;
+            auth_request_set $username  $upstream_http_x_auth_request_preferred_username; 
+            proxy_set_header X-Auth-Request-Preferred-Username $username;
+            auth_request_set $groups  $upstream_http_x_auth_request_groups;
+            proxy_set_header X-Auth-Request-Groups  $groups;
+
+            auth_request /oauth2/auth;
+            proxy_pass http://127.0.0.1:5000/workspaces;
+        }
+
+        location /api/k8s/workspaces/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /api/k8s/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://kubernetes.default.svc;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /wss/k8s/workspaces/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /wss/k8s/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://kubernetes.default.svc/;
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/websocket.conf;
+        }
+
+        location /api/k8s/ {
+            # Kube-API
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            proxy_pass https://kubernetes.default.svc/;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /wss/k8s/ {
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            proxy_http_version 1.1;
+            proxy_set_header Upgrade $http_upgrade;
+            proxy_set_header Connection $connection_upgrade;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/websocket.conf;
+        }
+
+        location /api/k8s/plugins/tekton-results/workspaces/ {
+            auth_request_set $email  $upstream_http_x_auth_request_email;
+            auth_request /oauth2/auth;
+
+            rewrite /api/k8s/plugins/tekton-results/workspaces/.+?/(.+) /$1 break;
+            proxy_pass https://tekton-results-api-service.tekton-results.svc.cluster.local:8080;
+            proxy_read_timeout 30m;
+            proxy_set_header Impersonate-User $email;
+            include /mnt/nginx-generated-config/bearer.conf;
+        }
+
+        location /health {
+            # Used for liveness probes
+            return 200;
+        }
+    }
+}
diff --git a/components/konflux-ui/staging/base/proxy/proxy.yaml b/components/konflux-ui/staging/base/proxy/proxy.yaml
new file mode 100644
index 00000000..0f61607d
--- /dev/null
+++ b/components/konflux-ui/staging/base/proxy/proxy.yaml
@@ -0,0 +1,308 @@
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
+  replicas: 1
+  selector:
+    matchLabels:
+      app: proxy
+  minReadySeconds: 30
+  strategy:
+    rollingUpdate:
+      maxSurge: 25%
+      maxUnavailable: 0
+  template:
+    metadata:
+      labels:
+        app: proxy
+    spec:
+      serviceAccountName: proxy
+      topologySpreadConstraints:
+      - maxSkew: 1
+        topologyKey: topology.kubernetes.io/zone
+        whenUnsatisfiable: ScheduleAnyway
+        labelSelector:
+          matchLabels:
+            app: proxy
+      initContainers:
+      - name: copy-static-content
+        image: quay.io/konflux-ci/konflux-ui@sha256:4d638ff6ed4874de0406b200e671ebac72b3f03c4d46b92f02bf62809c1cbed3
+        command:
+          - cp
+          - -R
+          - /opt/app-root/src/.
+          - /mnt/static-content/
+        volumeMounts:
+        - name: static-content
+          mountPath: /mnt/static-content
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      - name: add-sva-token-to-nginx-config
+        image: registry.access.redhat.com/ubi9/ubi@sha256:66233eebd72bb5baa25190d4f55e1dc3fff3a9b77186c1f91a0abdb274452072
+        command:
+          - sh
+          - -c
+          - |
+            set -e
+            
+            token=$(cat /mnt/api-token/token)
+            token64=$(cat /mnt/api-token/token | base64 -w 0 | head -c-1)
+
+            echo "proxy_set_header Authorization \"Bearer $token\";" > /mnt/nginx-generated-config/bearer.conf
+
+            echo "proxy_set_header Sec-WebSocket-Protocol \"base64url.bearer.authorization.k8s.io.${token64}, base64.binary.k8s.io\";" > /mnt/nginx-generated-config/websocket.conf
+        volumeMounts:
+        - name: nginx-generated-config
+          mountPath: /mnt/nginx-generated-config
+        - name: api-token
+          mountPath: /mnt/api-token
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+        resources:
+          limits:
+            cpu: 50m
+            memory: 128Mi
+          requests:
+            cpu: 10m
+            memory: 64Mi
+      containers:
+      - image: openresty/openresty:1.25.3.1-0-jammy
+        name: nginx-120
+        command: 
+          - "/usr/local/openresty/bin/openresty"
+          - "-g"
+          - "daemon off;"
+          - -c
+          - /etc/nginx/nginx.conf
+        livenessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 9443
+            scheme: HTTPS
+          initialDelaySeconds: 30
+          periodSeconds: 60
+          successThreshold: 1
+          timeoutSeconds: 1
+        readinessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 9443
+            scheme: HTTPS
+          initialDelaySeconds: 30
+          periodSeconds: 30
+          successThreshold: 1
+          timeoutSeconds: 1
+        ports:
+        - containerPort: 8080
+          name: web
+          protocol: TCP
+        - containerPort: 9443
+          name: web-tls
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
+          - name: logs
+            mountPath: /var/log/nginx
+          - name: nginx-tmp
+            mountPath: /var/lib/nginx/tmp
+          - name: run
+            mountPath: /run
+          - name: serving-cert
+            mountPath: /mnt
+          - name: nginx-generated-config
+            mountPath: /mnt/nginx-generated-config
+          - name: openresty
+            mountPath: /var/run/openresty
+          - name: static-content
+            mountPath: /opt/app-root/src/static-content
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      - image: quay.io/konflux-ci/workspace-manager@sha256:6b7bfcf197cbff2ae9b1d84abd73636ce5733921524fb550438d8a8143a536b5
+        name: workspace-manager
+        ports:
+          - containerPort: 5000
+            name: web
+            protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      - image: quay.io/oauth2-proxy/oauth2-proxy@sha256:3da33b9670c67bd782277f99acadf7026f75b9507bfba2088eb2d497266ef7fc
+        name: oauth2-proxy
+        env:
+        - name: OAUTH2_PROXY_CLIENT_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-client-secret
+              key: client-secret
+        - name: OAUTH2_PROXY_COOKIE_SECRET
+          valueFrom:
+            secretKeyRef:
+              name: oauth2-proxy-cookie-secret
+              key: cookie-secret
+        args:
+          - to be replaced by a patch
+        ports:
+          - containerPort: 6000
+            name: web
+            protocol: TCP
+        resources:
+          limits:
+            cpu: 300m
+            memory: 256Mi
+          requests:
+            cpu: 30m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          runAsUser: 1001
+      volumes:
+        - configMap:
+            defaultMode: 420
+            name: proxy
+            items:
+              - key: nginx.conf
+                path: nginx.conf 
+          name: proxy
+        - name: logs
+          emptyDir: {}
+        - name: nginx-tmp
+          emptyDir: {}
+        - name: run
+          emptyDir: {}
+        - name: serving-cert
+          secret:
+            secretName: serving-cert
+        - name: nginx-generated-config
+          emptyDir: {}
+        - name: api-token
+          secret:
+            secretName: proxy
+        - name: openresty
+          emptyDir: {}
+        - name: static-content
+          emptyDir: {}
+
+---
+apiVersion: v1
+kind: Service
+metadata:
+  labels:
+    app: proxy
+  name: proxy
+spec:
+  type: ClusterIP
+  internalTrafficPolicy: Cluster
+  ipFamilies:
+    - IPv4
+  ipFamilyPolicy: SingleStack
+  ports:
+    - name: web
+      port: 8888
+      protocol: TCP
+      targetPort: web
+    - name: web-tls
+      port: 9443
+      protocol: TCP
+      targetPort: web-tls
+  selector:
+    app: proxy
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: proxy
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: proxy
+  annotations:
+    kubernetes.io/service-account.name: proxy
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: konflux-proxy
+rules:
+- apiGroups: [""]
+  resources: ["users"]
+  verbs: ["impersonate"]
+- apiGroups: ["authorization.k8s.io"]
+  resources: ["localsubjectaccessreviews"]
+  verbs: ["create"]
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: konflux-proxy
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: konflux-proxy
+subjects:
+- kind: ServiceAccount
+  name: proxy
+  namespace: konflux-ui
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: konflux-proxy-namespace-lister
+rules:
+- apiGroups: [""]
+  resources: ["namespaces"]
+  verbs: ["list", "get"]
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: konflux-proxy-namespace-lister
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: konflux-proxy-namespace-lister
+subjects:
+- kind: ServiceAccount
+  name: proxy
+  namespace: konflux-ui
diff --git a/components/konflux-ui/staging/base/route-and-oauth.yaml b/components/konflux-ui/staging/base/route-and-oauth.yaml
new file mode 100644
index 00000000..89ec448f
--- /dev/null
+++ b/components/konflux-ui/staging/base/route-and-oauth.yaml
@@ -0,0 +1,52 @@
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: konflux
+  annotations:
+    # Needed for running a local development env for the Konflux UI
+    haproxy.router.openshift.io/set-forwarded-headers: if-none
+spec:
+  host: tba
+  path: /
+  port:
+    targetPort: web-tls
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: proxy
+    weight: 100
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  name: konflux-idp
+spec:
+  host: tba
+  path: /idp
+  port:
+    targetPort: dex
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: dex
+    weight: 100
+---
+kind: ServiceAccount
+apiVersion: v1
+metadata:
+  name: dex-client
+  annotations:
+    serviceaccounts.openshift.io/oauth-redirecturi.konflux: tba
+---
+kind: Secret
+apiVersion: v1
+metadata:
+  name: dex-client
+  annotations:
+    kubernetes.io/service-account.name: dex-client
+type: kubernetes.io/service-account-token
diff --git a/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml
new file mode 100644
index 00000000..b636793b
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/add-service-certs-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/service.beta.openshift.io~1serving-cert-secret-name
+  value: serving-cert
diff --git a/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml b/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml
new file mode 100644
index 00000000..0a61fd09
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/dex-config.yaml
@@ -0,0 +1,34 @@
+issuer: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp
+storage:
+  type: kubernetes
+  config:
+    inCluster: true
+web:
+  https: 0.0.0.0:9443
+  tlsCert: /etc/dex/tls/tls.crt
+  tlsKey: /etc/dex/tls/tls.key
+oauth2:
+  skipApprovalScreen: true
+staticClients:
+- id: oauth2-proxy
+  redirectURIs:
+  - https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth2/callback
+  # required for using dex from a UI instance run locally
+  - https://localhost:8080/oauth2/callback
+  name: 'oauth2-proxy'
+  secretEnv: 'OAUTH2_CLIENT_SECRET'
+
+telemetry:
+  http: 0.0.0.0:5558
+
+connectors:
+  - type: openshift
+    id: openshift
+    name: OpenShift
+    config:
+      # OpenShift API
+      issuer: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
+      # Credentials can be string literals or pulled from the environment.
+      clientID: system:serviceaccount:konflux-ui:dex-client
+      clientSecret: $OPENSHIFT_OAUTH_CLIENT_SECRET
+      redirectURI: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp/callback
diff --git a/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml b/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml
new file mode 100644
index 00000000..149cbc6c
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/kustomization.yaml
@@ -0,0 +1,44 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+
+configMapGenerator:
+  - name: dex
+    files:
+      - dex-config.yaml
+
+patches:
+  - path: add-service-certs-patch.yaml
+    target:
+      group: ""
+      version: v1
+      kind: Service
+      name: proxy
+  - path: oauth2-proxy-args-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+      name: proxy
+  - path: remove-run-as-user-proxy-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+      name: proxy
+  - path: set-replicas-patch.yaml
+    target:
+      group: apps
+      version: v1
+      kind: Deployment
+  - path: set-redirect-uri.yaml
+    target:
+      name: dex-client
+      kind: ServiceAccount
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
+
+namespace: konflux-ui
diff --git a/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml
new file mode 100644
index 00000000..27f53739
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/oauth2-proxy-args-patch.yaml
@@ -0,0 +1,35 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/2/args
+  value:
+    - --provider
+    - oidc
+    - --provider-display-name
+    - "Dex"
+    - --client-id
+    - oauth2-proxy
+    - --http-address
+    - "127.0.0.1:6000"
+  # We use relative redirect URI and the reverse-proxy flag to support 
+  # setting the host using the X-Forwarded-Host header. This is needed
+  # when running a UI instance locally that should connect to a remote
+  # cluster.
+    - --redirect-url
+    - /oauth2/callback
+    - --reverse-proxy
+    - "true"
+    - --oidc-issuer-url
+    - https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp
+    - "true"
+    - --cookie-name
+    - __Host-konflux-ci-cookie
+    - --email-domain
+    - "*"
+    - --insecure-oidc-allow-unverified-email
+    - "true"
+    - --set-xauthrequest
+    - "true"
+    - --whitelist-domain
+    - localhost:9443
+    - --whitelist-domain
+    - konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
diff --git a/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml
new file mode 100644
index 00000000..a8939cef
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/remove-run-as-user-proxy-patch.yaml
@@ -0,0 +1,15 @@
+---
+- op: remove
+  path: /spec/template/spec/initContainers/0/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/initContainers/1/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/0/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/1/securityContext/runAsUser
+
+- op: remove
+  path: /spec/template/spec/containers/2/securityContext/runAsUser
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml
new file mode 100644
index 00000000..59753bcc
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml
new file mode 100644
index 00000000..e6ea9d25
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.konflux
+  value: https://konflux-ui.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/idp/callback
diff --git a/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml b/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml
new file mode 100644
index 00000000..e044d9c7
--- /dev/null
+++ b/components/konflux-ui/staging/stone-stg-rh01/set-replicas-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/replicas
+  value: 3 
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
<h3>2: Production changes from 7430d323 to eebcbd6c on Mon Nov 25 11:02:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d2431b3c..e8dfa6de 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 67f16edc..04b46fa9 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 7430d323 to eebcbd6c on Mon Nov 25 11:02:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d2431b3c..e8dfa6de 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 67f16edc..04b46fa9 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-7430d323/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
---
>         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1513,1515c1513,1515
<             - --pr-snapshots-to-keep=70
<             - --non-pr-snapshots-to-keep=600
<             image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
---
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
>             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1530c1530
<   schedule: 0 */6 * * *
---
>   schedule: 0 5 * * * 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 7430d323 to eebcbd6c on Mon Nov 25 11:02:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d2431b3c..e8dfa6de 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 67f16edc..04b46fa9 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-7430d323/development/components/integration/development/kustomize.out.yaml
1422c1422
<         image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
---
>         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1511,1512c1511,1512
<             - --pr-snapshots-to-keep=70
<             - --non-pr-snapshots-to-keep=600
---
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
1516c1516
<             image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
---
>             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1531c1531
<   schedule: 0 */6 * * *
---
>   schedule: 0 5 * * * 
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
<h3>3: Production changes from ea384091 to 7430d323 on Mon Nov 25 08:59:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 35a45be1..071420df 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d5085ad39c83bdd59b5085a1ac03a49df63f935e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d5085ad39c83bdd59b5085a1ac03a49df63f935e
+- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d5085ad39c83bdd59b5085a1ac03a49df63f935e
+  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-ea384091/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
---
>         image: quay.io/redhat-appstudio/integration-service:d5085ad39c83bdd59b5085a1ac03a49df63f935e
1515c1515
<             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
---
>             image: quay.io/redhat-appstudio/integration-service:d5085ad39c83bdd59b5085a1ac03a49df63f935e
./commit-ea384091/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
---
>         image: quay.io/redhat-appstudio/integration-service:d5085ad39c83bdd59b5085a1ac03a49df63f935e
1515c1515
<             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
---
>             image: quay.io/redhat-appstudio/integration-service:d5085ad39c83bdd59b5085a1ac03a49df63f935e 
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
<h3>3: Staging changes from ea384091 to 7430d323 on Mon Nov 25 08:59:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 35a45be1..071420df 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d5085ad39c83bdd59b5085a1ac03a49df63f935e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d5085ad39c83bdd59b5085a1ac03a49df63f935e
+- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d5085ad39c83bdd59b5085a1ac03a49df63f935e
+  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from ea384091 to 7430d323 on Mon Nov 25 08:59:43 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 35a45be1..071420df 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d5085ad39c83bdd59b5085a1ac03a49df63f935e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d5085ad39c83bdd59b5085a1ac03a49df63f935e
+- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d5085ad39c83bdd59b5085a1ac03a49df63f935e
+  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d3e74a2b to ea384091 on Sun Nov 24 13:42:10 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index bbb4ac5d..c8cf77ae 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: proactive-scaler
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
index 60ecaad6..fa027390 100644
--- a/configs/nvme-storage-configurator/base/daemonset.yaml
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -14,11 +14,11 @@ spec:
         app: nvme-storage-configurator
     spec:
       nodeSelector:
-        konflux-ci.dev/storage: "nvme"
+        konflux-ci.dev/workload: "konflux-tenants"
       tolerations:
-        - key: konflux-ci.dev/storage
+        - key: konflux-ci.dev/workload
           operator: "Equal"
-          value: "nvme"
+          value: "konflux-tenants"
           effect: "NoSchedule"
       hostPID: true
       serviceAccount: nvme-storage-configurator
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index a9dc17db..f8de685d 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -16,7 +16,6 @@ spec:
     spec:
       nodeSelector:
         konflux-ci.dev/workload: konflux-tenants
-        node.kubernetes.io/instance-type: m6a.4xlarge
       tolerations:
         - key: konflux-ci.dev/workload
           operator: "Equal" 
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
<h3>4: Staging changes from d3e74a2b to ea384091 on Sun Nov 24 13:42:10 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index bbb4ac5d..c8cf77ae 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: proactive-scaler
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
index 60ecaad6..fa027390 100644
--- a/configs/nvme-storage-configurator/base/daemonset.yaml
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -14,11 +14,11 @@ spec:
         app: nvme-storage-configurator
     spec:
       nodeSelector:
-        konflux-ci.dev/storage: "nvme"
+        konflux-ci.dev/workload: "konflux-tenants"
       tolerations:
-        - key: konflux-ci.dev/storage
+        - key: konflux-ci.dev/workload
           operator: "Equal"
-          value: "nvme"
+          value: "konflux-tenants"
           effect: "NoSchedule"
       hostPID: true
       serviceAccount: nvme-storage-configurator
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index a9dc17db..f8de685d 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -16,7 +16,6 @@ spec:
     spec:
       nodeSelector:
         konflux-ci.dev/workload: konflux-tenants
-        node.kubernetes.io/instance-type: m6a.4xlarge
       tolerations:
         - key: konflux-ci.dev/workload
           operator: "Equal" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from d3e74a2b to ea384091 on Sun Nov 24 13:42:10 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index bbb4ac5d..c8cf77ae 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: proactive-scaler
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
index 60ecaad6..fa027390 100644
--- a/configs/nvme-storage-configurator/base/daemonset.yaml
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -14,11 +14,11 @@ spec:
         app: nvme-storage-configurator
     spec:
       nodeSelector:
-        konflux-ci.dev/storage: "nvme"
+        konflux-ci.dev/workload: "konflux-tenants"
       tolerations:
-        - key: konflux-ci.dev/storage
+        - key: konflux-ci.dev/workload
           operator: "Equal"
-          value: "nvme"
+          value: "konflux-tenants"
           effect: "NoSchedule"
       hostPID: true
       serviceAccount: nvme-storage-configurator
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index a9dc17db..f8de685d 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -16,7 +16,6 @@ spec:
     spec:
       nodeSelector:
         konflux-ci.dev/workload: konflux-tenants
-        node.kubernetes.io/instance-type: m6a.4xlarge
       tolerations:
         - key: konflux-ci.dev/workload
           operator: "Equal" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (47 lines)</summary>  

``` 
./commit-d3e74a2b/development/app-of-apps-development.yaml
1034a1035,1079
>   name: nvme-storage-configurator
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             environment: staging
>             sourceRoot: configs/nvme-storage-configurator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: nvme-storage-configurator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata: 
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
