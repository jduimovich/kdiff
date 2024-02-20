# kustomize changes tracked by commits 
### This file generated at Tue Feb 20 12:03:52 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f51720e0 to 591296ea on Tue Feb 20 08:43:17 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/hack/generate-deploy-config.sh b/hack/generate-deploy-config.sh
new file mode 100755
index 00000000..aaf581ee
--- /dev/null
+++ b/hack/generate-deploy-config.sh
@@ -0,0 +1,49 @@
+#!/bin/bash
+set -o errexit
+set -o nounset
+set -o pipefail
+
+ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
+
+# Print help message
+function print_help() {
+  echo "Usage: $0 [-c|--component SUBDIR] [-h|--help]"
+  echo "  -c, --component SUBDIR    Path to a directory. Defaults to the current directory."
+  echo "  -h, --help                Help message"
+  echo
+  echo "Example usage: \`$0 components/pipeline-service/production"
+}
+
+function parse_args() {
+  COMPONENT="."
+  while [[ $# -gt 0 ]]; do
+    key=$1
+    case $key in
+    --component | -c)
+      shift
+      COMPONENT="$1"
+      ;;
+    -h | --help)
+      print_help
+      exit 0
+      ;;
+    *)
+      echo "Unknown argument: $key" >&2
+      exit 1
+      ;;
+    esac
+    shift
+  done
+}
+
+function main() {
+  parse_args "$@"
+
+  for DIR in $(find "$COMPONENT" -name resources); do
+    TARGET=$(dirname "$DIR")/deploy.yaml
+    echo "$DIR: $TARGET"
+    kustomize build "$DIR" >"$TARGET"
+  done
+}
+
+main "$@" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f51720e0 to 591296ea on Tue Feb 20 08:43:17 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/hack/generate-deploy-config.sh b/hack/generate-deploy-config.sh
new file mode 100755
index 00000000..aaf581ee
--- /dev/null
+++ b/hack/generate-deploy-config.sh
@@ -0,0 +1,49 @@
+#!/bin/bash
+set -o errexit
+set -o nounset
+set -o pipefail
+
+ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
+
+# Print help message
+function print_help() {
+  echo "Usage: $0 [-c|--component SUBDIR] [-h|--help]"
+  echo "  -c, --component SUBDIR    Path to a directory. Defaults to the current directory."
+  echo "  -h, --help                Help message"
+  echo
+  echo "Example usage: \`$0 components/pipeline-service/production"
+}
+
+function parse_args() {
+  COMPONENT="."
+  while [[ $# -gt 0 ]]; do
+    key=$1
+    case $key in
+    --component | -c)
+      shift
+      COMPONENT="$1"
+      ;;
+    -h | --help)
+      print_help
+      exit 0
+      ;;
+    *)
+      echo "Unknown argument: $key" >&2
+      exit 1
+      ;;
+    esac
+    shift
+  done
+}
+
+function main() {
+  parse_args "$@"
+
+  for DIR in $(find "$COMPONENT" -name resources); do
+    TARGET=$(dirname "$DIR")/deploy.yaml
+    echo "$DIR: $TARGET"
+    kustomize build "$DIR" >"$TARGET"
+  done
+}
+
+main "$@" 
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
<h3>1: Development changes from f51720e0 to 591296ea on Tue Feb 20 08:43:17 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/hack/generate-deploy-config.sh b/hack/generate-deploy-config.sh
new file mode 100755
index 00000000..aaf581ee
--- /dev/null
+++ b/hack/generate-deploy-config.sh
@@ -0,0 +1,49 @@
+#!/bin/bash
+set -o errexit
+set -o nounset
+set -o pipefail
+
+ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
+
+# Print help message
+function print_help() {
+  echo "Usage: $0 [-c|--component SUBDIR] [-h|--help]"
+  echo "  -c, --component SUBDIR    Path to a directory. Defaults to the current directory."
+  echo "  -h, --help                Help message"
+  echo
+  echo "Example usage: \`$0 components/pipeline-service/production"
+}
+
+function parse_args() {
+  COMPONENT="."
+  while [[ $# -gt 0 ]]; do
+    key=$1
+    case $key in
+    --component | -c)
+      shift
+      COMPONENT="$1"
+      ;;
+    -h | --help)
+      print_help
+      exit 0
+      ;;
+    *)
+      echo "Unknown argument: $key" >&2
+      exit 1
+      ;;
+    esac
+    shift
+  done
+}
+
+function main() {
+  parse_args "$@"
+
+  for DIR in $(find "$COMPONENT" -name resources); do
+    TARGET=$(dirname "$DIR")/deploy.yaml
+    echo "$DIR: $TARGET"
+    kustomize build "$DIR" >"$TARGET"
+  done
+}
+
+main "$@" 
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

