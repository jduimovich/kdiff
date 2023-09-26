# kustomize changes tracked by commits 
### This file generated at Tue Sep 26 00:08:20 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9b9cc139 to 3a1849dc on Mon Sep 25 22:15:13 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index 0f6b6022..b54c97e1 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ../../base/member
   - ../../base/all-clusters
   - ../../base/tekton-ci
-  - ../../base/ci-workspaces
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1559 lines)</summary>  

``` 
./commit-9b9cc139/production/app-of-apps-production.yaml
1,1557d0
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: application-api
<   namespace: argocd
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: application-api-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: application-api
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/application-api
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: authentication
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/authentication
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: authentication-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: build-service
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/build-service
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: build-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: build-templates
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/build-templates
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: build-templates-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: cluster-registration
<   namespace: argocd
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: cluster-registration-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: cluster-reg-config
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/cluster-registration
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: cluster-secret-store
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/cluster-secret-store
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: cluster-secret-store-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: cluster-secret-store-rh
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/rh-member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/cluster-secret-store-rh
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: cluster-secret-store-rh-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: cluster-secret-store-rh
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 20
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: disable-csvcopy
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: configs/disable-csvcopy-for-all-cluster
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: disable-csvcopy-{{nameNormalized}}
<     spec:
<       destination:
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/disable-csvcopy-for-all-cluster
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: dora-metrics
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/dora-metrics
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: dora-metrics-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: dora-metrics
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: enable-dvo
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: configs/enable-dvo-for-all-cluster
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: enable-dvo-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: deployment-validation-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/enable-dvo-for-all-cluster
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: enterprise-contract
<   namespace: argocd
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: enterprise-contract-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: enterprise-contract-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/enterprise-contract
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: external-secrets-operator
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/external-secrets-operator
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: external-secrets-operator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: external-secrets-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: gitops
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: production
<             sourceRoot: components/gitops
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: gitops-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: gitops
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: has
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/has
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: has-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: application-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: image-controller
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/image-controller
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: image-controller-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: ingresscontroller
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/host-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: ""
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: ingresscontroller-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: openshift-ingress-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/ingresscontroller
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=false
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: integration
<   namespace: argocd
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: integration-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: integration-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/integration
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: internal-services
<   namespace: argocd
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: internal-services-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: internal-services
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/internal-services
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: jvm-build-service
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/jvm-build-service
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: jvm-build-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: monitoring-workload-grafana
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/monitoring/grafana
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: monitoring-workload-grafana-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: appstudio-grafana
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: monitoring-workload-logging
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/monitoring/logging
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: monitoring-workload-logging-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: appstudio-workload-monitoring
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: monitoring-workload-prometheus
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: base
<             environment: production
<             sourceRoot: components/monitoring/prometheus
<       - list:
<           elements:
<           - nameNormalized: stone-stg-host
<             values.clusterDir: stone-stg-host
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-host1
<             values.clusterDir: stone-prd-host1
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: monitoring-workload-prometheus-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: appstudio-workload-monitoring
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: pipeline-service
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: production
<             sourceRoot: components/pipeline-service
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: pipeline-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: release
<   namespace: argocd
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: release-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: release-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/release
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: remote-secret-controller
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: production
<             sourceRoot: components/remote-secret-controller/overlays
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: remote-secret-controller-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: remotesecret
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: rh-managed-workspaces-config
<   namespace: argocd
< spec:
<   generators:
<   - git:
<       directories:
<       - path: auto-generated/cluster/stone-prd-rh01/managed/*
<       repoURL: https://github.com/redhat-appstudio/tenants-config
<       revision: main
<   template:
<     metadata:
<       name: '{{path.basename}}-{{path[2]}}'
<     spec:
<       destination:
<         name: '{{path[2]}}'
<         namespace: '{{path.basename}}'
<       project: rh-managed-workspaces-config
<       source:
<         path: '{{path}}'
<         repoURL: https://github.com/redhat-appstudio/tenants-config
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 10
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: segment-bridge-host
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/host-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/segment-bridge
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: segment-bridge-host-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: segment-bridge
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: segment-bridge-member
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/segment-bridge
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: segment-bridge-member-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: segment-bridge
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: spi
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: production
<             sourceRoot: components/spi/overlays
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: spi-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: spi-system
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 15s
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: sprayproxy
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/host-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/sprayproxy
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: sprayproxy-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: sprayproxy
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: tekton-ci
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/tekton-ci: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/tekton-ci
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: tekton-ci-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: tekton-ci
<         server: '{{server}}'
<       ignoreDifferences:
<       - group: ""
<         jqPathExpressions:
<         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
<         kind: ServiceAccount
<         name: appstudio-pipeline
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: tenants-config
<   namespace: argocd
< spec:
<   generators:
<   - git:
<       directories:
<       - path: auto-generated/cluster/stone-prd-rh01/tenants/*
<       repoURL: https://github.com/redhat-appstudio/tenants-config
<       revision: main
<   template:
<     metadata:
<       name: '{{path.basename}}-{{path[2]}}'
<     spec:
<       destination:
<         name: '{{path[2]}}'
<         namespace: '{{path.basename}}'
<       ignoreDifferences:
<       - group: appstudio.redhat.com
<         jsonPointers:
<         - /metadata/annotations/build.appstudio.openshift.io~1request
<         kind: Component
<       project: tenants-config
<       source:
<         path: '{{path}}'
<         repoURL: https://github.com/redhat-appstudio/tenants-config
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 10
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: toolchain-host-operator
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/host-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/sandbox/toolchain-host-operator
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: toolchain-host-operator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: toolchain-host-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: false
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=false
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   name: toolchain-member-operator
<   namespace: argocd
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: production
<             sourceRoot: components/sandbox/toolchain-member-operator
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: toolchain-member-operator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: toolchain-member-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: false
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=false 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 9b9cc139 to 3a1849dc on Mon Sep 25 22:15:13 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index 0f6b6022..b54c97e1 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ../../base/member
   - ../../base/all-clusters
   - ../../base/tekton-ci
-  - ../../base/ci-workspaces
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config 
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

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 9b9cc139 to 3a1849dc on Mon Sep 25 22:15:13 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index 0f6b6022..b54c97e1 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ../../base/member
   - ../../base/all-clusters
   - ../../base/tekton-ci
-  - ../../base/ci-workspaces
   - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
   - ../../base/rh-managed-workspaces-config 
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

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-3a1849dc/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-3a1849dc/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-3a1849dc/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-3a1849dc/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from c1a00c5a to 9b9cc139 on Mon Sep 25 21:51:00 2023 </h3>  
 
<details> 
<summary>Git Diff (506 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml b/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml
deleted file mode 100644
index 6def1597..00000000
--- a/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml
+++ /dev/null
@@ -1,45 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: ci-workspaces
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: ci/teams
-              selector:
-                matchLabels:
-                  appstudio.redhat.com/tekton-ci: "true"
-          - list:
-              elements: []
-  template:
-    metadata:
-      name: ci-workspaces-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        server: '{{server}}'
-      ignoreDifferences:
-      - group: ""
-        kind: "ServiceAccount"
-        name: appstudio-pipeline
-        jqPathExpressions:
-        - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/ci-workspaces/kustomization.yaml b/argo-cd-apps/base/ci-workspaces/kustomization.yaml
deleted file mode 100644
index 0187f0bb..00000000
--- a/argo-cd-apps/base/ci-workspaces/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ci-workspaces.yaml
diff --git a/ci/teams/kustomization.yaml b/ci/teams/kustomization.yaml
deleted file mode 100644
index 5efc469a..00000000
--- a/ci/teams/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-resources:
-- rhtap-build
-- rhtap-gitops
-- rhtap-servicerelease
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
diff --git a/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml b/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml
deleted file mode 100644
index 78769835..00000000
--- a/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: infra-deployments-pr-creator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/tekton-ci/infra-deployments-pr-creator
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: infra-deployments-pr-creator
diff --git a/ci/teams/rhtap-build/external-secrets/kustomization.yaml b/ci/teams/rhtap-build/external-secrets/kustomization.yaml
deleted file mode 100644
index 22289bc2..00000000
--- a/ci/teams/rhtap-build/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- infra-deployments-pr-creator.yaml
-namespace: rhtap-build-tenant
diff --git a/ci/teams/rhtap-build/kustomization.yaml b/ci/teams/rhtap-build/kustomization.yaml
deleted file mode 100644
index 6f1dfc42..00000000
--- a/ci/teams/rhtap-build/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-resources:
-- release.yaml
-- external-secrets
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/ci/teams/rhtap-build/release.yaml b/ci/teams/rhtap-build/release.yaml
deleted file mode 100644
index 0d7b23ea..00000000
--- a/ci/teams/rhtap-build/release.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlan
-metadata:
-  name: release-to-quay
-  namespace: rhtap-build-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: build
-  displayName: build release-to-quay
-  target: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-gitops/kustomization.yaml b/ci/teams/rhtap-gitops/kustomization.yaml
deleted file mode 100644
index a9418221..00000000
--- a/ci/teams/rhtap-gitops/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-resources:
-- release.yaml
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
diff --git a/ci/teams/rhtap-gitops/release.yaml b/ci/teams/rhtap-gitops/release.yaml
deleted file mode 100644
index 5687aaaa..00000000
--- a/ci/teams/rhtap-gitops/release.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlan
-metadata:
-  name: release-to-quay
-  namespace: rhtap-gitops-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: external-secrets
-  displayName: external-secrets release-to-quay
-  target: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/ec-policy.yaml b/ci/teams/rhtap-servicerelease/ec-policy.yaml
deleted file mode 100644
index e2b8fb80..00000000
--- a/ci/teams/rhtap-servicerelease/ec-policy.yaml
+++ /dev/null
@@ -1,25 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: rh-policy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  description: >-
-    Includes rules for levels 1, 2 & 3 of SLSA v0.1.
-  publicKey: "k8s://openshift-pipelines/public-key"
-  sources:
-    - name: Default
-      policy:
-        - github.com/enterprise-contract/ec-policies//policy/lib
-        - github.com/enterprise-contract/ec-policies//policy/release
-      data:
-        - github.com/enterprise-contract/ec-policies//data
-  configuration:
-    include:
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
-    exclude:
-      # Exclude step_image_registries for now since it can cause false
-      # positives due to https://issues.redhat.com/browse/OCPBUGS-8428
-      - step_image_registries
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml b/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml
deleted file mode 100644
index c5ac1dc1..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: infra-deployments-pr-creator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/infra-deployments-pr-creator
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: infra-deployments-pr-creator
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml b/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml
deleted file mode 100644
index 51d10c79..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- infra-deployments-pr-creator.yaml
-- slack-webhook-notification-secret.yaml
-- pyxis-secret.yaml
-namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml b/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml
deleted file mode 100644
index ecc4074a..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: pyxis-staging-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "staging/release/pyxis/certificate"
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: pyxis-staging-secret
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml b/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml
deleted file mode 100644
index 5a7b755e..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: slack-webhook-notification-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "production/build/tekton-ci/slack-webhook-notification-secret"
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: slack-webhook-notification-secret
diff --git a/ci/teams/rhtap-servicerelease/kustomization.yaml b/ci/teams/rhtap-servicerelease/kustomization.yaml
deleted file mode 100644
index 6b03add5..00000000
--- a/ci/teams/rhtap-servicerelease/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-resources:
-- release-build.yaml
-- release-external-secrets.yaml
-- release-service-account-build-rb.yaml
-- release-service-account-external-secrets-rb.yaml
-- ec-policy.yaml
-- release-strategy.yaml
-- persistent-volume-claim.yaml
-- release-pipeline-sa.yaml
-- external-secrets
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml b/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml
deleted file mode 100644
index d29147cf..00000000
--- a/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-apiVersion: v1
-kind: PersistentVolumeClaim
-metadata:
-  name: release-pvc
-  namespace: rhtap-servicerelease-tenant
-spec:
-  accessModes:
-    - ReadWriteOnce
-  resources:
-    requests:
-      storage: 1Gi
diff --git a/ci/teams/rhtap-servicerelease/release-build.yaml b/ci/teams/rhtap-servicerelease/release-build.yaml
deleted file mode 100644
index b2d9c585..00000000
--- a/ci/teams/rhtap-servicerelease/release-build.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlanAdmission
-metadata:
-  name: rhtap-build-rpa
-  namespace: rhtap-servicerelease-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: build
-  displayName: ''
-  origin: rhtap-build-tenant
-  releaseStrategy: rhtap-service-push-strategy
-  extraData:
-    infra-deployment-update-script: >
-      sed -i -e 's|\(https://github.com/redhat-appstudio/image-controller/.*?ref=\)\(.*\)|\1{{ revision }}
-      |' -e 's/\(newTag: \).*/\1{{ revision }}/' components/image-controller/base/kustomization.yaml
-    slack-webhook-notification-secret-keyname: "build"
diff --git a/ci/teams/rhtap-servicerelease/release-external-secrets.yaml b/ci/teams/rhtap-servicerelease/release-external-secrets.yaml
deleted file mode 100644
index b7a28677..00000000
--- a/ci/teams/rhtap-servicerelease/release-external-secrets.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlanAdmission
-metadata:
-  name: rhtap-external-secrets-rpa
-  namespace: rhtap-servicerelease-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-spec:
-  application: external-secrets
-  displayName: ''
-  origin: rhtap-gitops-tenant
-  releaseStrategy: rhtap-service-push-strategy
diff --git a/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml b/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml
deleted file mode 100644
index eb40ad47..00000000
--- a/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: rhtap-servicerelease-sa
-  namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml b/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml
deleted file mode 100644
index 30e6ed7d..00000000
--- a/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-build-tenant-release-service-pipeline-rolebinding-dev
-  namespace: rhtap-build-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-build-tenant-release-service-pipeline-rolebinding-managed
-  namespace: rhtap-servicerelease-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml b/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml
deleted file mode 100644
index 7199ea92..00000000
--- a/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-gitops-tenant-release-service-pipeline-rolebinding-dev
-  namespace: rhtap-gitops-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-gitops-tenant-release-service-pipeline-rolebinding-managed
-  namespace: rhtap-servicerelease-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-strategy.yaml b/ci/teams/rhtap-servicerelease/release-strategy.yaml
deleted file mode 100644
index 09fe6d96..00000000
--- a/ci/teams/rhtap-servicerelease/release-strategy.yaml
+++ /dev/null
@@ -1,52 +0,0 @@
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleaseStrategy
-metadata:
-  name: push-to-external-registry-strategy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  bundle: 'quay.io/hacbs-release/pipeline-push-to-external-registry:main'
-  params:
-    - name: extraConfigGitUrl
-      value: 'https://github.com/hacbs-release/strategy-configs.git'
-    - name: extraConfigPath
-      value: rhtap.yaml
-    - name: extraConfigRevision
-      value: main
-    - name: pyxisServerType
-      value: stage
-    - name: pyxisSecret
-      value: pyxis
-    - name: tag
-      value: latest
-    - name: addGitShaTag
-      value: 'true'
-  pipeline: push-to-external-registry
-  policy: rh-policy
-  serviceAccount: rhtap-servicerelease-sa
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleaseStrategy
-metadata:
-  name: rhtap-service-push-strategy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  bundle: 'quay.io/hacbs-release/pipeline-rhtap-service-push:main'
-  params:
-    - name: extraConfigGitUrl
-      value: 'https://github.com/hacbs-release/strategy-configs.git'
-    - name: extraConfigPath
-      value: rhtap.yaml
-    - name: extraConfigRevision
-      value: main
-    - name: pyxisServerType
-      value: stage
-    - name: pyxisSecret
-      value: pyxis-staging-secret
-    - name: tag
-      value: latest
-    - name: addGitShaTag
-      value: 'true'
-  pipeline: rhtap-service-push
-  policy: rh-policy
-  serviceAccount: rhtap-servicerelease-sa 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1606 lines)</summary>  

``` 
./commit-c1a00c5a/production/app-of-apps-production.yaml
0a1,1604
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: application-api
>   namespace: argocd
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: application-api-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-api
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/application-api
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: authentication
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/authentication
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: authentication-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: build-service
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/build-service
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: build-templates
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/build-templates
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: build-templates-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: ci-workspaces
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/tekton-ci: "true"
>           values:
>             sourceRoot: ci/teams
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: ci-workspaces-{{nameNormalized}}
>     spec:
>       destination:
>         server: '{{server}}'
>       ignoreDifferences:
>       - group: ""
>         jqPathExpressions:
>         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
>         kind: ServiceAccount
>         name: appstudio-pipeline
>       project: default
>       source:
>         path: '{{values.sourceRoot}}'
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
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: cluster-registration
>   namespace: argocd
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: cluster-registration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: cluster-reg-config
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/cluster-registration
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
>   name: cluster-secret-store
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/cluster-secret-store
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: cluster-secret-store-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: cluster-secret-store-rh
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/rh-member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/cluster-secret-store-rh
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: cluster-secret-store-rh-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: cluster-secret-store-rh
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>           limit: 20
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: disable-csvcopy
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: configs/disable-csvcopy-for-all-cluster
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: disable-csvcopy-{{nameNormalized}}
>     spec:
>       destination:
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/disable-csvcopy-for-all-cluster
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
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: dora-metrics
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/dora-metrics
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: dora-metrics-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: dora-metrics
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: enable-dvo
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: configs/enable-dvo-for-all-cluster
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: enable-dvo-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: deployment-validation-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/enable-dvo-for-all-cluster
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
>   name: enterprise-contract
>   namespace: argocd
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: enterprise-contract-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: enterprise-contract-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/enterprise-contract
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: external-secrets-operator
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/external-secrets-operator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: external-secrets-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: external-secrets-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: gitops
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: production
>             sourceRoot: components/gitops
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: gitops-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: gitops
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: has
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/has
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: has-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: application-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: image-controller
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/image-controller
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: image-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: ingresscontroller
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: ""
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: ingresscontroller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: openshift-ingress-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: configs/ingresscontroller
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
>         - CreateNamespace=false
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: integration
>   namespace: argocd
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: integration-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: integration-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/integration
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: internal-services
>   namespace: argocd
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: internal-services-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: internal-services
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/internal-services
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: jvm-build-service
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/jvm-build-service
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: jvm-build-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: monitoring-workload-grafana
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/monitoring/grafana
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-grafana-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-grafana
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: monitoring-workload-logging
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/monitoring/logging
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-logging-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-workload-monitoring
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: monitoring-workload-prometheus
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchExpressions:
>             - key: app.kubernetes.io/name
>               operator: NotIn
>               values:
>               - argocd-default-cluster-config
>             matchLabels:
>               argocd.argoproj.io/secret-type: cluster
>           values:
>             clusterDir: base
>             environment: production
>             sourceRoot: components/monitoring/prometheus
>       - list:
>           elements:
>           - nameNormalized: stone-stg-host
>             values.clusterDir: stone-stg-host
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-host1
>             values.clusterDir: stone-prd-host1
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-prometheus-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-workload-monitoring
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: pipeline-service
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: production
>             sourceRoot: components/pipeline-service
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: pipeline-service-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: default
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: release
>   namespace: argocd
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: release-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: release-service
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/release
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: remote-secret-controller
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: production
>             sourceRoot: components/remote-secret-controller/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: remote-secret-controller-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: remotesecret
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: rh-managed-workspaces-config
>   namespace: argocd
> spec:
>   generators:
>   - git:
>       directories:
>       - path: auto-generated/cluster/stone-prd-rh01/managed/*
>       repoURL: https://github.com/redhat-appstudio/tenants-config
>       revision: main
>   template:
>     metadata:
>       name: '{{path.basename}}-{{path[2]}}'
>     spec:
>       destination:
>         name: '{{path[2]}}'
>         namespace: '{{path.basename}}'
>       project: rh-managed-workspaces-config
>       source:
>         path: '{{path}}'
>         repoURL: https://github.com/redhat-appstudio/tenants-config
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
>           limit: 10
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: segment-bridge-host
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/segment-bridge
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: segment-bridge-host-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: segment-bridge
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: segment-bridge-member
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/segment-bridge
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: segment-bridge-member-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: segment-bridge
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: spi
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: base
>             environment: production
>             sourceRoot: components/spi/overlays
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: spi-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: spi-system
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: sprayproxy
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/sprayproxy
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: sprayproxy-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: sprayproxy
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: tekton-ci
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/tekton-ci: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/tekton-ci
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: tekton-ci-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: tekton-ci
>         server: '{{server}}'
>       ignoreDifferences:
>       - group: ""
>         jqPathExpressions:
>         - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
>         kind: ServiceAccount
>         name: appstudio-pipeline
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
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
>   name: tenants-config
>   namespace: argocd
> spec:
>   generators:
>   - git:
>       directories:
>       - path: auto-generated/cluster/stone-prd-rh01/tenants/*
>       repoURL: https://github.com/redhat-appstudio/tenants-config
>       revision: main
>   template:
>     metadata:
>       name: '{{path.basename}}-{{path[2]}}'
>     spec:
>       destination:
>         name: '{{path[2]}}'
>         namespace: '{{path.basename}}'
>       ignoreDifferences:
>       - group: appstudio.redhat.com
>         jsonPointers:
>         - /metadata/annotations/build.appstudio.openshift.io~1request
>         kind: Component
>       project: tenants-config
>       source:
>         path: '{{path}}'
>         repoURL: https://github.com/redhat-appstudio/tenants-config
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
>           limit: 10
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: toolchain-host-operator
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/host-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/sandbox/toolchain-host-operator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: toolchain-host-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: toolchain-host-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: false
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: toolchain-member-operator
>   namespace: argocd
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: production
>             sourceRoot: components/sandbox/toolchain-member-operator
>       - list:
>           elements: []
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: toolchain-member-operator-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: toolchain-member-operator
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: false
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=false 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from c1a00c5a to 9b9cc139 on Mon Sep 25 21:51:00 2023 </h3>  
 
<details> 
<summary>Git Diff (506 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml b/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml
deleted file mode 100644
index 6def1597..00000000
--- a/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml
+++ /dev/null
@@ -1,45 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: ci-workspaces
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: ci/teams
-              selector:
-                matchLabels:
-                  appstudio.redhat.com/tekton-ci: "true"
-          - list:
-              elements: []
-  template:
-    metadata:
-      name: ci-workspaces-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        server: '{{server}}'
-      ignoreDifferences:
-      - group: ""
-        kind: "ServiceAccount"
-        name: appstudio-pipeline
-        jqPathExpressions:
-        - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/ci-workspaces/kustomization.yaml b/argo-cd-apps/base/ci-workspaces/kustomization.yaml
deleted file mode 100644
index 0187f0bb..00000000
--- a/argo-cd-apps/base/ci-workspaces/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ci-workspaces.yaml
diff --git a/ci/teams/kustomization.yaml b/ci/teams/kustomization.yaml
deleted file mode 100644
index 5efc469a..00000000
--- a/ci/teams/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-resources:
-- rhtap-build
-- rhtap-gitops
-- rhtap-servicerelease
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
diff --git a/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml b/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml
deleted file mode 100644
index 78769835..00000000
--- a/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: infra-deployments-pr-creator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/tekton-ci/infra-deployments-pr-creator
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: infra-deployments-pr-creator
diff --git a/ci/teams/rhtap-build/external-secrets/kustomization.yaml b/ci/teams/rhtap-build/external-secrets/kustomization.yaml
deleted file mode 100644
index 22289bc2..00000000
--- a/ci/teams/rhtap-build/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- infra-deployments-pr-creator.yaml
-namespace: rhtap-build-tenant
diff --git a/ci/teams/rhtap-build/kustomization.yaml b/ci/teams/rhtap-build/kustomization.yaml
deleted file mode 100644
index 6f1dfc42..00000000
--- a/ci/teams/rhtap-build/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-resources:
-- release.yaml
-- external-secrets
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/ci/teams/rhtap-build/release.yaml b/ci/teams/rhtap-build/release.yaml
deleted file mode 100644
index 0d7b23ea..00000000
--- a/ci/teams/rhtap-build/release.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlan
-metadata:
-  name: release-to-quay
-  namespace: rhtap-build-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: build
-  displayName: build release-to-quay
-  target: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-gitops/kustomization.yaml b/ci/teams/rhtap-gitops/kustomization.yaml
deleted file mode 100644
index a9418221..00000000
--- a/ci/teams/rhtap-gitops/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-resources:
-- release.yaml
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
diff --git a/ci/teams/rhtap-gitops/release.yaml b/ci/teams/rhtap-gitops/release.yaml
deleted file mode 100644
index 5687aaaa..00000000
--- a/ci/teams/rhtap-gitops/release.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlan
-metadata:
-  name: release-to-quay
-  namespace: rhtap-gitops-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: external-secrets
-  displayName: external-secrets release-to-quay
-  target: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/ec-policy.yaml b/ci/teams/rhtap-servicerelease/ec-policy.yaml
deleted file mode 100644
index e2b8fb80..00000000
--- a/ci/teams/rhtap-servicerelease/ec-policy.yaml
+++ /dev/null
@@ -1,25 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: rh-policy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  description: >-
-    Includes rules for levels 1, 2 & 3 of SLSA v0.1.
-  publicKey: "k8s://openshift-pipelines/public-key"
-  sources:
-    - name: Default
-      policy:
-        - github.com/enterprise-contract/ec-policies//policy/lib
-        - github.com/enterprise-contract/ec-policies//policy/release
-      data:
-        - github.com/enterprise-contract/ec-policies//data
-  configuration:
-    include:
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
-    exclude:
-      # Exclude step_image_registries for now since it can cause false
-      # positives due to https://issues.redhat.com/browse/OCPBUGS-8428
-      - step_image_registries
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml b/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml
deleted file mode 100644
index c5ac1dc1..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: infra-deployments-pr-creator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/infra-deployments-pr-creator
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: infra-deployments-pr-creator
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml b/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml
deleted file mode 100644
index 51d10c79..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- infra-deployments-pr-creator.yaml
-- slack-webhook-notification-secret.yaml
-- pyxis-secret.yaml
-namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml b/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml
deleted file mode 100644
index ecc4074a..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: pyxis-staging-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "staging/release/pyxis/certificate"
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: pyxis-staging-secret
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml b/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml
deleted file mode 100644
index 5a7b755e..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: slack-webhook-notification-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "production/build/tekton-ci/slack-webhook-notification-secret"
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: slack-webhook-notification-secret
diff --git a/ci/teams/rhtap-servicerelease/kustomization.yaml b/ci/teams/rhtap-servicerelease/kustomization.yaml
deleted file mode 100644
index 6b03add5..00000000
--- a/ci/teams/rhtap-servicerelease/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-resources:
-- release-build.yaml
-- release-external-secrets.yaml
-- release-service-account-build-rb.yaml
-- release-service-account-external-secrets-rb.yaml
-- ec-policy.yaml
-- release-strategy.yaml
-- persistent-volume-claim.yaml
-- release-pipeline-sa.yaml
-- external-secrets
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml b/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml
deleted file mode 100644
index d29147cf..00000000
--- a/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-apiVersion: v1
-kind: PersistentVolumeClaim
-metadata:
-  name: release-pvc
-  namespace: rhtap-servicerelease-tenant
-spec:
-  accessModes:
-    - ReadWriteOnce
-  resources:
-    requests:
-      storage: 1Gi
diff --git a/ci/teams/rhtap-servicerelease/release-build.yaml b/ci/teams/rhtap-servicerelease/release-build.yaml
deleted file mode 100644
index b2d9c585..00000000
--- a/ci/teams/rhtap-servicerelease/release-build.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlanAdmission
-metadata:
-  name: rhtap-build-rpa
-  namespace: rhtap-servicerelease-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: build
-  displayName: ''
-  origin: rhtap-build-tenant
-  releaseStrategy: rhtap-service-push-strategy
-  extraData:
-    infra-deployment-update-script: >
-      sed -i -e 's|\(https://github.com/redhat-appstudio/image-controller/.*?ref=\)\(.*\)|\1{{ revision }}
-      |' -e 's/\(newTag: \).*/\1{{ revision }}/' components/image-controller/base/kustomization.yaml
-    slack-webhook-notification-secret-keyname: "build"
diff --git a/ci/teams/rhtap-servicerelease/release-external-secrets.yaml b/ci/teams/rhtap-servicerelease/release-external-secrets.yaml
deleted file mode 100644
index b7a28677..00000000
--- a/ci/teams/rhtap-servicerelease/release-external-secrets.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlanAdmission
-metadata:
-  name: rhtap-external-secrets-rpa
-  namespace: rhtap-servicerelease-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-spec:
-  application: external-secrets
-  displayName: ''
-  origin: rhtap-gitops-tenant
-  releaseStrategy: rhtap-service-push-strategy
diff --git a/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml b/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml
deleted file mode 100644
index eb40ad47..00000000
--- a/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: rhtap-servicerelease-sa
-  namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml b/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml
deleted file mode 100644
index 30e6ed7d..00000000
--- a/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-build-tenant-release-service-pipeline-rolebinding-dev
-  namespace: rhtap-build-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-build-tenant-release-service-pipeline-rolebinding-managed
-  namespace: rhtap-servicerelease-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml b/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml
deleted file mode 100644
index 7199ea92..00000000
--- a/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-gitops-tenant-release-service-pipeline-rolebinding-dev
-  namespace: rhtap-gitops-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-gitops-tenant-release-service-pipeline-rolebinding-managed
-  namespace: rhtap-servicerelease-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-strategy.yaml b/ci/teams/rhtap-servicerelease/release-strategy.yaml
deleted file mode 100644
index 09fe6d96..00000000
--- a/ci/teams/rhtap-servicerelease/release-strategy.yaml
+++ /dev/null
@@ -1,52 +0,0 @@
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleaseStrategy
-metadata:
-  name: push-to-external-registry-strategy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  bundle: 'quay.io/hacbs-release/pipeline-push-to-external-registry:main'
-  params:
-    - name: extraConfigGitUrl
-      value: 'https://github.com/hacbs-release/strategy-configs.git'
-    - name: extraConfigPath
-      value: rhtap.yaml
-    - name: extraConfigRevision
-      value: main
-    - name: pyxisServerType
-      value: stage
-    - name: pyxisSecret
-      value: pyxis
-    - name: tag
-      value: latest
-    - name: addGitShaTag
-      value: 'true'
-  pipeline: push-to-external-registry
-  policy: rh-policy
-  serviceAccount: rhtap-servicerelease-sa
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleaseStrategy
-metadata:
-  name: rhtap-service-push-strategy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  bundle: 'quay.io/hacbs-release/pipeline-rhtap-service-push:main'
-  params:
-    - name: extraConfigGitUrl
-      value: 'https://github.com/hacbs-release/strategy-configs.git'
-    - name: extraConfigPath
-      value: rhtap.yaml
-    - name: extraConfigRevision
-      value: main
-    - name: pyxisServerType
-      value: stage
-    - name: pyxisSecret
-      value: pyxis-staging-secret
-    - name: tag
-      value: latest
-    - name: addGitShaTag
-      value: 'true'
-  pipeline: rhtap-service-push
-  policy: rh-policy
-  serviceAccount: rhtap-servicerelease-sa 
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

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from c1a00c5a to 9b9cc139 on Mon Sep 25 21:51:00 2023 </h3>  
 
