# kustomize changes tracked by commits 
### This file generated at Tue Nov 26 00:10:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2d440c44 to c18a606c on Mon Nov 25 19:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (1183 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 74959d84..7f1e8080 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -14,7 +14,13 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/base/external-secrets.yaml
similarity index 100%
rename from components/multi-platform-controller/production-downstream/external-secrets.yaml
rename to components/multi-platform-controller/production-downstream/base/external-secrets.yaml
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
similarity index 90%
rename from components/multi-platform-controller/production-downstream/kustomization.yaml
rename to components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 843c60b0..1a0740d5 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -4,14 +4,13 @@ kind: Kustomization
 namespace: multi-platform-controller
 
 resources:
-- ../base/common
+- ../../base/common
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- host-config.yaml
 - external-secrets.yaml
 
 components:
-  - ../k-components/manager-resources
+  - ../../k-components/manager-resources
 
 images:
 - name: multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml
new file mode 100644
index 00000000..296d7fa5
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-aws-account
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml
new file mode 100644
index 00000000..764442f1
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
new file mode 100644
index 00000000..93efa46f
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -0,0 +1,527 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g6xlarge/amd64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x,\
+    linux/ppc64le,\
+    linux-large/ppc64le\
+    "
+  instance-tag: rhtap-prod
+
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
+  # cpu:memory (1:4)
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-arm64.max-instances: "100"
+  dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mlarge-arm64.max-instances: "100"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m6a.large
+  dynamic.linux-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-amd64.max-instances: "100"
+  dynamic.linux-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mlarge-amd64.max-instances: "100"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-root-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-root-arm64.max-instances: "100"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
+  dynamic.linux-root-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-root-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-root-amd64.max-instances: "100"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
+
+  ## IBM s390x with 2CPU 8GiB RAM ####
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
+
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.private-ip: "true"
+  dynamic.linux-large-s390x.allocation-timeout: "1800"
+
+  #PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
+
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.allocation-timeout: "1800"
+
+  # AWS GPU Nodes
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..5ca92f13
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml
+
+patches:
+- path: aws-account.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: aws-account
+- path: aws-ssh-key.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p01/host-config.yaml
similarity index 100%
rename from components/multi-platform-controller/production-downstream/host-config.yaml
rename to components/multi-platform-controller/production-downstream/stone-prod-p01/host-config.yaml
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..09d04d3b
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml
new file mode 100644
index 00000000..3a87203e
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml
@@ -0,0 +1,527 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g6xlarge/amd64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x,\
+    linux/ppc64le,\
+    linux-large/ppc64le\
+    "
+  instance-tag: rhtap-prod
+
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
+  # cpu:memory (1:4)
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.max-instances: "100"
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-arm64.max-instances: "100"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m6a.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.max-instances: "100"
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-amd64.max-instances: "100"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "100"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "100"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
+
+  ## IBM s390x with 2CPU 8GiB RAM ####
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
+
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.private-ip: "true"
+  dynamic.linux-large-s390x.allocation-timeout: "1800"
+
+  #PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
+
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.allocation-timeout: "1800"
+
+  # AWS GPU Nodes
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..09d04d3b
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml 
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
<h3>1: Staging changes from 2d440c44 to c18a606c on Mon Nov 25 19:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (1183 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 74959d84..7f1e8080 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -14,7 +14,13 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/base/external-secrets.yaml
similarity index 100%
rename from components/multi-platform-controller/production-downstream/external-secrets.yaml
rename to components/multi-platform-controller/production-downstream/base/external-secrets.yaml
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
similarity index 90%
rename from components/multi-platform-controller/production-downstream/kustomization.yaml
rename to components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 843c60b0..1a0740d5 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -4,14 +4,13 @@ kind: Kustomization
 namespace: multi-platform-controller
 
 resources:
-- ../base/common
+- ../../base/common
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- host-config.yaml
 - external-secrets.yaml
 
 components:
-  - ../k-components/manager-resources
+  - ../../k-components/manager-resources
 
 images:
 - name: multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml
new file mode 100644
index 00000000..296d7fa5
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-aws-account
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml
new file mode 100644
index 00000000..764442f1
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
new file mode 100644
index 00000000..93efa46f
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -0,0 +1,527 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g6xlarge/amd64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x,\
+    linux/ppc64le,\
+    linux-large/ppc64le\
+    "
+  instance-tag: rhtap-prod
+
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
+  # cpu:memory (1:4)
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-arm64.max-instances: "100"
+  dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mlarge-arm64.max-instances: "100"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m6a.large
+  dynamic.linux-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-amd64.max-instances: "100"
+  dynamic.linux-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mlarge-amd64.max-instances: "100"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-root-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-root-arm64.max-instances: "100"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
+  dynamic.linux-root-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-root-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-root-amd64.max-instances: "100"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
+
+  ## IBM s390x with 2CPU 8GiB RAM ####
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
+
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.private-ip: "true"
+  dynamic.linux-large-s390x.allocation-timeout: "1800"
+
+  #PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
+
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.allocation-timeout: "1800"
+
+  # AWS GPU Nodes
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..5ca92f13
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml
+
+patches:
+- path: aws-account.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: aws-account
+- path: aws-ssh-key.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p01/host-config.yaml
similarity index 100%
rename from components/multi-platform-controller/production-downstream/host-config.yaml
rename to components/multi-platform-controller/production-downstream/stone-prod-p01/host-config.yaml
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..09d04d3b
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml
new file mode 100644
index 00000000..3a87203e
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml
@@ -0,0 +1,527 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g6xlarge/amd64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x,\
+    linux/ppc64le,\
+    linux-large/ppc64le\
+    "
+  instance-tag: rhtap-prod
+
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
+  # cpu:memory (1:4)
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.max-instances: "100"
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-arm64.max-instances: "100"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m6a.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.max-instances: "100"
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-amd64.max-instances: "100"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "100"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "100"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
+
+  ## IBM s390x with 2CPU 8GiB RAM ####
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
+
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.private-ip: "true"
+  dynamic.linux-large-s390x.allocation-timeout: "1800"
+
+  #PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
+
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.allocation-timeout: "1800"
+
+  # AWS GPU Nodes
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..09d04d3b
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml 
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
<h3>1: Development changes from 2d440c44 to c18a606c on Mon Nov 25 19:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (1183 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 74959d84..7f1e8080 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -14,7 +14,13 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/base/external-secrets.yaml
similarity index 100%
rename from components/multi-platform-controller/production-downstream/external-secrets.yaml
rename to components/multi-platform-controller/production-downstream/base/external-secrets.yaml
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
similarity index 90%
rename from components/multi-platform-controller/production-downstream/kustomization.yaml
rename to components/multi-platform-controller/production-downstream/base/kustomization.yaml
index 843c60b0..1a0740d5 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/base/kustomization.yaml
@@ -4,14 +4,13 @@ kind: Kustomization
 namespace: multi-platform-controller
 
 resources:
-- ../base/common
+- ../../base/common
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
-- host-config.yaml
 - external-secrets.yaml
 
 components:
-  - ../k-components/manager-resources
+  - ../../k-components/manager-resources
 
 images:
 - name: multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml
new file mode 100644
index 00000000..296d7fa5
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-account.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-aws-account
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml
new file mode 100644
index 00000000..764442f1
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/aws-ssh-key.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
new file mode 100644
index 00000000..93efa46f
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -0,0 +1,527 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g6xlarge/amd64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x,\
+    linux/ppc64le,\
+    linux-large/ppc64le\
+    "
+  instance-tag: rhtap-prod
+
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
+  # cpu:memory (1:4)
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-arm64.max-instances: "100"
+  dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mlarge-arm64.max-instances: "100"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m6a.large
+  dynamic.linux-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-amd64.max-instances: "100"
+  dynamic.linux-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mlarge-amd64.max-instances: "100"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-root-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-root-arm64.max-instances: "100"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
+  dynamic.linux-root-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-root-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-root-amd64.max-instances: "100"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
+
+  ## IBM s390x with 2CPU 8GiB RAM ####
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
+
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.private-ip: "true"
+  dynamic.linux-large-s390x.allocation-timeout: "1800"
+
+  #PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
+
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.allocation-timeout: "1800"
+
+  # AWS GPU Nodes
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..5ca92f13
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml
+
+patches:
+- path: aws-account.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: aws-account
+- path: aws-ssh-key.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p01/host-config.yaml
similarity index 100%
rename from components/multi-platform-controller/production-downstream/host-config.yaml
rename to components/multi-platform-controller/production-downstream/stone-prod-p01/host-config.yaml
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..09d04d3b
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml
new file mode 100644
index 00000000..3a87203e
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p02/host-config.yaml
@@ -0,0 +1,527 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g6xlarge/amd64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x,\
+    linux/ppc64le,\
+    linux-large/ppc64le\
+    "
+  instance-tag: rhtap-prod
+
+  additional-instance-tags: "\
+    Project=Konflux,\
+    Owner=konflux-infra@redhat.com,\
+    ManagedBy=Konflux Infra Team,\
+    app-code=ASSH-001,\
+    service-phase=Production,\
+    cost-center=670\
+    "
+
+  # cpu:memory (1:4)
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.max-instances: "100"
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-arm64.max-instances: "100"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m6a.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.max-instances: "100"
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-amd64.max-instances: "100"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-mxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-m8xlarge-amd64.allocation-timeout: "1200"
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-cxlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c2xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c4xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c8xlarge-arm64.allocation-timeout: "1200"
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-cxlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c2xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c4xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-c8xlarge-amd64.allocation-timeout: "1200"
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "100"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "100"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
+
+  ## IBM s390x with 2CPU 8GiB RAM ####
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.allocation-timeout: "1800"
+
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.private-ip: "true"
+  dynamic.linux-large-s390x.allocation-timeout: "1800"
+
+  #PPC64LE dynamic nodes
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
+  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.allocation-timeout: "1800"
+
+  #PPC64LE Large dynamic nodes
+  dynamic.linux-large-ppc64le.type: ibmp
+  dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.system: "e980"
+  dynamic.linux-large-ppc64le.cores: "4"
+  dynamic.linux-large-ppc64le.memory: "16"
+  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.allocation-timeout: "1800"
+
+  # AWS GPU Nodes
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-0ad6c6b0ac6c36199
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
+  dynamic.linux-g6xlarge-amd64.allocation-timeout: "1200"
+  dynamic.linux-g6xlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+      echo "File system exists on the disk."
+    else
+      echo "No file system found on the disk /dev/nvme1n1"
+      mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+      echo "Directory '/home/var-lib-containers' exist"
+    else
+      echo "Directory '/home/var-lib-containers' doesn't exist"
+      mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+      echo "Directory '/home/var-tmp' exist"
+    else
+      echo "Directory '/home/var-tmp' doesn't exist"
+      mkdir -p /home/var-tmp /var/tmp
+    fi
+
+    mount --bind /home/var-tmp /var/tmp
+    chmod a+rw /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+      echo "ec2-user home exists"
+    else
+      echo "ec2-user home doesn't exist"
+      mkdir -p /home/ec2-user/.ssh
+      chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    mkdir -p /etc/cdi
+    chmod a+rwx /etc/cdi
+    su - ec2-user
+    nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
+    --//--
diff --git a/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml b/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..09d04d3b
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: multi-platform-controller
+resources:
+- ../base
+- host-config.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-2d440c44/development/app-of-apps-development.yaml
1004,1010c1004
<           elements:
<           - nameNormalized: kflux-ocp-p01
<             values.clusterDir: kflux-ocp-p01
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from dc1bc777 to 2d440c44 on Mon Nov 25 18:09:51 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 62e4c36c..ef20f630 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-dc1bc777/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
./commit-dc1bc777/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408 
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
<h3>2: Staging changes from dc1bc777 to 2d440c44 on Mon Nov 25 18:09:51 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 62e4c36c..ef20f630 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-dc1bc777/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408 
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
<h3>2: Development changes from dc1bc777 to 2d440c44 on Mon Nov 25 18:09:51 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 62e4c36c..ef20f630 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-dc1bc777/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:93bae8981d0996e370fa4036ccdfe20a9770df73
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408 
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
<h3>3: Production changes from d3c9e458 to dc1bc777 on Mon Nov 25 13:40:23 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
index a308ef33..90587307 100644
--- a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
@@ -33,7 +33,7 @@ spec:
       syncPolicy:
         automated:
           prune: true
-          selfHeal: true
+          selfHeal: false
         syncOptions:
           - CreateNamespace=true
         retry: 
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
<h3>3: Staging changes from d3c9e458 to dc1bc777 on Mon Nov 25 13:40:23 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
index a308ef33..90587307 100644
--- a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
@@ -33,7 +33,7 @@ spec:
       syncPolicy:
         automated:
           prune: true
-          selfHeal: true
+          selfHeal: false
         syncOptions:
           - CreateNamespace=true
         retry: 
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
<h3>3: Development changes from d3c9e458 to dc1bc777 on Mon Nov 25 13:40:23 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
index a308ef33..90587307 100644
--- a/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/konflux-ui/konflux-ui.yaml
@@ -33,7 +33,7 @@ spec:
       syncPolicy:
         automated:
           prune: true
-          selfHeal: true
+          selfHeal: false
         syncOptions:
           - CreateNamespace=true
         retry: 
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
<h3>4: Production changes from d8033565 to d3c9e458 on Mon Nov 25 12:22:13 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index aee87861..9bdb9416 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+    newTag: 9398a25bd2e88139182085b91a8b58da33633021
 
 namespace: notification-controller
 
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index a0f6abd3..8217649c 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
 - ../base/external-secrets
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+    newTag: 9398a25bd2e88139182085b91a8b58da33633021
 
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
<h3>4: Staging changes from d8033565 to d3c9e458 on Mon Nov 25 12:22:13 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index aee87861..9bdb9416 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+    newTag: 9398a25bd2e88139182085b91a8b58da33633021
 
 namespace: notification-controller
 
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index a0f6abd3..8217649c 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
 - ../base/external-secrets
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+    newTag: 9398a25bd2e88139182085b91a8b58da33633021
 
 namespace: notification-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d8033565/staging/components/notification-controller/staging/kustomize.out.yaml
208c208
<         image: quay.io/konflux-ci/notification-service:9398a25bd2e88139182085b91a8b58da33633021
---
>         image: quay.io/konflux-ci/notification-service:fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237 
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
<h3>4: Development changes from d8033565 to d3c9e458 on Mon Nov 25 12:22:13 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index aee87861..9bdb9416 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+    newTag: 9398a25bd2e88139182085b91a8b58da33633021
 
 namespace: notification-controller
 
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index a0f6abd3..8217649c 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/konflux-ci/notification-service/config/default?ref=fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+- https://github.com/konflux-ci/notification-service/config/default?ref=9398a25bd2e88139182085b91a8b58da33633021
 - ../base/external-secrets
 
 images:
   - name: quay.io/konflux-ci/notification-service
     newName: quay.io/konflux-ci/notification-service
-    newTag: fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237
+    newTag: 9398a25bd2e88139182085b91a8b58da33633021
 
 namespace: notification-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d8033565/development/components/notification-controller/development/kustomize.out.yaml
208c208
<         image: quay.io/konflux-ci/notification-service:9398a25bd2e88139182085b91a8b58da33633021
---
>         image: quay.io/konflux-ci/notification-service:fec1ff5aa29e45d2bb5e8635a8dbc3acf305d237 
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