<div>
<h3>2: Production changes from b6a472a3 to f51720e0 on Mon Feb 19 21:04:46 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index cfbff6ed..6622dda4 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging
     custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e4e21978..736b698c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index d0e15f63..eeeb227c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
     custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47f16e02..08040e60 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 492d0cc1..8ca07b0a 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from b6a472a3 to f51720e0 on Mon Feb 19 21:04:46 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index cfbff6ed..6622dda4 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging
     custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e4e21978..736b698c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index d0e15f63..eeeb227c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
     custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47f16e02..08040e60 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 492d0cc1..8ca07b0a 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-b6a472a3/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1956,1959c1956,1957
<           custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
>           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
./commit-b6a472a3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1956,1959c1956,1957
<           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
./commit-b6a472a3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1956,1959c1956,1957
<           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline 
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
<h3>2: Development changes from b6a472a3 to f51720e0 on Mon Feb 19 21:04:46 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index cfbff6ed..6622dda4 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging
     custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e4e21978..736b698c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index d0e15f63..eeeb227c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
     custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47f16e02..08040e60 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 492d0cc1..8ca07b0a 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true 
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

<div>
<h3>3: Production changes from 1fff42ca to b6a472a3 on Mon Feb 19 14:10:23 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index a11835bb..de7f8061 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-1fff42ca/production/components/integration/production/kustomize.out.yaml
503,508d502
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< ---
887,914d880
<   name: integration-service-snapshot-garbage-collector
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - releases
<   - snapshotenvironmentbindings
<   verbs:
<   - get
<   - list
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - get
<   - list
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
1060,1072d1025
<   name: integration-service-snapshot-garbage-collector
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-snapshot-garbage-collector
< subjects:
< - kind: ServiceAccount
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
1175c1128
<         image: quay.io/redhat-appstudio/integration-service:60be0fd0b8a656cf924431ba30bccdc85ad297b9
---
>         image: quay.io/redhat-appstudio/integration-service:cad02429e3133890bcf92b2d7cc1f94233b8037e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 1fff42ca to b6a472a3 on Mon Feb 19 14:10:23 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index a11835bb..de7f8061 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
 
 namespace: integration-service
  
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
<h3>3: Development changes from 1fff42ca to b6a472a3 on Mon Feb 19 14:10:23 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index a11835bb..de7f8061 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=60be0fd0b8a656cf924431ba30bccdc85ad297b9
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: 60be0fd0b8a656cf924431ba30bccdc85ad297b9
 
 namespace: integration-service
  
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

<div>
<h3>4: Production changes from 8219ee28 to 1fff42ca on Mon Feb 19 11:43:09 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index c07e5a21..a26135a5 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=ba66084e8df4378510014f5a6bf39b0a6ea1211b
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ba66084e8df4378510014f5a6bf39b0a6ea1211b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ba66084e8df4378510014f5a6bf39b0a6ea1211b
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ba66084e8df4378510014f5a6bf39b0a6ea1211b
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
 patches:
   - target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8219ee28 to 1fff42ca on Mon Feb 19 11:43:09 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index c07e5a21..a26135a5 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=ba66084e8df4378510014f5a6bf39b0a6ea1211b
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ba66084e8df4378510014f5a6bf39b0a6ea1211b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ba66084e8df4378510014f5a6bf39b0a6ea1211b
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ba66084e8df4378510014f5a6bf39b0a6ea1211b
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
 patches:
   - target: 
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
<h3>4: Development changes from 8219ee28 to 1fff42ca on Mon Feb 19 11:43:09 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index c07e5a21..a26135a5 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=ba66084e8df4378510014f5a6bf39b0a6ea1211b
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=ba66084e8df4378510014f5a6bf39b0a6ea1211b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ba66084e8df4378510014f5a6bf39b0a6ea1211b
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ba66084e8df4378510014f5a6bf39b0a6ea1211b
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
 patches:
   - target: 
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