<details> 
<summary>Git Diff (506 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml b/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml
deleted file mode 100644
index 6def1597..00000000
--- a/argo-cd-apps/base/ci-workspaces/ci-workspaces.yaml
+++ /dev/null
@@ -1,45 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: ci-workspaces
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: ci/teams
-              selector:
-                matchLabels:
-                  appstudio.redhat.com/tekton-ci: "true"
-          - list:
-              elements: []
-  template:
-    metadata:
-      name: ci-workspaces-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        server: '{{server}}'
-      ignoreDifferences:
-      - group: ""
-        kind: "ServiceAccount"
-        name: appstudio-pipeline
-        jqPathExpressions:
-        - .imagePullSecrets[] | select(.name | startswith("appstudio-pipeline-dockercfg"))
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/ci-workspaces/kustomization.yaml b/argo-cd-apps/base/ci-workspaces/kustomization.yaml
deleted file mode 100644
index 0187f0bb..00000000
--- a/argo-cd-apps/base/ci-workspaces/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ci-workspaces.yaml
diff --git a/ci/teams/kustomization.yaml b/ci/teams/kustomization.yaml
deleted file mode 100644
index 5efc469a..00000000
--- a/ci/teams/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-resources:
-- rhtap-build
-- rhtap-gitops
-- rhtap-servicerelease
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
diff --git a/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml b/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml
deleted file mode 100644
index 78769835..00000000
--- a/ci/teams/rhtap-build/external-secrets/infra-deployments-pr-creator.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: infra-deployments-pr-creator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/tekton-ci/infra-deployments-pr-creator
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: infra-deployments-pr-creator
diff --git a/ci/teams/rhtap-build/external-secrets/kustomization.yaml b/ci/teams/rhtap-build/external-secrets/kustomization.yaml
deleted file mode 100644
index 22289bc2..00000000
--- a/ci/teams/rhtap-build/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- infra-deployments-pr-creator.yaml
-namespace: rhtap-build-tenant
diff --git a/ci/teams/rhtap-build/kustomization.yaml b/ci/teams/rhtap-build/kustomization.yaml
deleted file mode 100644
index 6f1dfc42..00000000
--- a/ci/teams/rhtap-build/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-resources:
-- release.yaml
-- external-secrets
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/ci/teams/rhtap-build/release.yaml b/ci/teams/rhtap-build/release.yaml
deleted file mode 100644
index 0d7b23ea..00000000
--- a/ci/teams/rhtap-build/release.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlan
-metadata:
-  name: release-to-quay
-  namespace: rhtap-build-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: build
-  displayName: build release-to-quay
-  target: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-gitops/kustomization.yaml b/ci/teams/rhtap-gitops/kustomization.yaml
deleted file mode 100644
index a9418221..00000000
--- a/ci/teams/rhtap-gitops/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-resources:
-- release.yaml
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file
diff --git a/ci/teams/rhtap-gitops/release.yaml b/ci/teams/rhtap-gitops/release.yaml
deleted file mode 100644
index 5687aaaa..00000000
--- a/ci/teams/rhtap-gitops/release.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlan
-metadata:
-  name: release-to-quay
-  namespace: rhtap-gitops-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: external-secrets
-  displayName: external-secrets release-to-quay
-  target: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/ec-policy.yaml b/ci/teams/rhtap-servicerelease/ec-policy.yaml
deleted file mode 100644
index e2b8fb80..00000000
--- a/ci/teams/rhtap-servicerelease/ec-policy.yaml
+++ /dev/null
@@ -1,25 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: EnterpriseContractPolicy
-metadata:
-  name: rh-policy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  description: >-
-    Includes rules for levels 1, 2 & 3 of SLSA v0.1.
-  publicKey: "k8s://openshift-pipelines/public-key"
-  sources:
-    - name: Default
-      policy:
-        - github.com/enterprise-contract/ec-policies//policy/lib
-        - github.com/enterprise-contract/ec-policies//policy/release
-      data:
-        - github.com/enterprise-contract/ec-policies//data
-  configuration:
-    include:
-      - '@slsa1'
-      - '@slsa2'
-      - '@slsa3'
-    exclude:
-      # Exclude step_image_registries for now since it can cause false
-      # positives due to https://issues.redhat.com/browse/OCPBUGS-8428
-      - step_image_registries
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml b/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml
deleted file mode 100644
index c5ac1dc1..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/infra-deployments-pr-creator.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: infra-deployments-pr-creator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/infra-deployments-pr-creator
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: infra-deployments-pr-creator
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml b/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml
deleted file mode 100644
index 51d10c79..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- infra-deployments-pr-creator.yaml
-- slack-webhook-notification-secret.yaml
-- pyxis-secret.yaml
-namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml b/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml
deleted file mode 100644
index ecc4074a..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/pyxis-secret.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: pyxis-staging-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "staging/release/pyxis/certificate"
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: pyxis-staging-secret
diff --git a/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml b/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml
deleted file mode 100644
index 5a7b755e..00000000
--- a/ci/teams/rhtap-servicerelease/external-secrets/slack-webhook-notification-secret.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: slack-webhook-notification-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "production/build/tekton-ci/slack-webhook-notification-secret"
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: slack-webhook-notification-secret
diff --git a/ci/teams/rhtap-servicerelease/kustomization.yaml b/ci/teams/rhtap-servicerelease/kustomization.yaml
deleted file mode 100644
index 6b03add5..00000000
--- a/ci/teams/rhtap-servicerelease/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-resources:
-- release-build.yaml
-- release-external-secrets.yaml
-- release-service-account-build-rb.yaml
-- release-service-account-external-secrets-rb.yaml
-- ec-policy.yaml
-- release-strategy.yaml
-- persistent-volume-claim.yaml
-- release-pipeline-sa.yaml
-- external-secrets
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml b/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml
deleted file mode 100644
index d29147cf..00000000
--- a/ci/teams/rhtap-servicerelease/persistent-volume-claim.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-apiVersion: v1
-kind: PersistentVolumeClaim
-metadata:
-  name: release-pvc
-  namespace: rhtap-servicerelease-tenant
-spec:
-  accessModes:
-    - ReadWriteOnce
-  resources:
-    requests:
-      storage: 1Gi
diff --git a/ci/teams/rhtap-servicerelease/release-build.yaml b/ci/teams/rhtap-servicerelease/release-build.yaml
deleted file mode 100644
index b2d9c585..00000000
--- a/ci/teams/rhtap-servicerelease/release-build.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlanAdmission
-metadata:
-  name: rhtap-build-rpa
-  namespace: rhtap-servicerelease-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-    release.appstudio.openshift.io/standing-attribution: 'true'
-spec:
-  application: build
-  displayName: ''
-  origin: rhtap-build-tenant
-  releaseStrategy: rhtap-service-push-strategy
-  extraData:
-    infra-deployment-update-script: >
-      sed -i -e 's|\(https://github.com/redhat-appstudio/image-controller/.*?ref=\)\(.*\)|\1{{ revision }}
-      |' -e 's/\(newTag: \).*/\1{{ revision }}/' components/image-controller/base/kustomization.yaml
-    slack-webhook-notification-secret-keyname: "build"
diff --git a/ci/teams/rhtap-servicerelease/release-external-secrets.yaml b/ci/teams/rhtap-servicerelease/release-external-secrets.yaml
deleted file mode 100644
index b7a28677..00000000
--- a/ci/teams/rhtap-servicerelease/release-external-secrets.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleasePlanAdmission
-metadata:
-  name: rhtap-external-secrets-rpa
-  namespace: rhtap-servicerelease-tenant
-  labels:
-    release.appstudio.openshift.io/auto-release: 'true'
-spec:
-  application: external-secrets
-  displayName: ''
-  origin: rhtap-gitops-tenant
-  releaseStrategy: rhtap-service-push-strategy
diff --git a/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml b/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml
deleted file mode 100644
index eb40ad47..00000000
--- a/ci/teams/rhtap-servicerelease/release-pipeline-sa.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: rhtap-servicerelease-sa
-  namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml b/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml
deleted file mode 100644
index 30e6ed7d..00000000
--- a/ci/teams/rhtap-servicerelease/release-service-account-build-rb.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-build-tenant-release-service-pipeline-rolebinding-dev
-  namespace: rhtap-build-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-build-tenant-release-service-pipeline-rolebinding-managed
-  namespace: rhtap-servicerelease-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml b/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml
deleted file mode 100644
index 7199ea92..00000000
--- a/ci/teams/rhtap-servicerelease/release-service-account-external-secrets-rb.yaml
+++ /dev/null
@@ -1,28 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-gitops-tenant-release-service-pipeline-rolebinding-dev
-  namespace: rhtap-gitops-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: rhtap-gitops-tenant-release-service-pipeline-rolebinding-managed
-  namespace: rhtap-servicerelease-tenant
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: release-pipeline-resource-role
-subjects:
-  - kind: ServiceAccount
-    name: rhtap-servicerelease-sa
-    namespace: rhtap-servicerelease-tenant
diff --git a/ci/teams/rhtap-servicerelease/release-strategy.yaml b/ci/teams/rhtap-servicerelease/release-strategy.yaml
deleted file mode 100644
index 09fe6d96..00000000
--- a/ci/teams/rhtap-servicerelease/release-strategy.yaml
+++ /dev/null
@@ -1,52 +0,0 @@
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleaseStrategy
-metadata:
-  name: push-to-external-registry-strategy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  bundle: 'quay.io/hacbs-release/pipeline-push-to-external-registry:main'
-  params:
-    - name: extraConfigGitUrl
-      value: 'https://github.com/hacbs-release/strategy-configs.git'
-    - name: extraConfigPath
-      value: rhtap.yaml
-    - name: extraConfigRevision
-      value: main
-    - name: pyxisServerType
-      value: stage
-    - name: pyxisSecret
-      value: pyxis
-    - name: tag
-      value: latest
-    - name: addGitShaTag
-      value: 'true'
-  pipeline: push-to-external-registry
-  policy: rh-policy
-  serviceAccount: rhtap-servicerelease-sa
----
-apiVersion: appstudio.redhat.com/v1alpha1
-kind: ReleaseStrategy
-metadata:
-  name: rhtap-service-push-strategy
-  namespace: rhtap-servicerelease-tenant
-spec:
-  bundle: 'quay.io/hacbs-release/pipeline-rhtap-service-push:main'
-  params:
-    - name: extraConfigGitUrl
-      value: 'https://github.com/hacbs-release/strategy-configs.git'
-    - name: extraConfigPath
-      value: rhtap.yaml
-    - name: extraConfigRevision
-      value: main
-    - name: pyxisServerType
-      value: stage
-    - name: pyxisSecret
-      value: pyxis-staging-secret
-    - name: tag
-      value: latest
-    - name: addGitShaTag
-      value: 'true'
-  pipeline: rhtap-service-push
-  policy: rh-policy
-  serviceAccount: rhtap-servicerelease-sa 
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

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9b9cc139/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9b9cc139/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9b9cc139/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9b9cc139/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 1d23d4a9 to c1a00c5a on Mon Sep 25 18:31:53 2023 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index cdc565b7..e978e22c 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 61526b73f8933763048bd91046cb728e026353ec
+    newTag: c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index e29cad9a..4d86b3bb 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=61526b73f8933763048bd91046cb728e026353ec
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 61526b73f8933763048bd91046cb728e026353ec
+    newTag: c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 2df360c5..700d90ec 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ca88ab17..9a69f5c6 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-1d23d4a9/production/components/has/production/kustomize.out.yaml
821c821
<         image: quay.io/redhat-appstudio/application-service:c2f7c296dc3a7732b3fd2d16d9f50685935125ad
---
>         image: quay.io/redhat-appstudio/application-service:61526b73f8933763048bd91046cb728e026353ec 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 1d23d4a9 to c1a00c5a on Mon Sep 25 18:31:53 2023 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index cdc565b7..e978e22c 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 61526b73f8933763048bd91046cb728e026353ec
+    newTag: c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index e29cad9a..4d86b3bb 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=61526b73f8933763048bd91046cb728e026353ec
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 61526b73f8933763048bd91046cb728e026353ec
+    newTag: c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 2df360c5..700d90ec 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ca88ab17..9a69f5c6 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-1d23d4a9/staging/components/has/staging/kustomize.out.yaml
847c847
<         image: quay.io/redhat-appstudio/application-service:c2f7c296dc3a7732b3fd2d16d9f50685935125ad
---
>         image: quay.io/redhat-appstudio/application-service:61526b73f8933763048bd91046cb728e026353ec 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 1d23d4a9 to c1a00c5a on Mon Sep 25 18:31:53 2023 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index cdc565b7..e978e22c 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 61526b73f8933763048bd91046cb728e026353ec
+    newTag: c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index e29cad9a..4d86b3bb 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=61526b73f8933763048bd91046cb728e026353ec
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 61526b73f8933763048bd91046cb728e026353ec
+    newTag: c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 2df360c5..700d90ec 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ca88ab17..9a69f5c6 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=61526b73f8933763048bd91046cb728e026353ec
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=c2f7c296dc3a7732b3fd2d16d9f50685935125ad
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-1d23d4a9/development/components/has/development/kustomize.out.yaml
793c793
<         image: quay.io/redhat-appstudio/application-service:c2f7c296dc3a7732b3fd2d16d9f50685935125ad
---
>         image: quay.io/redhat-appstudio/application-service:61526b73f8933763048bd91046cb728e026353ec 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-c1a00c5a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-c1a00c5a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-c1a00c5a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-c1a00c5a/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ff054961 to 1d23d4a9 on Mon Sep 25 14:44:01 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 4bb1ec38..01d3cd39 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -24,7 +24,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -47,7 +47,32 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
+      name: Default
+      policy:
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
+---
+apiVersion: appstudio.redhat.com/v1alpha1
+kind: EnterpriseContractPolicy
+metadata:
+  name: redhat-no-hermetic
+  namespace: enterprise-contract-service
+spec:
+  configuration:
+    exclude:
+      # Exclude step_image_registries for now since it can cause false
+      # positives due to https://issues.redhat.com/browse/OCPBUGS-8428
+      - hermetic_build_task
+      - tasks.required_tasks_found:prefetch-dependencies
+      - step_image_registries
+    include:
+      - '@redhat'
+  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  publicKey: k8s://openshift-pipelines/public-key
+  sources:
+    - data:
+        - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -70,7 +95,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -96,7 +121,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-ff054961/production/components/enterprise-contract/kustomize.out.yaml
262c262
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
288c288
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
312,339c312
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: redhat-no-hermetic
<   namespace: enterprise-contract-service
< spec:
<   configuration:
<     exclude:
<     - hermetic_build_task
<     - tasks.required_tasks_found:prefetch-dependencies
<     - step_image_registries
<     include:
<     - '@redhat'
<   description: Includes most of the rules and policies required internally by Red
<     Hat when building Red Hat products. It excludes the requirement of hermetic builds.
<     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
<     If a different policy configuration is desired, this resource can serve as a starting
<     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - data:
<     - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
367c340
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-secrets-migration batch/v1, Kind=Job) container "chains-secret-migration" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/production/components/has/production/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/production/components/sprayproxy/production/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/production/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from ff054961 to 1d23d4a9 on Mon Sep 25 14:44:01 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 4bb1ec38..01d3cd39 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -24,7 +24,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -47,7 +47,32 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
+      name: Default
+      policy:
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
+---
+apiVersion: appstudio.redhat.com/v1alpha1
+kind: EnterpriseContractPolicy
+metadata:
+  name: redhat-no-hermetic
+  namespace: enterprise-contract-service
+spec:
+  configuration:
+    exclude:
+      # Exclude step_image_registries for now since it can cause false
+      # positives due to https://issues.redhat.com/browse/OCPBUGS-8428
+      - hermetic_build_task
+      - tasks.required_tasks_found:prefetch-dependencies
+      - step_image_registries
+    include:
+      - '@redhat'
+  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  publicKey: k8s://openshift-pipelines/public-key
+  sources:
+    - data:
+        - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -70,7 +95,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -96,7 +121,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-ff054961/staging/components/enterprise-contract/kustomize.out.yaml
262c262
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
288c288
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
312,339c312
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: redhat-no-hermetic
<   namespace: enterprise-contract-service
< spec:
<   configuration:
<     exclude:
<     - hermetic_build_task
<     - tasks.required_tasks_found:prefetch-dependencies
<     - step_image_registries
<     include:
<     - '@redhat'
<   description: Includes most of the rules and policies required internally by Red
<     Hat when building Red Hat products. It excludes the requirement of hermetic builds.
<     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
<     If a different policy configuration is desired, this resource can serve as a starting
<     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - data:
<     - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
367c340
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/staging/components/has/staging/kustomize.out.yaml: (object: application-service/application-service-controller-manager apps/v1, Kind=Deployment) object has 3 replicas but does not specify inter pod anti-affinity (check: no-anti-affinity, remediation: Specify anti-affinity in your pod specification to ensure that the orchestrator attempts to schedule replicas on different nodes. Using podAntiAffinity, specify a labelSelector that matches pods for the deployment, and set the topologyKey to kubernetes.io/hostname. Refer to https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) Duplicate environment variable GH_APP_WEBHOOK_SECRET in container "sprayproxy" found (check: duplicate-env-var, remediation: Confirm that your DeploymentLike doesn't have duplicate env vars names.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-metrics" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from ff054961 to 1d23d4a9 on Mon Sep 25 14:44:01 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 4bb1ec38..01d3cd39 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -24,7 +24,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -47,7 +47,32 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
+      name: Default
+      policy:
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
+---
+apiVersion: appstudio.redhat.com/v1alpha1
+kind: EnterpriseContractPolicy
+metadata:
+  name: redhat-no-hermetic
+  namespace: enterprise-contract-service
+spec:
+  configuration:
+    exclude:
+      # Exclude step_image_registries for now since it can cause false
+      # positives due to https://issues.redhat.com/browse/OCPBUGS-8428
+      - hermetic_build_task
+      - tasks.required_tasks_found:prefetch-dependencies
+      - step_image_registries
+    include:
+      - '@redhat'
+  description: Includes most of the rules and policies required internally by Red Hat when building Red Hat products. It excludes the requirement of hermetic builds. Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
+  publicKey: k8s://openshift-pipelines/public-key
+  sources:
+    - data:
+        - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -70,7 +95,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
@@ -96,7 +121,7 @@ spec:
   sources:
     - data:
         - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
-        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
       name: Default
       policy:
         - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-ff054961/development/components/enterprise-contract/kustomize.out.yaml
262c262
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
288c288
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
312,339c312
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-89e9175@sha256:5b58d42b9392263eab7824ab5278e3a0e9ff57243c189ef63d24bf2867abf128
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: redhat-no-hermetic
<   namespace: enterprise-contract-service
< spec:
<   configuration:
<     exclude:
<     - hermetic_build_task
<     - tasks.required_tasks_found:prefetch-dependencies
<     - step_image_registries
<     include:
<     - '@redhat'
<   description: Includes most of the rules and policies required internally by Red
<     Hat when building Red Hat products. It excludes the requirement of hermetic builds.
<     Available collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections.
<     If a different policy configuration is desired, this resource can serve as a starting
<     point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules.
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - data:
<     - github.com/release-engineering/rhtap-ec-policy//data?ref=be7e1ef73bdeef2752dde400a52f9eab9b7542ca
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0
367c340
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:dc89022688fef704e1d092d312ebceaf457e4b07594746c3dfb1231eb71e452a
---
>     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest@sha256:85431601d5d50520d6de63f649d37943a68c86de0a62228dab30a7774fa074c0 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-1d23d4a9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-1d23d4a9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-1d23d4a9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-1d23d4a9/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.) 
```
 
</details> 
<br> 


</div>
