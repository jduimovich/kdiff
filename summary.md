# kustomize changes per commits 
## https://github.com/redhat-appstudio/infra-deployments.gits 
<details> 
<summary>Changes in diff-02bc30d-464feb1-kustomize with 46 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-464feb1/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-02bc30d/components/pipeline-service/staging/stone-stg-m01/kustomize.out
2392,2412d2391
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "1"
<   name: tekton-results-s3
<   namespace: tekton-results
< spec:
<   dataFrom:
<   - extract:
<       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-s3
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: tekton-results-s3
< ---
diff -r /home/john/dev/kdiff/kustomized-cache/tag-464feb1/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-02bc30d/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
2392,2412d2391
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "1"
<   name: tekton-results-s3
<   namespace: tekton-results
< spec:
<   dataFrom:
<   - extract:
<       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-s3
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: tekton-results-s3
< --- </pre> 
</details>
<details> 
<summary>Changes in diff-03f761b-c58d62a-kustomize with 43 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-c58d62a/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-03f761b/app-of-apps-staging.yaml
1035a1036,1076
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
>   name: tekton-ci
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/tekton-ci: "true"
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
>         - .imagePullSecrets[] | select(.name | startswith("pipeline-dockercfg"))
>         kind: ServiceAccount
>         name: pipeline
>       project: default
>       source:
>         path: components/tekton-ci
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
>         - CreateNamespace=true </pre> 
</details>
<details> 
<summary>Changes in diff-0779fbd-4213c81-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-07d3eba-f688f21-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-0ab3610-9b2f2da-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-9b2f2da/components/has/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-0ab3610/components/has/staging/kustomize.out
683c683
<         image: quay.io/redhat-appstudio/application-service:86e2cdb03d7379474c2ba2f8a267ed97b48bac9b
---
>         image: quay.io/redhat-appstudio/application-service:7c9be3eb116b9a58b962142cf1efb8470c5ab77b </pre> 
</details>
<details> 
<summary>Changes in diff-0d0b5d3-4e1fd72-kustomize with 29 lines changed </summary>  
<pre> diff -r ../kustomized-cache/tag-4e1fd72/components/build-templates/kustomize.out ../kustomized-cache/tag-0d0b5d3/components/build-templates/kustomize.out
49a50,62
> kind: ClusterRole
> metadata:
>   name: cm-reader
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - list
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
89a103,115
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: cm-reader
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: cm-reader
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: system:authenticated </pre> 
</details>
<details> 
<summary>Changes in diff-0ed82ee-d2f9528-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-d2f9528/components/build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-0ed82ee/components/build-service/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:ef9cb03abdc3988a0eea946de59fd2f62430d726
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6655bacbd4493f8dd01909554d5fc225d4dd888b
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:ef9cb03abdc3988a0eea946de59fd2f62430d726
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6655bacbd4493f8dd01909554d5fc225d4dd888b
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:ef9cb03abdc3988a0eea946de59fd2f62430d726
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6655bacbd4493f8dd01909554d5fc225d4dd888b
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:ef9cb03abdc3988a0eea946de59fd2f62430d726
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6655bacbd4493f8dd01909554d5fc225d4dd888b </pre> 
</details>
<details> 
<summary>Changes in diff-0ff1733-decfc8a-kustomize with 265 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-decfc8a/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-0ff1733/components/authentication/staging/kustomize.out
846,847d845
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
863,864d860
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff -r /home/john/dev/kdiff/kustomized-cache/tag-decfc8a/components/gitops/staging/stone-stg-m01/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-0ff1733/components/gitops/staging/stone-stg-m01/kustomize.out
4,5d3
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
11,12d8
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
19d14
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
155d149
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
224d217
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
479d471
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
573d564
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
627,628d617
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
635,636d623
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
643,644d629
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
651,652d635
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
691,692d673
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
731,732d711
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
771,772d749
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
990,991d966
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1002,1003d976
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1022,1023d994
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1163,1164d1133
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1175,1176d1143
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1195,1196d1161
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1282,1283d1246
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1294,1295d1256
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1314,1315d1274
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1330,1331d1288
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1346,1347d1302
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1362,1363d1316
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1377,1378d1329
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1392,1393d1342
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1407,1408d1355
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1422,1423d1368
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1437,1438d1381
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1465,1466d1407
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1486,1487d1426
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1507,1508d1445
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1515,1516d1451
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1539,1540d1473
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1563,1564d1495
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1587,1588d1517
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1601d1529
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1664,1665d1591
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1677,1678d1602
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1755,1756d1678
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1768,1769d1689
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1852,1853d1771
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2040d1957
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff -r /home/john/dev/kdiff/kustomized-cache/tag-decfc8a/components/gitops/staging/stone-stg-rh01/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-0ff1733/components/gitops/staging/stone-stg-rh01/kustomize.out
4,5d3
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
11,12d8
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
19d14
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
155d149
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
224d217
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
479d471
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
573d564
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
627,628d617
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
635,636d623
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
643,644d629
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
651,652d635
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
691,692d673
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
731,732d711
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
771,772d749
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
990,991d966
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1002,1003d976
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1022,1023d994
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1163,1164d1133
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1175,1176d1143
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1195,1196d1161
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1282,1283d1246
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1294,1295d1256
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1314,1315d1274
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1330,1331d1288
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1346,1347d1302
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1362,1363d1316
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1377,1378d1329
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1392,1393d1342
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1407,1408d1355
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1422,1423d1368
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1437,1438d1381
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1465,1466d1407
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1486,1487d1426
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1507,1508d1445
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1515,1516d1451
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1539,1540d1473
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1563,1564d1495
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1587,1588d1517
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1601d1529
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1664,1665d1591
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1677,1678d1602
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1755,1756d1678
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1768,1769d1689
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1852,1853d1771
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2040d1957
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true </pre> 
</details>
<details> 
<summary>Changes in diff-11246c6-3eba9dd-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-12b42d5-4e6107e-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-4e6107e/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-12b42d5/components/build-service/staging/kustomize.out
522c522
<         image: quay.io/redhat-appstudio/build-service:1b9be3cdafb7b0da494bf9f4c968055623aceacc
---
>         image: quay.io/redhat-appstudio/build-service:10a1ad9cea5cbc0f6c5946148c5f2f7fcdd60b91 </pre> 
</details>
<details> 
<summary>Changes in diff-171c845-12b42d5-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-1b55274-0d0b5d3-kustomize with 696 lines changed </summary>  
<pre> diff -r ../kustomized-cache/tag-0d0b5d3/components/gitops/kustomize.out ../kustomized-cache/tag-1b55274/components/gitops/kustomize.out
65c65
<                   is left blank. Optional.
---
>                   is left blank.
68,69c68,69
<                     description: 'Branch corresponds to the branch in the repository
<                       that should be used Example: devel. Optional.'
---
>                     description: Branch corresponds to the branch in the repository
>                       that should be used
72,73c72,73
<                     description: 'Context corresponds to the context within the repository
<                       that should be used Example: folderA/folderB/gitops. Optional.'
---
>                     description: Context corresponds to the context within the repository
>                       that should be used
76,80c76
<                     description: 'URL refers to the repository URL that should be
<                       used. If not specified, a GitOps repository under the $GITHUB_ORG
<                       (defaults to redhat-appstudio-appdata) organization on GitHub
<                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
<                       Required.'
---
>                     description: URL refers to the repository URL that should be used.
87d82
<                   Optional.
91c86
<                   be deployed with in App Studio. Required.
---
>                   be deployed with in App Studio.
96c91
<                   A repository will be generated if this field is left blank. Optional.
---
>                   A repository will be generated if this field is left blank.
99,100c94,95
<                     description: 'Branch corresponds to the branch in the repository
<                       that should be used Example: devel. Optional.'
---
>                     description: Branch corresponds to the branch in the repository
>                       that should be used
103,104c98,99
<                     description: 'Context corresponds to the context within the repository
<                       that should be used Example: folderA/folderB/gitops. Optional.'
---
>                     description: Context corresponds to the context within the repository
>                       that should be used
107,111c102
<                     description: 'URL refers to the repository URL that should be
<                       used. If not specified, a GitOps repository under the $GITHUB_ORG
<                       (defaults to redhat-appstudio-appdata) organization on GitHub
<                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
<                       Required.'
---
>                     description: URL refers to the repository URL that should be used.
123c114,116
<                 description: Conditions is an array of the Application's status conditions
---
>                 description: 'INSERT ADDITIONAL STATUS FIELD - define observed state
>                   of cluster Important: Run "make" to regenerate code after modifying
>                   this file'
268c261
<                 description: Git Source for a Component. Required.
---
>                 description: Git Source for a Component
271,272c264,265
<                     description: 'A relative path inside the git repo containing the
<                       component Example: folderA/folderB/gitops. Optional.'
---
>                     description: A relative path inside the git repo containing the
>                       component
275,277c268,269
<                     description: 'If specified, the devfile at the URL will be used
<                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                       Optional.'
---
>                     description: If specified, the devfile at the URL will be used
>                       for the component.
281c273
<                       for the component. Optional.
---
>                       for the component.
284,285c276,277
<                     description: 'Specify a branch/tag/commit id. If not specified,
<                       default is `main`/`master`. Example: devel. Optional.'
---
>                     description: Specify a branch/tag/commit id. If not specified,
>                       default is `main`/`master`.
295,297c287,288
<                 description: Secret describes the name of an optional Kubernetes secret
<                   containing a Personal Access Token to access the git repostiory.
<                   Optional.
---
>                 description: Secret describes the name of a Kubernetes secret containing
>                   a Personal Access Token to access the git repostiory
316,317c307
<                           description: Application is the name of the application
<                             resource that the component belongs to. Required.
---
>                           description: Application to add the component to
322,323c312
<                             added to the Application. The name must adhere to DNS-1123
<                             validation. Required.
---
>                             added to the HASApplication
328,330c317,318
<                           description: 'The container image to build or create the
<                             component from Example: quay.io/someorg/somerepository:latest.
<                             Optional.'
---
>                           description: The container image to build or create the
>                             component from
334c322
<                             the component (ValueFrom not currently supported) Optional
---
>                             the component
450c438
<                             with. Optional.
---
>                             with
453,454c441
<                           description: Compute Resources required by this component.
<                             Optional.
---
>                           description: Compute Resources required by this component
481c468
<                           description: The route to expose the component with. Optional.
---
>                           description: The route to expose the component with
488,489c475
<                             container image (if using an Image-source component).
<                             Optional.'
---
>                             container image (if using an Image-source component).'
494d479
<                             Optional.
497c482
<                           description: Source describes the Component source. Optional.
---
>                           description: Source describes the Component source
500c485
<                               description: Git Source for a Component. Optional.
---
>                               description: Git Source for a Component
503,505c488,489
<                                   description: 'A relative path inside the git repo
<                                     containing the component Example: folderA/folderB/gitops.
<                                     Optional.'
---
>                                   description: A relative path inside the git repo
>                                     containing the component
508,510c492,493
<                                   description: 'If specified, the devfile at the URL
<                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                                     Optional.'
---
>                                   description: If specified, the devfile at the URL
>                                     will be used for the component.
514c497
<                                     URL will be used for the component. Optional.
---
>                                     URL will be used for the component.
517,519c500,501
<                                   description: 'Specify a branch/tag/commit id. If
<                                     not specified, default is `main`/`master`. Example:
<                                     devel. Optional.'
---
>                                   description: Specify a branch/tag/commit id. If
>                                     not specified, default is `main`/`master`.
530c512
<                           description: The port to expose the component over. Optional.
---
>                           description: The port to expose the component over
541,542c523,524
<                       description: 'Language specifies the language of the component
<                         detected Example: JavaScript'
---
>                       description: Language specifies the language of the component
>                         detected
546c528
<                         component detected Example Node.JS
---
>                         component detected
553,554c535
<                 description: Conditions is an array of the ComponentDetectionQuery's
<                   status conditions
---
>                 description: Condition about the Component CR
692,693c673
<                 description: Application is the name of the application resource that
<                   the component belongs to. Required.
---
>                 description: Application to add the component to
698c678
<                   the Application. The name must adhere to DNS-1123 validation. Required.
---
>                   the HASApplication
703,704c683,684
<                 description: 'The container image to build or create the component
<                   from Example: quay.io/someorg/somerepository:latest. Optional.'
---
>                 description: The container image to build or create the component
>                   from
708d687
<                   (ValueFrom not currently supported) Optional
813,814c792
<                 description: The number of replicas to deploy the component with.
<                   Optional.
---
>                 description: The number of replicas to deploy the component with
817c795
<                 description: Compute Resources required by this component. Optional.
---
>                 description: Compute Resources required by this component
843c821
<                 description: The route to expose the component with. Optional.
---
>                 description: The route to expose the component with
850c828
<                   component). Optional.'
---
>                   component).'
854c832
<                   for the Component. Defaults to false. Optional.
---
>                   for the Component. Defaults to false.
857c835
<                 description: Source describes the Component source. Optional.
---
>                 description: Source describes the Component source
860c838
<                     description: Git Source for a Component. Optional.
---
>                     description: Git Source for a Component
863,864c841,842
<                         description: 'A relative path inside the git repo containing
<                           the component Example: folderA/folderB/gitops. Optional.'
---
>                         description: A relative path inside the git repo containing
>                           the component
867,869c845,846
<                         description: 'If specified, the devfile at the URL will be
<                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                           Optional.'
---
>                         description: If specified, the devfile at the URL will be
>                           used for the component.
873c850
<                           be used for the component. Optional.
---
>                           be used for the component.
876,877c853,854
<                         description: 'Specify a branch/tag/commit id. If not specified,
<                           default is `main`/`master`. Example: devel. Optional.'
---
>                         description: Specify a branch/tag/commit id. If not specified,
>                           default is `main`/`master`.
888c865
<                 description: The port to expose the component over. Optional.
---
>                 description: The port to expose the component over
898c875
<                 description: Conditions is an array of the Component's status conditions
---
>                 description: Condition about the Component CR
978c955
<                     description: Branch is the git branch used for the gitops repository
---
>                     description: Branch is the branch used for the gitops repository
1111,1114d1087
<                       allowInsecureSkipTLSVerify:
<                         description: Indicates that ArgoCD/GitOps Service should not
<                           check the TLS certificate.
<                         type: boolean
1133d1105
<                     - allowInsecureSkipTLSVerify
1378,1385c1350
<   - additionalPrinterColumns:
<     - jsonPath: .status.sync.status
<       name: Sync Status
<       type: string
<     - jsonPath: .status.health.status
<       name: Health Status
<       type: string
<     name: v1alpha1
---
>   - name: v1alpha1
1440,1450d1404
<               syncPolicy:
<                 description: SyncPolicy controls when and how a sync will be performed.
<                 properties:
<                   syncOptions:
<                     description: Options allow you to specify whole app sync-options.
<                       This option may be empty, if and when it is empty it is considered
<                       that there are no SyncOptions present.
<                     items:
<                       type: string
<                     type: array
<                 type: object
1986c1940
<                   (defined in the namespace) involved in the binding. Required
---
>                   (defined in the namespace) involved in the binding
1989c1943
<                 description: Components contains individual component data. Required.
---
>                 description: Components contains individual component data
1997c1951
<                         values from Application/Environment/Component. Optional
---
>                         values from Application/Environment/Component
2001c1955
<                             for the component. Optional.
---
>                             for the component
2023c1977
<                             by the component. Optional.
---
>                             by the component
2061c2015
<                   namespace) that the binding will deploy to. Required
---
>                   namespace) that the binding will deploy to
2066c2020
<                   the Application. Required
---
>                   the Application
2855,2862d2808
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
3528c3474
<         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
---
>         image: quay.io/redhat-appstudio/gitops-service:677d2d90488f6e9eb35eeca557bd0dcae798bf13
3610c3556
<         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
---
>         image: quay.io/redhat-appstudio/gitops-service:677d2d90488f6e9eb35eeca557bd0dcae798bf13
3692c3638
<         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
---
>         image: quay.io/redhat-appstudio/gitops-service:677d2d90488f6e9eb35eeca557bd0dcae798bf13
diff -r ../kustomized-cache/tag-0d0b5d3/components/gitops/staging/kustomize.out ../kustomized-cache/tag-1b55274/components/gitops/staging/kustomize.out
65c65
<                   is left blank. Optional.
---
>                   is left blank.
68,69c68,69
<                     description: 'Branch corresponds to the branch in the repository
<                       that should be used Example: devel. Optional.'
---
>                     description: Branch corresponds to the branch in the repository
>                       that should be used
72,73c72,73
<                     description: 'Context corresponds to the context within the repository
<                       that should be used Example: folderA/folderB/gitops. Optional.'
---
>                     description: Context corresponds to the context within the repository
>                       that should be used
76,80c76
<                     description: 'URL refers to the repository URL that should be
<                       used. If not specified, a GitOps repository under the $GITHUB_ORG
<                       (defaults to redhat-appstudio-appdata) organization on GitHub
<                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
<                       Required.'
---
>                     description: URL refers to the repository URL that should be used.
87d82
<                   Optional.
91c86
<                   be deployed with in App Studio. Required.
---
>                   be deployed with in App Studio.
96c91
<                   A repository will be generated if this field is left blank. Optional.
---
>                   A repository will be generated if this field is left blank.
99,100c94,95
<                     description: 'Branch corresponds to the branch in the repository
<                       that should be used Example: devel. Optional.'
---
>                     description: Branch corresponds to the branch in the repository
>                       that should be used
103,104c98,99
<                     description: 'Context corresponds to the context within the repository
<                       that should be used Example: folderA/folderB/gitops. Optional.'
---
>                     description: Context corresponds to the context within the repository
>                       that should be used
107,111c102
<                     description: 'URL refers to the repository URL that should be
<                       used. If not specified, a GitOps repository under the $GITHUB_ORG
<                       (defaults to redhat-appstudio-appdata) organization on GitHub
<                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
<                       Required.'
---
>                     description: URL refers to the repository URL that should be used.
123c114,116
<                 description: Conditions is an array of the Application's status conditions
---
>                 description: 'INSERT ADDITIONAL STATUS FIELD - define observed state
>                   of cluster Important: Run "make" to regenerate code after modifying
>                   this file'
268c261
<                 description: Git Source for a Component. Required.
---
>                 description: Git Source for a Component
271,272c264,265
<                     description: 'A relative path inside the git repo containing the
<                       component Example: folderA/folderB/gitops. Optional.'
---
>                     description: A relative path inside the git repo containing the
>                       component
275,277c268,269
<                     description: 'If specified, the devfile at the URL will be used
<                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                       Optional.'
---
>                     description: If specified, the devfile at the URL will be used
>                       for the component.
281c273
<                       for the component. Optional.
---
>                       for the component.
284,285c276,277
<                     description: 'Specify a branch/tag/commit id. If not specified,
<                       default is `main`/`master`. Example: devel. Optional.'
---
>                     description: Specify a branch/tag/commit id. If not specified,
>                       default is `main`/`master`.
295,297c287,288
<                 description: Secret describes the name of an optional Kubernetes secret
<                   containing a Personal Access Token to access the git repostiory.
<                   Optional.
---
>                 description: Secret describes the name of a Kubernetes secret containing
>                   a Personal Access Token to access the git repostiory
316,317c307
<                           description: Application is the name of the application
<                             resource that the component belongs to. Required.
---
>                           description: Application to add the component to
322,323c312
<                             added to the Application. The name must adhere to DNS-1123
<                             validation. Required.
---
>                             added to the HASApplication
328,330c317,318
<                           description: 'The container image to build or create the
<                             component from Example: quay.io/someorg/somerepository:latest.
<                             Optional.'
---
>                           description: The container image to build or create the
>                             component from
334c322
<                             the component (ValueFrom not currently supported) Optional
---
>                             the component
450c438
<                             with. Optional.
---
>                             with
453,454c441
<                           description: Compute Resources required by this component.
<                             Optional.
---
>                           description: Compute Resources required by this component
481c468
<                           description: The route to expose the component with. Optional.
---
>                           description: The route to expose the component with
488,489c475
<                             container image (if using an Image-source component).
<                             Optional.'
---
>                             container image (if using an Image-source component).'
494d479
<                             Optional.
497c482
<                           description: Source describes the Component source. Optional.
---
>                           description: Source describes the Component source
500c485
<                               description: Git Source for a Component. Optional.
---
>                               description: Git Source for a Component
503,505c488,489
<                                   description: 'A relative path inside the git repo
<                                     containing the component Example: folderA/folderB/gitops.
<                                     Optional.'
---
>                                   description: A relative path inside the git repo
>                                     containing the component
508,510c492,493
<                                   description: 'If specified, the devfile at the URL
<                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                                     Optional.'
---
>                                   description: If specified, the devfile at the URL
>                                     will be used for the component.
514c497
<                                     URL will be used for the component. Optional.
---
>                                     URL will be used for the component.
517,519c500,501
<                                   description: 'Specify a branch/tag/commit id. If
<                                     not specified, default is `main`/`master`. Example:
<                                     devel. Optional.'
---
>                                   description: Specify a branch/tag/commit id. If
>                                     not specified, default is `main`/`master`.
530c512
<                           description: The port to expose the component over. Optional.
---
>                           description: The port to expose the component over
541,542c523,524
<                       description: 'Language specifies the language of the component
<                         detected Example: JavaScript'
---
>                       description: Language specifies the language of the component
>                         detected
546c528
<                         component detected Example Node.JS
---
>                         component detected
553,554c535
<                 description: Conditions is an array of the ComponentDetectionQuery's
<                   status conditions
---
>                 description: Condition about the Component CR
692,693c673
<                 description: Application is the name of the application resource that
<                   the component belongs to. Required.
---
>                 description: Application to add the component to
698c678
<                   the Application. The name must adhere to DNS-1123 validation. Required.
---
>                   the HASApplication
703,704c683,684
<                 description: 'The container image to build or create the component
<                   from Example: quay.io/someorg/somerepository:latest. Optional.'
---
>                 description: The container image to build or create the component
>                   from
708d687
<                   (ValueFrom not currently supported) Optional
813,814c792
<                 description: The number of replicas to deploy the component with.
<                   Optional.
---
>                 description: The number of replicas to deploy the component with
817c795
<                 description: Compute Resources required by this component. Optional.
---
>                 description: Compute Resources required by this component
843c821
<                 description: The route to expose the component with. Optional.
---
>                 description: The route to expose the component with
850c828
<                   component). Optional.'
---
>                   component).'
854c832
<                   for the Component. Defaults to false. Optional.
---
>                   for the Component. Defaults to false.
857c835
<                 description: Source describes the Component source. Optional.
---
>                 description: Source describes the Component source
860c838
<                     description: Git Source for a Component. Optional.
---
>                     description: Git Source for a Component
863,864c841,842
<                         description: 'A relative path inside the git repo containing
<                           the component Example: folderA/folderB/gitops. Optional.'
---
>                         description: A relative path inside the git repo containing
>                           the component
867,869c845,846
<                         description: 'If specified, the devfile at the URL will be
<                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                           Optional.'
---
>                         description: If specified, the devfile at the URL will be
>                           used for the component.
873c850
<                           be used for the component. Optional.
---
>                           be used for the component.
876,877c853,854
<                         description: 'Specify a branch/tag/commit id. If not specified,
<                           default is `main`/`master`. Example: devel. Optional.'
---
>                         description: Specify a branch/tag/commit id. If not specified,
>                           default is `main`/`master`.
888c865
<                 description: The port to expose the component over. Optional.
---
>                 description: The port to expose the component over
898c875
<                 description: Conditions is an array of the Component's status conditions
---
>                 description: Condition about the Component CR
978c955
<                     description: Branch is the git branch used for the gitops repository
---
>                     description: Branch is the branch used for the gitops repository
1111,1114d1087
<                       allowInsecureSkipTLSVerify:
<                         description: Indicates that ArgoCD/GitOps Service should not
<                           check the TLS certificate.
<                         type: boolean
1133d1105
<                     - allowInsecureSkipTLSVerify
1378,1385c1350
<   - additionalPrinterColumns:
<     - jsonPath: .status.sync.status
<       name: Sync Status
<       type: string
<     - jsonPath: .status.health.status
<       name: Health Status
<       type: string
<     name: v1alpha1
---
>   - name: v1alpha1
1440,1450d1404
<               syncPolicy:
<                 description: SyncPolicy controls when and how a sync will be performed.
<                 properties:
<                   syncOptions:
<                     description: Options allow you to specify whole app sync-options.
<                       This option may be empty, if and when it is empty it is considered
<                       that there are no SyncOptions present.
<                     items:
<                       type: string
<                     type: array
<                 type: object
1986c1940
<                   (defined in the namespace) involved in the binding. Required
---
>                   (defined in the namespace) involved in the binding
1989c1943
<                 description: Components contains individual component data. Required.
---
>                 description: Components contains individual component data
1997c1951
<                         values from Application/Environment/Component. Optional
---
>                         values from Application/Environment/Component
2001c1955
<                             for the component. Optional.
---
>                             for the component
2023c1977
<                             by the component. Optional.
---
>                             by the component
2061c2015
<                   namespace) that the binding will deploy to. Required
---
>                   namespace) that the binding will deploy to
2066c2020
<                   the Application. Required
---
>                   the Application
2855,2862d2808
<   - namespaces
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - ""
<   resources:
3528c3474
<         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
---
>         image: quay.io/redhat-appstudio/gitops-service:677d2d90488f6e9eb35eeca557bd0dcae798bf13
3610c3556
<         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
---
>         image: quay.io/redhat-appstudio/gitops-service:677d2d90488f6e9eb35eeca557bd0dcae798bf13
3692c3638
<         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
---
>         image: quay.io/redhat-appstudio/gitops-service:677d2d90488f6e9eb35eeca557bd0dcae798bf13 </pre> 
</details>
<details> 
<summary>Changes in diff-2505626-29ad087-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-29ad087/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-2505626/components/build-service/staging/kustomize.out
522c522
<         image: quay.io/redhat-appstudio/build-service:075062f76a17254148d1ec000991a9721e1eb9f9
---
>         image: quay.io/redhat-appstudio/build-service:1b9be3cdafb7b0da494bf9f4c968055623aceacc </pre> 
</details>
<details> 
<summary>Changes in diff-29ad087-b2a44dd-kustomize with 25 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-b2a44dd/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-29ad087/app-of-apps-staging.yaml
699,712c699,702
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/monitoring/prometheus
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
---
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
722c712
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
---
>         path: components/monitoring/prometheus/base </pre> 
</details>
<details> 
<summary>Changes in diff-2a6c94a-a0ba905-kustomize with 52 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-a0ba905/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-2a6c94a/components/jvm-build-service/kustomize.out
64,65d63
<                   commitHash:
<                     type: string
146,147d143
<                   commitHash:
<                     type: string
1023,1024c1019,1021
<         - --v=4
<         - --zap-log-level=info
---
>         - --v=6
>         - --zap-log-level=6
>         - --zap-devel=true
1027,1028c1024,1025
<           value: 9fbebf56d88762c14597b6882dca212b56243d0d
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:9fbebf56d88762c14597b6882dca212b56243d0d
---
>           value: e3b1d16647d9b5b8a3765c91ce1ac7bfc580f14b
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e3b1d16647d9b5b8a3765c91ce1ac7bfc580f14b
1055c1052
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:a0495dac30396027babf6bc4090e88ba44b12a17
1057c1054
<       tag: jdk:7,maven:3.8,ant:1.9.16
---
>       tag: jdk:7,maven:3.8
1059c1056
<       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
---
>       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:a0495dac30396027babf6bc4090e88ba44b12a17
1061c1058
<       tag: jdk:8,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0
1063c1060
<       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
---
>       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:a0495dac30396027babf6bc4090e88ba44b12a17
1065c1062
<       tag: jdk:11,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:11,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0
1067c1064
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:a0495dac30396027babf6bc4090e88ba44b12a17
1069c1066
<       tag: jdk:17,maven:3.8,gradle:7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:17,maven:3.8,gradle:7.4.2;6.9.2,sbt:1.8.0 </pre> 
</details>
<details> 
<summary>Changes in diff-2b0c4ac-2a6c94a-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-2cdb374-eb81ff9-kustomize with 39 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-eb81ff9/components/internal-services/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-2cdb374/components/internal-services/kustomize.out
17,24c17
<   - additionalPrinterColumns:
<     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].status
<       name: Succeeded
<       type: string
<     - jsonPath: .status.conditions[?(@.type=="InternalRequestSucceeded")].reason
<       name: Reason
<       type: string
<     name: v1alpha1
---
>   - name: v1alpha1
27c20
<         description: InternalRequest is the Schema for the internalrequests API.
---
>         description: InternalRequest is the Schema for the internalrequests API
42c35
<             description: InternalRequestSpec defines the desired state of InternalRequest.
---
>             description: InternalRequestSpec defines the desired state of InternalRequest
59c52
<             description: InternalRequestStatus defines the observed state of InternalRequest.
---
>             description: InternalRequestStatus defines the observed state of InternalRequest
61,64d53
<               completionTime:
<                 description: CompletionTime is the time the Release PipelineRun completed
<                 format: date-time
<                 type: string
139c128
<                   Tekton PipelineRun kubebuilder:pruning:PreserveUnknownFields
---
>                   Tekton pipeline kubebuilder:pruning:PreserveUnknownFields
141,145d129
<               startTime:
<                 description: StartTime is the time when the Release PipelineRun was
<                   created and set to run
<                 format: date-time
<                 type: string </pre> 
</details>
<details> 
<summary>Changes in diff-30dea39-7d12f79-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-7d12f79/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-30dea39/app-of-apps-staging.yaml
1011c1011
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
---
>         path: components/quality-dashboard </pre> 
</details>
<details> 
<summary>Changes in diff-33924c8-fa38325-kustomize with 52 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-fa38325/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-33924c8/app-of-apps-staging.yaml
523,568d522
<   name: image-controller
<   namespace: argocd-staging
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
diff -r /home/john/dev/kdiff/kustomized-cache/tag-fa38325/components/cluster-secret-store/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-33924c8/components/cluster-secret-store/staging/kustomize.out
21d20
<     - image-controller
Only in /home/john/dev/kdiff/kustomized-cache/tag-fa38325/components: image-controller </pre> 
</details>
<details> 
<summary>Changes in diff-374b619-cc60e59-kustomize with 1600 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-374b619/app-of-apps-staging.yaml
1,14d0
< apiVersion: v1
< kind: Secret
< metadata:
<   labels:
<     appstudio.redhat.com/host-cluster: "true"
<     argocd.argoproj.io/secret-type: cluster
<   name: cluster-kubernetes.default.svc
<   namespace: argocd-staging
< stringData:
<   config: '{"tlsClientConfig":{"insecure":false}}'
<   name: in-cluster-local
<   server: https://kubernetes.default.svc
< type: Opaque
< ---
16c2
< kind: ApplicationSet
---
> kind: Application
19c5
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
21,47c7,24
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: application-api
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/application-api
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
50c27
< kind: ApplicationSet
---
> kind: Application
53c30
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
55,91c32,49
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: default
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/authentication
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
94c52
< kind: ApplicationSet
---
> kind: Application
97c55
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
99,137c57,76
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: default
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/build-service
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
140c79
< kind: ApplicationSet
---
> kind: Application
143c82
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
145,183c84,103
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: default
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/build-templates
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
186c106
< kind: ApplicationSet
---
> kind: Application
189c109
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
191,265c111,130
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
<         targetRevision: multi-cluster
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
<   namespace: argocd-staging
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: cluster-reg-config
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/cluster-registration
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
268c133
< kind: ApplicationSet
---
> kind: Application
271c136
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
273,306c138,157
<   generators:
<   - clusters:
<       selector:
<         matchExpressions:
<         - key: app.kubernetes.io/name
<           operator: NotIn
<           values:
<           - argocd-default-cluster-config
<         matchLabels:
<           argocd.argoproj.io/secret-type: cluster
<   template:
<     metadata:
<       name: dora-metrics-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: dora-metrics
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/dora-metrics
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: dora-metrics
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/dora-metrics
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
309c160
< kind: ApplicationSet
---
> kind: Application
312c163
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
314,374c165,180
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
<         targetRevision: multi-cluster
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
<   namespace: argocd-staging
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: external-secrets-operator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: external-secrets-operator
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/external-secrets-operator
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: enterprise-contract-service
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/enterprise-contract
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
377c183
< kind: ApplicationSet
---
> kind: Application
380c186
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
382,424c188,207
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: staging
<             sourceRoot: components/gitops
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: gitops
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/gitops
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
427c210
< kind: ApplicationSet
---
> kind: Application
430c213
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
432,460c215,234
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: hac-pact-broker-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: hac-pact-broker
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/hac-pact-broker
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: hac-pact-broker
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/hac-pact-broker
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
463c237
< kind: ApplicationSet
---
> kind: Application
466c240
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
468,504c242,259
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: application-service
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/has
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
507c262
< kind: ApplicationSet
---
> kind: Application
510c265
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
512,538c267,284
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: integration-service
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/integration
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
541c287
< kind: ApplicationSet
---
> kind: Application
544c290
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
546,572c292,309
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: internal-services
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/internal-services
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
575c312
< kind: ApplicationSet
---
> kind: Application
578c315
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
580,608c317,336
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: jvm-build-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/jvm-build-service
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: default
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/jvm-build-service
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
611c339
< kind: ApplicationSet
---
> kind: Application
614c342
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
616,642c344,361
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: monitoring-workload-grafana-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: appstudio-workload-monitoring
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/monitoring/grafana/base
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: appstudio-workload-monitoring
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/monitoring/grafana/base
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
645c364
< kind: ApplicationSet
---
> kind: Application
648c367
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
650,676c369,386
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: monitoring-workload-logging-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: appstudio-workload-monitoring
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/monitoring/logging/base
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: appstudio-workload-monitoring
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/monitoring/logging/base
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
679c389
< kind: ApplicationSet
---
> kind: Application
682c392
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
684,710c394,411
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: monitoring-workload-prometheus-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: appstudio-workload-monitoring
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/monitoring/prometheus/base
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: appstudio-workload-monitoring
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/monitoring/prometheus/base
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
713c414
< kind: ApplicationSet
---
> kind: Application
716c417
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
718,760c419,438
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: staging
<             sourceRoot: components/pipeline-service
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: default
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/pipeline-service
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
763c441
< kind: ApplicationSet
---
> kind: Application
766c444
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
768,796c446,504
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: quality-dashboard-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: quality-dashboard
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/quality-dashboard
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: quality-dashboard
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/quality-dashboard
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: Application
> metadata:
>   name: rekor
>   namespace: openshift-gitops
> spec:
>   destination:
>     namespace: enterprise-contract-service
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     helm:
>       valueFiles:
>       - values.yaml
>       values: |-
>         server:
>           strategy:
>             type: Recreate
>           ingress:
>             hostname: rekor-server.enterprise-contract-service.svc
>             annotations:
>               route.openshift.io/termination: "edge"
>         mysql:
>           auth:
>             password: "password"
>     path: helm-charts/rekor
>     repoURL: https://github.com/sigstore/sigstore-helm-operator
>     targetRevision: 143b8d71fc861d7c7ac93a15d0fbd33654b75908
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
799c507
< kind: ApplicationSet
---
> kind: Application
802c510
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
804,830c512,529
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: release-service
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/release
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
833c532
< kind: ApplicationSet
---
> kind: Application
836c535
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
838,866c537,556
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: shared-resources-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/shared-resources
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: default
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/shared-resources
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
869c559
< kind: ApplicationSet
---
> kind: Application
872c562
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
874,914c564,581
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: base
<             environment: staging
<             sourceRoot: components/spi/overlays
<       - list:
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
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
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: spi-system
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/spi/overlays/staging
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
917c584
< kind: ApplicationSet
---
> kind: Application
920c587
<   namespace: argocd-staging
---
>   namespace: openshift-gitops
922,984c589,606
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/member-cluster: "true"
<   template:
<     metadata:
<       name: spi-vault-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: spi-vault
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/spi-vault
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
<   namespace: argocd-staging
< spec:
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/host-cluster: "true"
<   template:
<     metadata:
<       name: sprayproxy-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: sprayproxy
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/sprayproxy
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: multi-cluster
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
---
>   destination:
>     namespace: spi-vault
>     server: https://kubernetes.default.svc
>   project: default
>   source:
>     path: components/spi-vault
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 15s
>       limit: 50
>     syncOptions:
>     - CreateNamespace=true
987c609
< kind: ApplicationSet
---
> kind: Application
989a612
>   namespace: openshift-gitops
991,1025c614,639
<   generators:
<   - clusters:
<       selector:
<         matchLabels:
<           appstudio.redhat.com/tekton-ci: "true"
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
<         - .imagePullSecrets[] | select(.name | startswith("pipeline-dockercfg"))
<         kind: ServiceAccount
<         name: pipeline
<       project: default
<       source:
<         path: components/tekton-ci
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
---
>   destination:
>     namespace: tekton-ci
>     server: https://kubernetes.default.svc
>   ignoreDifferences:
>   - group: ""
>     jqPathExpressions:
>     - .imagePullSecrets[] | select(.name | startswith("pipeline-dockercfg"))
>     kind: ServiceAccount
>     name: pipeline
>   project: default
>   source:
>     path: components/tekton-ci
>     repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>     targetRevision: main
>   syncPolicy:
>     automated:
>       prune: true
>       selfHeal: true
>     retry:
>       backoff:
>         duration: 10s
>         factor: 2
>         maxDuration: 3m
>       limit: -1
>     syncOptions:
>     - CreateNamespace=true
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/authentication: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/authentication: staging
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/build-service: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/build-service: staging
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/build-templates: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/build-templates: staging
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components: cluster-secret-store
diff -r /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/dev-sso/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/dev-sso/kustomize.out
6,7d5
<   labels:
<     appstudio.redhat.com/keycloak: dev
23c21
<       appstudio.redhat.com/keycloak: dev
---
>       app.kubernetes.io/instance: dev-sso
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components: external-secrets-operator
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/gitops: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/gitops/staging: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/gitops/staging: stone-stg-m01
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/gitops/staging: stone-stg-rh01
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/has: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/has: staging
Only in /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/pipeline-service: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components/pipeline-service: staging
Only in /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/components: sprayproxy </pre> 
</details>
<details> 
<summary>Changes in diff-3a04f8f-57af6e4-kustomize with 32 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-57af6e4/components/pipeline-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-3a04f8f/components/pipeline-service/kustomize.out
172,179d171
<   name: pipeline-service-exporter
<   namespace: openshift-pipelines
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1314,1328d1305
<   name: prometheus-pipeline-service-exporter-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pipeline-service-exporter-reader
< subjects:
< - kind: ServiceAccount
<   name: pipeline-service-exporter
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1809c1786
<       - image: quay.io/redhat-pipeline-service/metrics-exporter:f008a14
---
>       - image: quay.io/redhat-pipeline-service/metrics-exporter:65e8e6d
1821d1797
<       serviceAccountName: pipeline-service-exporter </pre> 
</details>
<details> 
<summary>Changes in diff-3eba9dd-d20d117-kustomize with 103 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-d20d117/components/shared-resources/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-3eba9dd/components/shared-resources/kustomize.out
0a1,9
> apiVersion: v1
> kind: Namespace
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   labels:
>     argocd.argoproj.io/managed-by: openshift-gitops
>   name: test-team
> ---
352a362,364
>   - snyk-shared-secret
>   - redhat-appstudio-staginguser
>   - test-team-snyk
386a399,423
>   name: shared-resource-redhat-appstudio-staginguser
> rules:
> - apiGroups:
>   - sharedresource.openshift.io
>   resourceNames:
>   - infra-deployments-pr-creator
>   - redhat-appstudio-staginguser
>   resources:
>   - sharedsecrets
>   verbs:
>   - use
> - apiGroups:
>   - security.openshift.io
>   resourceNames:
>   - csi-scc
>   resources:
>   - securitycontextconstraints
>   verbs:
>   - use
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
450a488,502
>   name: shared-resource-redhat-appstudio-staginguser
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: shared-resource-redhat-appstudio-staginguser
> subjects:
> - kind: ServiceAccount
>   name: pipeline
>   namespace: tekton-ci
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
774a827,848
>   name: infra-deployments-pr-creator
> spec:
>   secretRef:
>     name: infra-deployments-pr-creator
>     namespace: build-templates
> ---
> apiVersion: sharedresource.openshift.io/v1alpha1
> kind: SharedSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: redhat-appstudio-staginguser
> spec:
>   secretRef:
>     name: noop
>     namespace: tekton-ci
> ---
> apiVersion: sharedresource.openshift.io/v1alpha1
> kind: SharedSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
779a854,875
> ---
> apiVersion: sharedresource.openshift.io/v1alpha1
> kind: SharedSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: snyk-shared-secret
> spec:
>   secretRef:
>     name: snyk-shared-secret
>     namespace: test-team
> ---
> apiVersion: sharedresource.openshift.io/v1alpha1
> kind: SharedSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: test-team-snyk
> spec:
>   secretRef:
>     name: snyk-shared-secret
>     namespace: test-team </pre> 
</details>
<details> 
<summary>Changes in diff-4213c81-be64ed0-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-43080c8-48bd358-kustomize with 7 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-48bd358/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-43080c8/components/jvm-build-service/kustomize.out
1039,1040c1039,1040
<           value: 48dc87180fc211ddebd79d85bb394a8f3f057ad2
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:48dc87180fc211ddebd79d85bb394a8f3f057ad2
---
>           value: 3b4e904fb3567649f539aa4ab0b51de27318d64a
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:3b4e904fb3567649f539aa4ab0b51de27318d64a </pre> 
</details>
<details> 
<summary>Changes in diff-464feb1-719738d-kustomize with 10 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-719738d/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-464feb1/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1314c1314
<   name: pipeline-service-exporter-reader-binding
---
>   name: prometheus-pipeline-service-exporter-reader
diff -r /home/john/dev/kdiff/kustomized-cache/tag-719738d/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-464feb1/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1314c1314
<   name: pipeline-service-exporter-reader-binding
---
>   name: prometheus-pipeline-service-exporter-reader </pre> 
</details>
<details> 
<summary>Changes in diff-46ad72a-bf722ff-kustomize with 52 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-bf722ff/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-46ad72a/components/authentication/staging/kustomize.out
704a705,727
>   name: tekton-ci-maintainers
>   namespace: tekton-ci
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: Michkov
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: psturc
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jinqi7
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
diff -r /home/john/dev/kdiff/kustomized-cache/tag-bf722ff/components/tekton-ci/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-46ad72a/components/tekton-ci/kustomize.out
20,44d19
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-ci-maintainers
<   namespace: tekton-ci
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: component-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sbose78
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: Michkov
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: psturc
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jinqi7
< --- </pre> 
</details>
<details> 
<summary>Changes in diff-476e728-11246c6-kustomize with 83 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-11246c6/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-476e728/components/authentication/staging/kustomize.out
81a82,97
>   name: quality-dashboard-maintainer
>   namespace: quality-dashboard
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - create
>   - delete
>   - edit
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
587a604,626
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: quality-dashboard-maintainers
>   namespace: quality-dashboard
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: quality-dashboard-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: rhopp
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: flacatus
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jkopriva
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sawood14012
diff -r /home/john/dev/kdiff/kustomized-cache/tag-11246c6/components/quality-dashboard/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-476e728/components/quality-dashboard/staging/kustomize.out
8,46d7
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: quality-dashboard-maintainer
<   namespace: quality-dashboard
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - create
<   - delete
<   - edit
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: quality-dashboard-maintainers
<   namespace: quality-dashboard
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: quality-dashboard-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: rhopp
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: flacatus
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jkopriva
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: sawood14012
< --- </pre> 
</details>
<details> 
<summary>Changes in diff-48b7e3c-3a04f8f-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-3a04f8f/components/build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-48b7e3c/components/build-service/kustomize.out
522c522
<         image: quay.io/redhat-appstudio/build-service:18f3a4539bb7950967d9f0b3fd4ff29eec85b82e
---
>         image: quay.io/redhat-appstudio/build-service:d02e2a69c094a73b59d5cdf6a6fabef90d44ff9b </pre> 
</details>
<details> 
<summary>Changes in diff-48bd358-0ff1733-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-0ff1733/components/integration/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-48bd358/components/integration/kustomize.out
1024c1024
<         image: quay.io/redhat-appstudio/integration-service:464ba9a20822fa69afa71a76f72cb6b678cae753
---
>         image: quay.io/redhat-appstudio/integration-service:64f8f5ac9528a5134e4957c7604c443cfbaad83d </pre> 
</details>
<details> 
<summary>Changes in diff-4ca3754-b084f07-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-4e1fd72-c9c8ac4-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-4e6107e-46ad72a-kustomize with 122 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-46ad72a/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-4e6107e/app-of-apps-staging.yaml
274,284c274,278
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
---
>   - clusters:
>       selector:
>         matchExpressions:
>         - key: app.kubernetes.io/name
>           operator: NotIn
286,292c280,282
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/dora-metrics
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
---
>           - argocd-default-cluster-config
>         matchLabels:
>           argocd.argoproj.io/secret-type: cluster
302c292
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
---
>         path: components/dora-metrics
774a765,800
>   name: quality-dashboard
>   namespace: argocd-staging
> spec:
>   generators:
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
>   template:
>     metadata:
>       name: quality-dashboard-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: quality-dashboard
>         server: '{{server}}'
>       project: default
>       source:
>         path: components/quality-dashboard
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
945,989d970
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
<   name: quality-dashboard
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/quality-dashboard: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/quality-dashboard
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: quality-dashboard-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: quality-dashboard
<         server: '{{server}}'
<       project: default
<       source:
<         path: components/quality-dashboard
Only in /home/john/dev/kdiff/kustomized-cache/tag-4e6107e/components/dora-metrics: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-46ad72a/components/dora-metrics: staging
Only in /home/john/dev/kdiff/kustomized-cache/tag-4e6107e/components/quality-dashboard: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-46ad72a/components/quality-dashboard: staging </pre> 
</details>
<details> 
<summary>Changes in diff-4ea9589-0779fbd-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-0779fbd/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-4ea9589/components/build-service/staging/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:f2a0ead05a0541629bed57062cdd48d02efcad14
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:f2a0ead05a0541629bed57062cdd48d02efcad14
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:f2a0ead05a0541629bed57062cdd48d02efcad14
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:f2a0ead05a0541629bed57062cdd48d02efcad14
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0 </pre> 
</details>
<details> 
<summary>Changes in diff-5230727-de8e8c0-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-de8e8c0/components/build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-5230727/components/build-service/kustomize.out
522c522
<         image: quay.io/redhat-appstudio/build-service:60a92916feb3080c8769de1db392a0b1ab21d857
---
>         image: quay.io/redhat-appstudio/build-service:18f3a4539bb7950967d9f0b3fd4ff29eec85b82e </pre> 
</details>
<details> 
<summary>Changes in diff-526e0d2-4ea9589-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-4ea9589/components/integration/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-526e0d2/components/integration/kustomize.out
1024c1024
<         image: quay.io/redhat-appstudio/integration-service:14a0355396cafcd3ee51c5385eb0094f8866979f
---
>         image: quay.io/redhat-appstudio/integration-service:464ba9a20822fa69afa71a76f72cb6b678cae753 </pre> 
</details>
<details> 
<summary>Changes in diff-55a828b-d75b32d-kustomize with 2 lines changed </summary>  
<pre> Only in /home/john/dev/kdiff/kustomized-cache/tag-55a828b/components/tekton-ci: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-d75b32d/components/tekton-ci: staging </pre> 
</details>
<details> 
<summary>Changes in diff-5770370-0ab3610-kustomize with 9 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-0ab3610/components/enterprise-contract/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-5770370/components/enterprise-contract/kustomize.out
212c212
<   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:a634cec992e37014c232bf56c75f6b5004c142067fdbefa1b5509ca2e025cc89
---
>   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:76c0adc3ea2e662f30d850243ab91df32c1d722a13e0b3f30a6431207323d7a6
235c235
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:16703532b485c4edd3cbe47f62d44a51be4b7390b663e86eb5a7372ba9ecae52
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:7779b9074fd58693fda5657422be1b025b876a880c058a29360b8383a511f687 </pre> 
</details>
<details> 
<summary>Changes in diff-57af6e4-c77a8eb-kustomize with 18 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-c77a8eb/components/integration/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-57af6e4/components/integration/kustomize.out
442c442
<   - integrationtestscenarios
---
>   - integrationTestScenarios
454,461d453
<   - integrationtestscenarios/status
<   verbs:
<   - get
<   - patch
<   - update
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
992c984
<         image: quay.io/redhat-appstudio/integration-service:2afed2d3c1c4e79e2c692e68f50a1fedf7e6d9bf
---
>         image: quay.io/redhat-appstudio/integration-service:456ee6807aeea9d6f471b8a2076c34d8f77f755f </pre> 
</details>
<details> 
<summary>Changes in diff-58c00f5-374b619-kustomize with 11 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-374b619/components/tekton-ci/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-58c00f5/components/tekton-ci/kustomize.out
128,136d127
<   name: image-controller
< spec:
<   url: https://github.com/redhat-appstudio/image-controller
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true </pre> 
</details>
<details> 
<summary>Changes in diff-5bab796-d614b96-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-66e0e1c-fc2e37a-kustomize with 825 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-fc2e37a/components/release/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-66e0e1c/components/release/kustomize.out
1237c1237,1238
<   release-attempts.json: |
---
>   release-attempts.json: |2
> 
1263a1265
>       "id": 10,
1272c1274
<           "description": "",
---
>           "description": "Total number of releases processed by the operator",
1278d1279
<               "decimals": 0,
1288,1289c1289
<               },
<               "unit": "none"
---
>               }
1294,1295c1294,1295
<             "h": 3,
<             "w": 3,
---
>             "h": 5,
>             "w": 5,
1307c1307
<                 "max"
---
>                 "lastNotNull"
1322,1324c1322
<               "exemplar": false,
<               "expr": "sum(increase(release_attempt_total[$__range]))",
<               "instant": true,
---
>               "expr": "release_attempt_total",
1326c1324
<               "range": false,
---
>               "range": true,
1338c1336
<           "description": "",
---
>           "description": "Total number of releases processed by the operator",
1342c1340,1341
<                 "mode": "thresholds"
---
>                 "fixedColor": "red",
>                 "mode": "fixed"
1344a1344
>               "min": 0,
1349c1349
<                     "color": "green",
---
>                     "color": "semi-dark-red",
1351,1354d1350
<                   },
<                   {
<                     "color": "red",
<                     "value": 80
1357c1353,1354
<               }
---
>               },
>               "unit": "none"
1362,1364c1359,1361
<             "h": 6,
<             "w": 6,
<             "x": 3,
---
>             "h": 5,
>             "w": 5,
>             "x": 5,
1367,1368c1364
<           "id": 16,
<           "maxDataPoints": 25,
---
>           "id": 12,
1370,1372c1366,1368
<             "displayMode": "gradient",
<             "minVizHeight": 10,
<             "minVizWidth": 0,
---
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
1376c1372
<                 "max"
---
>                 "lastNotNull"
1381c1377
<             "showUnfilled": true
---
>             "textMode": "auto"
1391,1395c1387,1388
<               "exemplar": false,
<               "expr": "sum without(instance,namespace,pod) (release_attempt_running_seconds_bucket{job=\"release-service-controller-manager-metrics-service\"})",
<               "format": "heatmap",
<               "instant": false,
<               "legendFormat": "{{le}}",
---
>               "expr": "release_attempt_total{succeeded=\"false\"}",
>               "legendFormat": "__auto",
1400,1401c1393,1394
<           "title": "Time to start running releases",
<           "type": "bargauge"
---
>           "title": "Total number failed releases",
>           "type": "stat"
1408c1401
<           "description": "",
---
>           "description": "Total number of concurrent release attempts",
1432,1434c1425,1427
<             "h": 6,
<             "w": 6,
<             "x": 9,
---
>             "h": 5,
>             "w": 4,
>             "x": 10,
1437,1438c1430
<           "id": 15,
<           "maxDataPoints": 25,
---
>           "id": 2,
1440,1442c1432,1434
<             "displayMode": "gradient",
<             "minVizHeight": 10,
<             "minVizWidth": 0,
---
>             "colorMode": "value",
>             "graphMode": "none",
>             "justifyMode": "auto",
1446c1438
<                 "max"
---
>                 "lastNotNull"
1451c1443
<             "showUnfilled": true
---
>             "textMode": "auto"
1461,1465c1453,1454
<               "exemplar": false,
<               "expr": "sum without(instance,pod,strategy,succeeded,target) (release_attempt_duration_seconds_bucket{reason=\"Succeeded\"})",
<               "format": "heatmap",
<               "instant": false,
<               "legendFormat": "{{le}}",
---
>               "expr": "sum(release_attempt_concurrent_requests)",
>               "legendFormat": "__auto",
1470,1471c1459,1460
<           "title": "Time to complete releases",
<           "type": "bargauge"
---
>           "title": "Concurrent requests",
>           "type": "stat"
1478c1467
<           "description": "",
---
>           "description": "Total number of releases processed by the operator",
1482,1512c1471
<                 "mode": "palette-classic"
<               },
<               "custom": {
<                 "axisCenteredZero": false,
<                 "axisColorMode": "text",
<                 "axisLabel": "",
<                 "axisPlacement": "auto",
<                 "barAlignment": 0,
<                 "drawStyle": "line",
<                 "fillOpacity": 0,
<                 "gradientMode": "none",
<                 "hideFrom": {
<                   "legend": false,
<                   "tooltip": false,
<                   "viz": false
<                 },
<                 "lineInterpolation": "linear",
<                 "lineWidth": 2,
<                 "pointSize": 5,
<                 "scaleDistribution": {
<                   "type": "linear"
<                 },
<                 "showPoints": "auto",
<                 "spanNulls": true,
<                 "stacking": {
<                   "group": "A",
<                   "mode": "none"
<                 },
<                 "thresholdsStyle": {
<                   "mode": "off"
<                 }
---
>                 "mode": "thresholds"
1514a1474
>               "noValue": "0%",
1523,1539d1482
<               }
<             },
<             "overrides": [
<               {
<                 "matcher": {
<                   "id": "byName",
<                   "options": "Error"
<                 },
<                 "properties": [
<                   {
<                     "id": "color",
<                     "value": {
<                       "fixedColor": "red",
<                       "mode": "fixed"
<                     }
<                   }
<                 ]
1541,1684c1484
<               {
<                 "matcher": {
<                   "id": "byName",
<                   "options": "Requeue"
<                 },
<                 "properties": [
<                   {
<                     "id": "color",
<                     "value": {
<                       "fixedColor": "yellow",
<                       "mode": "fixed"
<                     }
<                   }
<                 ]
<               },
<               {
<                 "matcher": {
<                   "id": "byName",
<                   "options": "Requeue after"
<                 },
<                 "properties": [
<                   {
<                     "id": "color",
<                     "value": {
<                       "fixedColor": "purple",
<                       "mode": "fixed"
<                     }
<                   }
<                 ]
<               },
<               {
<                 "matcher": {
<                   "id": "byName",
<                   "options": "Success"
<                 },
<                 "properties": [
<                   {
<                     "id": "color",
<                     "value": {
<                       "fixedColor": "green",
<                       "mode": "fixed"
<                     }
<                   }
<                 ]
<               }
<             ]
<           },
<           "gridPos": {
<             "h": 6,
<             "w": 9,
<             "x": 15,
<             "y": 0
<           },
<           "id": 19,
<           "options": {
<             "legend": {
<               "calcs": [],
<               "displayMode": "list",
<               "placement": "bottom",
<               "showLegend": true
<             },
<             "tooltip": {
<               "mode": "single",
<               "sort": "none"
<             }
<           },
<           "pluginVersion": "9.1.6",
<           "targets": [
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"error\"})",
<               "hide": false,
<               "legendFormat": "Error",
<               "range": true,
<               "refId": "A"
<             },
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"requeue\"})",
<               "hide": false,
<               "legendFormat": "Requeue",
<               "range": true,
<               "refId": "B"
<             },
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"requeue_after\"})",
<               "hide": false,
<               "legendFormat": "Requeue after",
<               "range": true,
<               "refId": "C"
<             },
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "expr": "sum(controller_runtime_reconcile_total{controller=\"release\",result=\"success\"})",
<               "legendFormat": "Success",
<               "range": true,
<               "refId": "D"
<             }
<           ],
<           "title": "Total number of reconciles by type",
<           "type": "timeseries"
<         },
<         {
<           "datasource": {
<             "type": "prometheus",
<             "uid": "PF224BEF3374A25F8"
<           },
<           "description": "",
<           "fieldConfig": {
<             "defaults": {
<               "color": {
<                 "fixedColor": "red",
<                 "mode": "fixed"
<               },
<               "decimals": 0,
<               "mappings": [],
<               "min": 0,
<               "thresholds": {
<                 "mode": "absolute",
<                 "steps": [
<                   {
<                     "color": "semi-dark-red",
<                     "value": null
<                   }
<                 ]
<               },
<               "unit": "none"
---
>               "unit": "percentunit"
1689,1692c1489,1492
<             "h": 3,
<             "w": 3,
<             "x": 0,
<             "y": 3
---
>             "h": 5,
>             "w": 5,
>             "x": 14,
>             "y": 0
1694c1494
<           "id": 12,
---
>           "id": 11,
1698c1498
<             "justifyMode": "center",
---
>             "justifyMode": "auto",
1702c1502
<                 "max"
---
>                 "lastNotNull"
1718,1719c1518,1520
<               "expr": "sum(increase(release_attempt_total{succeeded=\"false\"}[$__range]))",
<               "instant": true,
---
>               "expr": "release_attempt_total{succeeded=\"true\"} / release_attempt_total",
>               "instant": false,
>               "interval": "",
1721c1522
<               "range": false,
---
>               "range": true,
1725c1526
<           "title": "Total number failed releases",
---
>           "title": "Percentage of successful releases",
1733c1534
<           "description": "",
---
>           "description": "Total number of releases processed by the operator",
1737c1538,1539
<                 "mode": "thresholds"
---
>                 "fixedColor": "orange",
>                 "mode": "fixed"
1739d1540
<               "decimals": 0,
1741c1542,1543
<               "noValue": "0%",
---
>               "min": 0,
>               "noValue": "0",
1746c1548
<                     "color": "green",
---
>                     "color": "semi-dark-red",
1751c1553
<               "unit": "percentunit"
---
>               "unit": "none"
1756,1759c1558,1561
<             "h": 3,
<             "w": 3,
<             "x": 0,
<             "y": 6
---
>             "h": 5,
>             "w": 5,
>             "x": 19,
>             "y": 0
1761c1563
<           "id": 11,
---
>           "id": 14,
1769c1571
<                 "max"
---
>                 "lastNotNull"
1784,1787c1586
<               "exemplar": false,
<               "expr": "sum(increase(release_attempt_total{succeeded=\"true\"}[$__range])) / sum(increase(release_attempt_total[$__range]))",
<               "instant": true,
<               "interval": "",
---
>               "expr": "release_attempt_invalid_total",
1789,1950d1587
<               "range": false,
<               "refId": "A"
<             }
<           ],
<           "title": "Percentage of successful releases",
<           "type": "stat"
<         },
<         {
<           "datasource": {
<             "type": "prometheus",
<             "uid": "PF224BEF3374A25F8"
<           },
<           "description": "",
<           "fieldConfig": {
<             "defaults": {
<               "custom": {
<                 "hideFrom": {
<                   "legend": false,
<                   "tooltip": false,
<                   "viz": false
<                 },
<                 "scaleDistribution": {
<                   "type": "linear"
<                 }
<               }
<             },
<             "overrides": []
<           },
<           "gridPos": {
<             "h": 9,
<             "w": 6,
<             "x": 3,
<             "y": 6
<           },
<           "id": 13,
<           "maxDataPoints": 15,
<           "options": {
<             "calculate": false,
<             "cellGap": 1,
<             "color": {
<               "exponent": 0.5,
<               "fill": "dark-orange",
<               "mode": "scheme",
<               "reverse": false,
<               "scale": "exponential",
<               "scheme": "Oranges",
<               "steps": 64
<             },
<             "exemplars": {
<               "color": "rgba(255,0,255,0.7)"
<             },
<             "filterValues": {
<               "le": 1e-9
<             },
<             "legend": {
<               "show": false
<             },
<             "rowsFrame": {
<               "layout": "auto"
<             },
<             "tooltip": {
<               "show": true,
<               "yHistogram": false
<             },
<             "yAxis": {
<               "axisPlacement": "left",
<               "reverse": false
<             }
<           },
<           "pluginVersion": "9.1.6",
<           "targets": [
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "expr": "sum(increase(release_attempt_running_seconds_bucket[$__interval])) by(le)",
<               "format": "heatmap",
<               "legendFormat": "{{le}}",
<               "range": true,
<               "refId": "A"
<             }
<           ],
<           "title": "Time to start running releases",
<           "type": "heatmap"
<         },
<         {
<           "datasource": {
<             "type": "prometheus",
<             "uid": "PF224BEF3374A25F8"
<           },
<           "description": "",
<           "fieldConfig": {
<             "defaults": {
<               "custom": {
<                 "hideFrom": {
<                   "legend": false,
<                   "tooltip": false,
<                   "viz": false
<                 },
<                 "scaleDistribution": {
<                   "type": "linear"
<                 }
<               }
<             },
<             "overrides": []
<           },
<           "gridPos": {
<             "h": 9,
<             "w": 6,
<             "x": 9,
<             "y": 6
<           },
<           "id": 4,
<           "maxDataPoints": 15,
<           "options": {
<             "calculate": false,
<             "cellGap": 1,
<             "color": {
<               "exponent": 0.5,
<               "fill": "dark-orange",
<               "mode": "scheme",
<               "reverse": false,
<               "scale": "exponential",
<               "scheme": "Oranges",
<               "steps": 64
<             },
<             "exemplars": {
<               "color": "rgba(255,0,255,0.7)"
<             },
<             "filterValues": {
<               "le": 1e-9
<             },
<             "legend": {
<               "show": false
<             },
<             "rowsFrame": {
<               "layout": "auto"
<             },
<             "tooltip": {
<               "show": true,
<               "yHistogram": false
<             },
<             "yAxis": {
<               "axisPlacement": "left",
<               "reverse": false
<             }
<           },
<           "pluginVersion": "9.1.6",
<           "targets": [
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "exemplar": false,
<               "expr": "sum(increase(release_attempt_duration_seconds_bucket[$__interval])) by(le)",
<               "format": "heatmap",
<               "instant": false,
<               "legendFormat": "{{le}}",
1955,1956c1592,1593
<           "title": "Time to complete releases",
<           "type": "heatmap"
---
>           "title": "Total number failed releases",
>           "type": "stat"
1962a1600
>           "description": "Release durations from the moment the release resource was created til the release is marked as running",
1966,1999c1604
<                 "mode": "palette-classic"
<               },
<               "custom": {
<                 "axisCenteredZero": false,
<                 "axisColorMode": "text",
<                 "axisLabel": "",
<                 "axisPlacement": "auto",
<                 "barAlignment": 0,
<                 "drawStyle": "line",
<                 "fillOpacity": 0,
<                 "gradientMode": "none",
<                 "hideFrom": {
<                   "legend": false,
<                   "tooltip": false,
<                   "viz": false
<                 },
<                 "lineInterpolation": "linear",
<                 "lineStyle": {
<                   "fill": "solid"
<                 },
<                 "lineWidth": 2,
<                 "pointSize": 5,
<                 "scaleDistribution": {
<                   "type": "linear"
<                 },
<                 "showPoints": "auto",
<                 "spanNulls": true,
<                 "stacking": {
<                   "group": "A",
<                   "mode": "none"
<                 },
<                 "thresholdsStyle": {
<                   "mode": "off"
<                 }
---
>                 "mode": "thresholds"
2001d1605
<               "decimals": 0,
2020,2085c1624,1625
<             "h": 6,
<             "w": 9,
<             "x": 15,
<             "y": 6
<           },
<           "id": 18,
<           "options": {
<             "legend": {
<               "calcs": [],
<               "displayMode": "list",
<               "placement": "bottom",
<               "showLegend": false
<             },
<             "tooltip": {
<               "mode": "single",
<               "sort": "none"
<             }
<           },
<           "targets": [
<             {
<               "datasource": {
<                 "type": "prometheus",
<                 "uid": "PF224BEF3374A25F8"
<               },
<               "editorMode": "code",
<               "expr": "sum(workqueue_retries_total{name=\"release\"})",
<               "legendFormat": "__auto",
<               "range": true,
<               "refId": "A"
<             }
<           ],
<           "title": "Workqueue retries",
<           "type": "timeseries"
<         },
<         {
<           "datasource": {
<             "type": "prometheus",
<             "uid": "PF224BEF3374A25F8"
<           },
<           "description": "",
<           "fieldConfig": {
<             "defaults": {
<               "color": {
<                 "fixedColor": "orange",
<                 "mode": "fixed"
<               },
<               "decimals": 0,
<               "mappings": [],
<               "min": 0,
<               "noValue": "0",
<               "thresholds": {
<                 "mode": "absolute",
<                 "steps": [
<                   {
<                     "color": "semi-dark-red",
<                     "value": null
<                   }
<                 ]
<               },
<               "unit": "none"
<             },
<             "overrides": []
<           },
<           "gridPos": {
<             "h": 3,
<             "w": 3,
---
>             "h": 8,
>             "w": 12,
2087c1627
<             "y": 9
---
>             "y": 5
2089c1629
<           "id": 14,
---
>           "id": 4,
2091,2093c1631,1633
<             "colorMode": "value",
<             "graphMode": "none",
<             "justifyMode": "auto",
---
>             "displayMode": "gradient",
>             "minVizHeight": 10,
>             "minVizWidth": 0,
2097c1637
<                 "max"
---
>                 "lastNotNull"
2102c1642
<             "textMode": "auto"
---
>             "showUnfilled": true
2111,2116c1651,1655
<               "editorMode": "code",
<               "exemplar": false,
<               "expr": "sum(increase(release_attempt_invalid_total[$__range]))",
<               "instant": true,
<               "legendFormat": "__auto",
<               "range": false,
---
>               "editorMode": "builder",
>               "expr": "release_attempt_duration_seconds_bucket",
>               "format": "heatmap",
>               "legendFormat": "{{le}}",
>               "range": true,
2120,2121c1659,1660
<           "title": "Total number of invalid releases",
<           "type": "stat"
---
>           "title": "Time to complete releases",
>           "type": "bargauge"
2128c1667
<           "description": "",
---
>           "description": "Release durations from the moment the release resource was created til the release is marked as running",
2152,2155c1691,1694
<             "h": 3,
<             "w": 3,
<             "x": 0,
<             "y": 12
---
>             "h": 8,
>             "w": 12,
>             "x": 12,
>             "y": 5
2157c1696
<           "id": 2,
---
>           "id": 13,
2159,2161c1698,1700
<             "colorMode": "value",
<             "graphMode": "none",
<             "justifyMode": "auto",
---
>             "displayMode": "gradient",
>             "minVizHeight": 10,
>             "minVizWidth": 0,
2170c1709
<             "textMode": "auto"
---
>             "showUnfilled": true
2180,2181c1719,1721
<               "expr": "sum(release_attempt_concurrent_requests)",
<               "legendFormat": "__auto",
---
>               "expr": "release_attempt_running_seconds_bucket",
>               "format": "heatmap",
>               "legendFormat": "{{le}}",
2186,2187c1726,1727
<           "title": "Concurrent requests",
<           "type": "stat"
---
>           "title": "Time to start running releases",
>           "type": "bargauge"
2198c1738
<         "from": "now-30d",
---
>         "from": "now-24h",
2205c1745
<       "version": 1,
---
>       "version": 15,
2311c1851
<         image: quay.io/redhat-appstudio/release-service:81cc3ef994613642f08ca9c84aad7881304d3168
---
>         image: quay.io/redhat-appstudio/release-service:3aedd895b70ed464c53624489fa4b8f5140a1091 </pre> 
</details>
<details> 
<summary>Changes in diff-695626b-a2cb230-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-a2cb230/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-695626b/components/build-service/staging/kustomize.out
522c522
<         image: quay.io/redhat-appstudio/build-service:51bde3e05dfe291d2b7cb8d9099192bb6351526c
---
>         image: quay.io/redhat-appstudio/build-service:075062f76a17254148d1ec000991a9721e1eb9f9 </pre> 
</details>
<details> 
<summary>Changes in diff-6c9a49a-2cdb374-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-2cdb374/components/build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-6c9a49a/components/build-service/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e051ad5066a7d6bcdb26a00a00b51daf58d40652
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e051ad5066a7d6bcdb26a00a00b51daf58d40652
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e051ad5066a7d6bcdb26a00a00b51daf58d40652
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e051ad5066a7d6bcdb26a00a00b51daf58d40652 </pre> 
</details>
<details> 
<summary>Changes in diff-704d64c-48b7e3c-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-719738d-cba76ff-kustomize with 25 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-cba76ff/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-719738d/app-of-apps-staging.yaml
722,730c722
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
---
>           elements: []
774,782c766
<           elements:
<           - nameNormalized: stone-stg-m01
<             values.clusterDir: stone-stg-m01
<           - nameNormalized: stone-stg-rh01
<             values.clusterDir: stone-stg-rh01
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
---
>           elements: [] </pre> 
</details>
<details> 
<summary>Changes in diff-7af66b5-80b1a0d-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-80b1a0d/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-7af66b5/components/build-service/staging/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:549b18485f1624d2585a096e3b93424076a43b48
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:f2a0ead05a0541629bed57062cdd48d02efcad14
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:549b18485f1624d2585a096e3b93424076a43b48
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:f2a0ead05a0541629bed57062cdd48d02efcad14
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:549b18485f1624d2585a096e3b93424076a43b48
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:f2a0ead05a0541629bed57062cdd48d02efcad14
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:549b18485f1624d2585a096e3b93424076a43b48
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:f2a0ead05a0541629bed57062cdd48d02efcad14 </pre> 
</details>
<details> 
<summary>Changes in diff-7d12f79-2505626-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-7f409a7-cd9888b-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-cd9888b/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-7f409a7/components/build-service/staging/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:4104361804a104899371e0fd2f7179cf2c6b07d1
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:ef9cb03abdc3988a0eea946de59fd2f62430d726
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:4104361804a104899371e0fd2f7179cf2c6b07d1
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:ef9cb03abdc3988a0eea946de59fd2f62430d726
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:4104361804a104899371e0fd2f7179cf2c6b07d1
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:ef9cb03abdc3988a0eea946de59fd2f62430d726
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:4104361804a104899371e0fd2f7179cf2c6b07d1
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:ef9cb03abdc3988a0eea946de59fd2f62430d726 </pre> 
</details>
<details> 
<summary>Changes in diff-80b1a0d-33924c8-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-81cbdd7-93721b3-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-888c6f0-7f409a7-kustomize with 42 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-7f409a7/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-888c6f0/app-of-apps-staging.yaml
409,412d408
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
749,752d744
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
873,876d864
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
<           - nameNormalized: stone-prd-rh01
<             values.clusterDir: stone-prd-rh01
943,956c931,934
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/host-cluster: "true"
<           values:
<             clusterDir: base
<             environment: staging
<             sourceRoot: components/sprayproxy
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
---
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/host-cluster: "true"
966c944
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
---
>         path: components/sprayproxy
Only in /home/john/dev/kdiff/kustomized-cache/tag-888c6f0/components/sprayproxy: kustomize.out
Only in /home/john/dev/kdiff/kustomized-cache/tag-7f409a7/components/sprayproxy: staging </pre> 
</details>
<details> 
<summary>Changes in diff-88a4a3f-ac6e749-kustomize with 25 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-ac6e749/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-88a4a3f/app-of-apps-staging.yaml
711,724c711,714
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/member-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/monitoring/prometheus
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
---
>   - clusters:
>       selector:
>         matchLabels:
>           appstudio.redhat.com/member-cluster: "true"
734c724
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
---
>         path: components/monitoring/logging/base </pre> 
</details>
<details> 
<summary>Changes in diff-8d05e7a-c662270-kustomize with 13 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-c662270/components/enterprise-contract/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-8d05e7a/components/enterprise-contract/kustomize.out
212c212
<   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:76c0adc3ea2e662f30d850243ab91df32c1d722a13e0b3f30a6431207323d7a6
---
>   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:6f4dad9b165576680fd20ce6b9b78ede9aceec0035d6212f833cb2504aa1bb30
232c232
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:2321f0c6e9367d9e203dfbd17455cb0238d4c9b55e61e11ab659948d9bb8af9e
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:59b9caa14e241454950f82ae1b54ce0a21063c279db1b6148a7b983c9b6c1bee
235c235
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:7779b9074fd58693fda5657422be1b025b876a880c058a29360b8383a511f687
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:c16fc87e87bb97169726322a05bf2e5eb228d1bbd4abc34c9912fbe4f4011b1f </pre> 
</details>
<details> 
<summary>Changes in diff-8fb8d98-81cbdd7-kustomize with 3 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-81cbdd7/components/cluster-secret-store/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-8fb8d98/components/cluster-secret-store/staging/kustomize.out
20d19
<     - tekton-ci </pre> 
</details>
<details> 
<summary>Changes in diff-90de354-55a828b-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-93721b3-66e0e1c-kustomize with 9 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-66e0e1c/components/quality-dashboard/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-93721b3/components/quality-dashboard/staging/kustomize.out
119c119
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:00b4fcbfee90cf4edb5eb332467648dfed031ad3
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:dea0b94a906b57aa8de117296bc9d5c7946060d5
201c201
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:00b4fcbfee90cf4edb5eb332467648dfed031ad3
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:dea0b94a906b57aa8de117296bc9d5c7946060d5 </pre> 
</details>
<details> 
<summary>Changes in diff-9484583-dfb33dc-kustomize with 9 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-dfb33dc/components/quality-dashboard/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-9484583/components/quality-dashboard/kustomize.out
119c119
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:dea0b94a906b57aa8de117296bc9d5c7946060d5
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:b124604afa730718b2dbe80e1d3132a67764fb7f
201c201
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:dea0b94a906b57aa8de117296bc9d5c7946060d5
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:b124604afa730718b2dbe80e1d3132a67764fb7f </pre> 
</details>
<details> 
<summary>Changes in diff-95985e0-2b0c4ac-kustomize with 157 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-2b0c4ac/components/pipeline-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-95985e0/components/pipeline-service/kustomize.out
678,708d677
<   name: pipeline-service-exporter-reader
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - services
<   - namespaces
<   - endpoints
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   - taskruns
<   verbs:
<   - get
<   - list
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
856,873d824
<   name: tekton-chains-public-key-viewer
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - public-key
<   resources:
<   - secrets
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1194,1209d1144
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-chains-public-key-viewer
<   namespace: tekton-chains
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-chains-public-key-viewer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
1638,1655d1572
<     app: pipeline-metrics-exporter
<   name: pipeline-metrics-exporter-service
<   namespace: openshift-pipelines
< spec:
<   ports:
<   - name: metrics
<     port: 9117
<     protocol: TCP
<     targetPort: 9117
<   selector:
<     app: pipeline-metrics-exporter
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
1771,1803d1687
<   name: pipeline-metrics-exporter
<   namespace: openshift-pipelines
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: pipeline-metrics-exporter
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         app: pipeline-metrics-exporter
<     spec:
<       containers:
<       - image: quay.io/redhat-pipeline-service/metrics-exporter:65e8e6d
<         name: pipeline-metrics-exporter
<         ports:
<         - containerPort: 9117
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 100m
<             memory: 64Mi
<       restartPolicy: Always
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2030d1913
<     argocd.argoproj.io/sync-wave: "3"
2370a2254
>     argocd.argoproj.io/hook: PostSync
2372d2255
<     argocd.argoproj.io/sync-wave: "2"
2421d2303
<     argocd.argoproj.io/sync-wave: "1"
2439,2443c2321
<           if [[ -n $SIG_KEY_DATA ]]; then
<             echo "Signing secret exists."
<           else
<             # To make this run conveniently without user input let's create a random password
<             RANDOM_PASS=$( head -c 12 /dev/urandom | base64 )
---
>           [[ -n $SIG_KEY_DATA ]] && echo "Signing secret exists." && exit
2445,2447c2323,2324
<             # Generate the key pair secret directly in the cluster.
<             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair k8s://tekton-chains/signing-secrets
<           fi
---
>           # To make this run conveniently without user input let's create a random password
>           RANDOM_PASS=$( head -c 12 /dev/urandom | base64 )
2449,2456c2326,2327
<           # Generate/update the secret with the public key
<           kubectl create secret generic public-key \
<             --namespace tekton-chains \
<             --from-literal=cosign.pub="$(
<               cosign public-key --key k8s://tekton-chains/signing-secrets
<             )" \
<             --dry-run=client \
<             -o yaml | kubectl apply -f -
---
>           # Generates the key pair secret directly in the cluster.
>           env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair k8s://tekton-chains/signing-secrets </pre> 
</details>
<details> 
<summary>Changes in diff-98ce5fb-7af66b5-kustomize with 7 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-7af66b5/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-98ce5fb/components/jvm-build-service/kustomize.out
1039,1040c1039,1040
<           value: 1ebf43a09e758ecb13552fc741683caa2fefb853
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:1ebf43a09e758ecb13552fc741683caa2fefb853
---
>           value: 48dc87180fc211ddebd79d85bb394a8f3f057ad2
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:48dc87180fc211ddebd79d85bb394a8f3f057ad2 </pre> 
</details>
<details> 
<summary>Changes in diff-9b2f2da-88a4a3f-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-9f8089b-43080c8-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-43080c8/components/release/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-9f8089b/components/release/kustomize.out
2311c2311
<         image: quay.io/redhat-appstudio/release-service:0d1556017d4c19a1ae9e6cafc9c7a60cd9a316f8
---
>         image: quay.io/redhat-appstudio/release-service:81cc3ef994613642f08ca9c84aad7881304d3168 </pre> 
</details>
<details> 
<summary>Changes in diff-a0ba905-cefc822-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-a181b33-c917b93-kustomize with 9 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-c917b93/components/enterprise-contract/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-a181b33/components/enterprise-contract/kustomize.out
229c229,233
<   publicKey: k8s://tekton-chains/public-key
---
>   publicKey: |-
>     -----BEGIN PUBLIC KEY-----
>     MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEODgxyIz09vBqJlXXzjp/X2h17WIt
>     jCVQhnDYVWHvXhw6rgqGeg6NTUxIEhRQqQZaF9mcBotHkuYGJfYZbai+FA==
>     -----END PUBLIC KEY----- </pre> 
</details>
<details> 
<summary>Changes in diff-a2cb230-9f8089b-kustomize with 12 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-9f8089b/components/has/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-a2cb230/components/has/staging/kustomize.out
671,676d670
<         - name: CDQ_GITHUB_TOKEN
<           valueFrom:
<             secretKeyRef:
<               key: cdq-token
<               name: has-github-token
<               optional: true
683c677
<         image: quay.io/redhat-appstudio/application-service:7c9be3eb116b9a58b962142cf1efb8470c5ab77b
---
>         image: quay.io/redhat-appstudio/application-service:2c4594d2b793e50a6203208e920d16bab536446f </pre> 
</details>
<details> 
<summary>Changes in diff-ac6e749-02bc30d-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-b084f07-888c6f0-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-888c6f0/components/has/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-b084f07/components/has/staging/kustomize.out
677c677
<         image: quay.io/redhat-appstudio/application-service:2c4594d2b793e50a6203208e920d16bab536446f
---
>         image: quay.io/redhat-appstudio/application-service:d2edbc61e5e698c36932058e7dd2cd2286811f15 </pre> 
</details>
<details> 
<summary>Changes in diff-b1e43d1-704d64c-kustomize with 3916 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-704d64c/components/gitops/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-b1e43d1/components/gitops/kustomize.out
16a17,1164
>   name: applications.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Application
>     listKind: ApplicationList
>     plural: applications
>     shortNames:
>     - hasapp
>     - ha
>     - app
>     singular: application
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Application is the Schema for the applications API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: ApplicationSpec defines the desired state of Application
>             properties:
>               appModelRepository:
>                 description: AppModelRepository refers to the git repository that
>                   will store the application model (a devfile) Can be the same as
>                   GitOps repository. A repository will be generated if this field
>                   is left blank. Optional.
>                 properties:
>                   branch:
>                     description: 'Branch corresponds to the branch in the repository
>                       that should be used Example: devel. Optional.'
>                     type: string
>                   context:
>                     description: 'Context corresponds to the context within the repository
>                       that should be used Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   url:
>                     description: 'URL refers to the repository URL that should be
>                       used. If not specified, a GitOps repository under the $GITHUB_ORG
>                       (defaults to redhat-appstudio-appdata) organization on GitHub
>                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
>                       Required.'
>                     type: string
>                 required:
>                 - url
>                 type: object
>               description:
>                 description: Description refers to a brief description of the application.
>                   Optional.
>                 type: string
>               displayName:
>                 description: DisplayName refers to the name that an application will
>                   be deployed with in App Studio. Required.
>                 type: string
>               gitOpsRepository:
>                 description: GitOpsRepository refers to the git repository that will
>                   store the gitops resources. Can be the same as App Model Repository.
>                   A repository will be generated if this field is left blank. Optional.
>                 properties:
>                   branch:
>                     description: 'Branch corresponds to the branch in the repository
>                       that should be used Example: devel. Optional.'
>                     type: string
>                   context:
>                     description: 'Context corresponds to the context within the repository
>                       that should be used Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   url:
>                     description: 'URL refers to the repository URL that should be
>                       used. If not specified, a GitOps repository under the $GITHUB_ORG
>                       (defaults to redhat-appstudio-appdata) organization on GitHub
>                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
>                       Required.'
>                     type: string
>                 required:
>                 - url
>                 type: object
>             required:
>             - displayName
>             type: object
>           status:
>             description: ApplicationStatus defines the observed state of Application
>             properties:
>               conditions:
>                 description: Conditions is an array of the Application's status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               devfile:
>                 description: Devfile corresponds to the devfile representation of
>                   the Application resource
>                 type: string
>             required:
>             - conditions
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: componentdetectionqueries.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ComponentDetectionQuery
>     listKind: ComponentDetectionQueryList
>     plural: componentdetectionqueries
>     shortNames:
>     - hcdq
>     - compdetection
>     singular: componentdetectionquery
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.conditions[-1].type
>       name: Type
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ComponentDetectionQuery is the Schema for the componentdetectionqueries
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: ComponentDetectionQuerySpec defines the desired state of
>               ComponentDetectionQuery
>             properties:
>               git:
>                 description: Git Source for a Component. Required.
>                 properties:
>                   context:
>                     description: 'A relative path inside the git repo containing the
>                       component Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   devfileUrl:
>                     description: 'If specified, the devfile at the URL will be used
>                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                       Optional.'
>                     type: string
>                   dockerfileUrl:
>                     description: If specified, the dockerfile at the URL will be used
>                       for the component. Optional.
>                     type: string
>                   revision:
>                     description: 'Specify a branch/tag/commit id. If not specified,
>                       default is `main`/`master`. Example: devel. Optional.'
>                     type: string
>                   url:
>                     description: If importing from git, the repository to create the
>                       component from
>                     type: string
>                 required:
>                 - url
>                 type: object
>               secret:
>                 description: Secret describes the name of an optional Kubernetes secret
>                   containing a Personal Access Token to access the git repostiory.
>                   Optional.
>                 type: string
>             required:
>             - git
>             type: object
>           status:
>             description: ComponentDetectionQueryStatus defines the observed state
>               of ComponentDetectionQuery
>             properties:
>               componentDetected:
>                 additionalProperties:
>                   description: ComponentDetectionDescription holds all the information
>                     about the component being detected
>                   properties:
>                     componentStub:
>                       description: ComponentStub is a stub of the component detected
>                         with all the info gathered from the devfile or service detection
>                       properties:
>                         application:
>                           description: Application is the name of the application
>                             resource that the component belongs to. Required.
>                           pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                           type: string
>                         componentName:
>                           description: ComponentName is name of the component to be
>                             added to the Application. The name must adhere to DNS-1123
>                             validation. Required.
>                           maxLength: 63
>                           pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                           type: string
>                         containerImage:
>                           description: 'The container image to build or create the
>                             component from Example: quay.io/someorg/somerepository:latest.
>                             Optional.'
>                           type: string
>                         env:
>                           description: An array of environment variables to add to
>                             the component (ValueFrom not currently supported) Optional
>                           items:
>                             description: EnvVar represents an environment variable
>                               present in a Container.
>                             properties:
>                               name:
>                                 description: Name of the environment variable. Must
>                                   be a C_IDENTIFIER.
>                                 type: string
>                               value:
>                                 description: 'Variable references $(VAR_NAME) are
>                                   expanded using the previously defined environment
>                                   variables in the container and any service environment
>                                   variables. If a variable cannot be resolved, the
>                                   reference in the input string will be unchanged.
>                                   Double $$ are reduced to a single $, which allows
>                                   for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)"
>                                   will produce the string literal "$(VAR_NAME)". Escaped
>                                   references will never be expanded, regardless of
>                                   whether the variable exists or not. Defaults to
>                                   "".'
>                                 type: string
>                               valueFrom:
>                                 description: Source for the environment variable's
>                                   value. Cannot be used if value is not empty.
>                                 properties:
>                                   configMapKeyRef:
>                                     description: Selects a key of a ConfigMap.
>                                     properties:
>                                       key:
>                                         description: The key to select.
>                                         type: string
>                                       name:
>                                         description: 'Name of the referent. More info:
>                                           https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                           TODO: Add other useful fields. apiVersion,
>                                           kind, uid?'
>                                         type: string
>                                       optional:
>                                         description: Specify whether the ConfigMap
>                                           or its key must be defined
>                                         type: boolean
>                                     required:
>                                     - key
>                                     type: object
>                                   fieldRef:
>                                     description: 'Selects a field of the pod: supports
>                                       metadata.name, metadata.namespace, `metadata.labels[''<KEY>'']`,
>                                       `metadata.annotations[''<KEY>'']`, spec.nodeName,
>                                       spec.serviceAccountName, status.hostIP, status.podIP,
>                                       status.podIPs.'
>                                     properties:
>                                       apiVersion:
>                                         description: Version of the schema the FieldPath
>                                           is written in terms of, defaults to "v1".
>                                         type: string
>                                       fieldPath:
>                                         description: Path of the field to select in
>                                           the specified API version.
>                                         type: string
>                                     required:
>                                     - fieldPath
>                                     type: object
>                                   resourceFieldRef:
>                                     description: 'Selects a resource of the container:
>                                       only resources limits and requests (limits.cpu,
>                                       limits.memory, limits.ephemeral-storage, requests.cpu,
>                                       requests.memory and requests.ephemeral-storage)
>                                       are currently supported.'
>                                     properties:
>                                       containerName:
>                                         description: 'Container name: required for
>                                           volumes, optional for env vars'
>                                         type: string
>                                       divisor:
>                                         anyOf:
>                                         - type: integer
>                                         - type: string
>                                         description: Specifies the output format of
>                                           the exposed resources, defaults to "1"
>                                         pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                         x-kubernetes-int-or-string: true
>                                       resource:
>                                         description: 'Required: resource to select'
>                                         type: string
>                                     required:
>                                     - resource
>                                     type: object
>                                   secretKeyRef:
>                                     description: Selects a key of a secret in the
>                                       pod's namespace
>                                     properties:
>                                       key:
>                                         description: The key of the secret to select
>                                           from.  Must be a valid secret key.
>                                         type: string
>                                       name:
>                                         description: 'Name of the referent. More info:
>                                           https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                           TODO: Add other useful fields. apiVersion,
>                                           kind, uid?'
>                                         type: string
>                                       optional:
>                                         description: Specify whether the Secret or
>                                           its key must be defined
>                                         type: boolean
>                                     required:
>                                     - key
>                                     type: object
>                                 type: object
>                             required:
>                             - name
>                             type: object
>                           type: array
>                         replicas:
>                           description: The number of replicas to deploy the component
>                             with. Optional.
>                           type: integer
>                         resources:
>                           description: Compute Resources required by this component.
>                             Optional.
>                           properties:
>                             limits:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Limits describes the maximum amount of
>                                 compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                             requests:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Requests describes the minimum amount
>                                 of compute resources required. If Requests is omitted
>                                 for a container, it defaults to Limits if that is
>                                 explicitly specified, otherwise to an implementation-defined
>                                 value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                           type: object
>                         route:
>                           description: The route to expose the component with. Optional.
>                           type: string
>                         secret:
>                           description: 'Secret describes the name of a Kubernetes
>                             secret containing either: 1. A Personal Access Token to
>                             access the Component''s git repostiory (if using a Git-source
>                             component) or 2. An Image Pull Secret to access the Component''s
>                             container image (if using an Image-source component).
>                             Optional.'
>                           type: string
>                         skipGitOpsResourceGeneration:
>                           description: Whether or not to bypass the generation of
>                             GitOps resources for the Component. Defaults to false.
>                             Optional.
>                           type: boolean
>                         source:
>                           description: Source describes the Component source. Optional.
>                           properties:
>                             git:
>                               description: Git Source for a Component. Optional.
>                               properties:
>                                 context:
>                                   description: 'A relative path inside the git repo
>                                     containing the component Example: folderA/folderB/gitops.
>                                     Optional.'
>                                   type: string
>                                 devfileUrl:
>                                   description: 'If specified, the devfile at the URL
>                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                                     Optional.'
>                                   type: string
>                                 dockerfileUrl:
>                                   description: If specified, the dockerfile at the
>                                     URL will be used for the component. Optional.
>                                   type: string
>                                 revision:
>                                   description: 'Specify a branch/tag/commit id. If
>                                     not specified, default is `main`/`master`. Example:
>                                     devel. Optional.'
>                                   type: string
>                                 url:
>                                   description: If importing from git, the repository
>                                     to create the component from
>                                   type: string
>                               required:
>                               - url
>                               type: object
>                           type: object
>                         targetPort:
>                           description: The port to expose the component over. Optional.
>                           type: integer
>                       required:
>                       - application
>                       - componentName
>                       type: object
>                     devfileFound:
>                       description: DevfileFound tells if a devfile is found in the
>                         component
>                       type: boolean
>                     language:
>                       description: 'Language specifies the language of the component
>                         detected Example: JavaScript'
>                       type: string
>                     projectType:
>                       description: ProjectType specifies the type of project for the
>                         component detected Example Node.JS
>                       type: string
>                   type: object
>                 description: ComponentDetected gives a list of components and the
>                   info from detection
>                 type: object
>               conditions:
>                 description: Conditions is an array of the ComponentDetectionQuery's
>                   status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: components.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Component
>     listKind: ComponentList
>     plural: components
>     shortNames:
>     - hascmp
>     - hc
>     - comp
>     singular: component
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.conditions[-1].type
>       name: Type
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Component is the Schema for the components API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: ComponentSpec defines the desired state of Component
>             properties:
>               application:
>                 description: Application is the name of the application resource that
>                   the component belongs to. Required.
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               componentName:
>                 description: ComponentName is name of the component to be added to
>                   the Application. The name must adhere to DNS-1123 validation. Required.
>                 maxLength: 63
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               containerImage:
>                 description: 'The container image to build or create the component
>                   from Example: quay.io/someorg/somerepository:latest. Optional.'
>                 type: string
>               env:
>                 description: An array of environment variables to add to the component
>                   (ValueFrom not currently supported) Optional
>                 items:
>                   description: EnvVar represents an environment variable present in
>                     a Container.
>                   properties:
>                     name:
>                       description: Name of the environment variable. Must be a C_IDENTIFIER.
>                       type: string
>                     value:
>                       description: 'Variable references $(VAR_NAME) are expanded using
>                         the previously defined environment variables in the container
>                         and any service environment variables. If a variable cannot
>                         be resolved, the reference in the input string will be unchanged.
>                         Double $$ are reduced to a single $, which allows for escaping
>                         the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the
>                         string literal "$(VAR_NAME)". Escaped references will never
>                         be expanded, regardless of whether the variable exists or
>                         not. Defaults to "".'
>                       type: string
>                     valueFrom:
>                       description: Source for the environment variable's value. Cannot
>                         be used if value is not empty.
>                       properties:
>                         configMapKeyRef:
>                           description: Selects a key of a ConfigMap.
>                           properties:
>                             key:
>                               description: The key to select.
>                               type: string
>                             name:
>                               description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                 TODO: Add other useful fields. apiVersion, kind, uid?'
>                               type: string
>                             optional:
>                               description: Specify whether the ConfigMap or its key
>                                 must be defined
>                               type: boolean
>                           required:
>                           - key
>                           type: object
>                         fieldRef:
>                           description: 'Selects a field of the pod: supports metadata.name,
>                             metadata.namespace, `metadata.labels[''<KEY>'']`, `metadata.annotations[''<KEY>'']`,
>                             spec.nodeName, spec.serviceAccountName, status.hostIP,
>                             status.podIP, status.podIPs.'
>                           properties:
>                             apiVersion:
>                               description: Version of the schema the FieldPath is
>                                 written in terms of, defaults to "v1".
>                               type: string
>                             fieldPath:
>                               description: Path of the field to select in the specified
>                                 API version.
>                               type: string
>                           required:
>                           - fieldPath
>                           type: object
>                         resourceFieldRef:
>                           description: 'Selects a resource of the container: only
>                             resources limits and requests (limits.cpu, limits.memory,
>                             limits.ephemeral-storage, requests.cpu, requests.memory
>                             and requests.ephemeral-storage) are currently supported.'
>                           properties:
>                             containerName:
>                               description: 'Container name: required for volumes,
>                                 optional for env vars'
>                               type: string
>                             divisor:
>                               anyOf:
>                               - type: integer
>                               - type: string
>                               description: Specifies the output format of the exposed
>                                 resources, defaults to "1"
>                               pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                               x-kubernetes-int-or-string: true
>                             resource:
>                               description: 'Required: resource to select'
>                               type: string
>                           required:
>                           - resource
>                           type: object
>                         secretKeyRef:
>                           description: Selects a key of a secret in the pod's namespace
>                           properties:
>                             key:
>                               description: The key of the secret to select from.  Must
>                                 be a valid secret key.
>                               type: string
>                             name:
>                               description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                 TODO: Add other useful fields. apiVersion, kind, uid?'
>                               type: string
>                             optional:
>                               description: Specify whether the Secret or its key must
>                                 be defined
>                               type: boolean
>                           required:
>                           - key
>                           type: object
>                       type: object
>                   required:
>                   - name
>                   type: object
>                 type: array
>               replicas:
>                 description: The number of replicas to deploy the component with.
>                   Optional.
>                 type: integer
>               resources:
>                 description: Compute Resources required by this component. Optional.
>                 properties:
>                   limits:
>                     additionalProperties:
>                       anyOf:
>                       - type: integer
>                       - type: string
>                       pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                       x-kubernetes-int-or-string: true
>                     description: 'Limits describes the maximum amount of compute resources
>                       allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                     type: object
>                   requests:
>                     additionalProperties:
>                       anyOf:
>                       - type: integer
>                       - type: string
>                       pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                       x-kubernetes-int-or-string: true
>                     description: 'Requests describes the minimum amount of compute
>                       resources required. If Requests is omitted for a container,
>                       it defaults to Limits if that is explicitly specified, otherwise
>                       to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                     type: object
>                 type: object
>               route:
>                 description: The route to expose the component with. Optional.
>                 type: string
>               secret:
>                 description: 'Secret describes the name of a Kubernetes secret containing
>                   either: 1. A Personal Access Token to access the Component''s git
>                   repostiory (if using a Git-source component) or 2. An Image Pull
>                   Secret to access the Component''s container image (if using an Image-source
>                   component). Optional.'
>                 type: string
>               skipGitOpsResourceGeneration:
>                 description: Whether or not to bypass the generation of GitOps resources
>                   for the Component. Defaults to false. Optional.
>                 type: boolean
>               source:
>                 description: Source describes the Component source. Optional.
>                 properties:
>                   git:
>                     description: Git Source for a Component. Optional.
>                     properties:
>                       context:
>                         description: 'A relative path inside the git repo containing
>                           the component Example: folderA/folderB/gitops. Optional.'
>                         type: string
>                       devfileUrl:
>                         description: 'If specified, the devfile at the URL will be
>                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                           Optional.'
>                         type: string
>                       dockerfileUrl:
>                         description: If specified, the dockerfile at the URL will
>                           be used for the component. Optional.
>                         type: string
>                       revision:
>                         description: 'Specify a branch/tag/commit id. If not specified,
>                           default is `main`/`master`. Example: devel. Optional.'
>                         type: string
>                       url:
>                         description: If importing from git, the repository to create
>                           the component from
>                         type: string
>                     required:
>                     - url
>                     type: object
>                 type: object
>               targetPort:
>                 description: The port to expose the component over. Optional.
>                 type: integer
>             required:
>             - application
>             - componentName
>             type: object
>           status:
>             description: ComponentStatus defines the observed state of Component
>             properties:
>               conditions:
>                 description: Conditions is an array of the Component's status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               containerImage:
>                 description: ContainerImage stores the associated built container
>                   image for the component
>                 type: string
>               devfile:
>                 description: The devfile model for the Component CR
>                 type: string
>               gitops:
>                 description: GitOps specific status for the Component CR
>                 properties:
>                   branch:
>                     description: Branch is the git branch used for the gitops repository
>                     type: string
>                   commitID:
>                     description: CommitID is the most recent commit ID in the GitOps
>                       repository for this component
>                     type: string
>                   context:
>                     description: Context is the path within the gitops repository
>                       used for the gitops resources
>                     type: string
>                   repositoryURL:
>                     description: RepositoryURL is the gitops repository URL for the
>                       component
>                     type: string
>                   resourceGenerationSkipped:
>                     description: ResourceGenerationSkipped is whether or not GitOps
>                       resource generation was skipped for the component
>                     type: boolean
>                 type: object
>               webhook:
>                 description: Webhook URL generated by Builds
>                 type: string
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: environments.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Environment
>     listKind: EnvironmentList
>     plural: environments
>     shortNames:
>     - env
>     singular: environment
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Environment is the Schema for the environments API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: EnvironmentSpec defines the desired state of Environment
>             properties:
>               configuration:
>                 description: Configuration contains environment-specific details for
>                   Applications/Components that are deployed to the Environment.
>                 properties:
>                   env:
>                     description: Env is an array of standard environment vairables
>                     items:
>                       description: EnvVarPair describes environment variables to use
>                         for the component
>                       properties:
>                         name:
>                           description: Name is the environment variable name
>                           type: string
>                         value:
>                           description: Value is the environment variable value
>                           type: string
>                       required:
>                       - name
>                       - value
>                       type: object
>                     type: array
>                 required:
>                 - env
>                 type: object
>               deploymentStrategy:
>                 description: DeploymentStrategy is the promotion strategy for the
>                   Environment See Environment API doc for details.
>                 type: string
>               displayName:
>                 description: DisplayName is the user-visible, user-definable name
>                   for the environment (but not used for functional requirements)
>                 type: string
>               parentEnvironment:
>                 description: 'ParentEnvironment references another Environment defined
>                   in the namespace: when automated promotion is enabled, promotions
>                   to the parent environment will cause this environment to be promoted
>                   to. See Environment API doc for details.'
>                 type: string
>               tags:
>                 description: Tags are a user-visisble, user-definable set of tags
>                   that can be applied to the environment
>                 items:
>                   type: string
>                 type: array
>               type:
>                 description: Type is whether the Environment is a POC or non-POC environment
>                 type: string
>               unstableConfigurationFields:
>                 description: 'UnstableConfigurationFields are experimental/prototype:
>                   the API has not been finalized here, and is subject to breaking
>                   changes. See comment on UnstableEnvironmentConfiguration for details.'
>                 properties:
>                   kubernetesCredentials:
>                     description: "KubernetesClusterCredentials allows you to specify
>                       cluster credentials for stanadard K8s cluster (e.g. non-KCP
>                       workspace). \n See this temporary URL for details on what values
>                       to provide for the APIURL and Secret: https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m6-demo#gitopsdeploymentmanagedenvironment-resource"
>                     properties:
>                       allowInsecureSkipTLSVerify:
>                         description: Indicates that ArgoCD/GitOps Service should not
>                           check the TLS certificate.
>                         type: boolean
>                       apiURL:
>                         description: APIURL is a reference to a cluster API url defined
>                           within the kube config file of the cluster credentials secret.
>                         type: string
>                       clusterCredentialsSecret:
>                         description: "ClusterCredentialsSecret is a reference to the
>                           name of k8s Secret, defined within the same namespace as
>                           the Environment resource, that contains a kubeconfig. The
>                           Secret must be of type 'managed-gitops.redhat.com/managed-environment'
>                           \n See this temporary URL for details: https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m6-demo#gitopsdeploymentmanagedenvironment-resource"
>                         type: string
>                       targetNamespace:
>                         description: TargetNamespace is the default destination target
>                           on the cluster for deployments. This Namespace will be used
>                           for any GitOps repository K8s resources where the `.metadata.Namespace`
>                           field is not specified.
>                         type: string
>                     required:
>                     - allowInsecureSkipTLSVerify
>                     - apiURL
>                     - clusterCredentialsSecret
>                     - targetNamespace
>                     type: object
>                 type: object
>             required:
>             - deploymentStrategy
>             - displayName
>             - type
>             type: object
>           status:
>             description: EnvironmentStatus defines the observed state of Environment
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
614a1763,2557
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: promotionruns.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: PromotionRun
>     listKind: PromotionRunList
>     plural: promotionruns
>     shortNames:
>     - apr
>     - promotion
>     singular: promotionrun
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: PromotionRun is the Schema for the promotionruns API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: PromotionRunSpec defines the desired state of PromotionRun
>             properties:
>               application:
>                 description: Application is the name of an Application resource defined
>                   within the namespaced, and which is the target of the promotion
>                 type: string
>               automatedPromotion:
>                 description: 'AutomatedPromotion is for fields specific to automated
>                   promotion Only one field should be defined: either ''manualPromotion''
>                   or ''automatedPromotion'', but not both.'
>                 properties:
>                   initialEnvironment:
>                     description: 'InitialEnvironment: start iterating through the
>                       digraph, beginning with the value specified in ''initialEnvironment'''
>                     type: string
>                 required:
>                 - initialEnvironment
>                 type: object
>               manualPromotion:
>                 description: 'ManualPromotion is for fields specific to manual promotion.
>                   Only one field should be defined: either ''manualPromotion'' or
>                   ''automatedPromotion'', but not both.'
>                 properties:
>                   targetEnvironment:
>                     description: TargetEnvironment is the environment to promote to
>                     type: string
>                 required:
>                 - targetEnvironment
>                 type: object
>               snapshot:
>                 description: Snapshot refers to the name of a Snapshot resource defined
>                   within the namespace, used to promote container images between Environments.
>                 type: string
>             required:
>             - application
>             - snapshot
>             type: object
>           status:
>             description: PromotionRunStatus defines the observed state of PromotionRun
>             properties:
>               activeBindings:
>                 description: 'ActiveBindings is the list of active bindings currently
>                   being promoted to: - For an automated promotion, there can be multiple
>                   active bindings at a time (one for each env at a particular tree
>                   depth) - For a manual promotion, there will be only one.'
>                 items:
>                   type: string
>                 type: array
>               completionResult:
>                 description: CompletionResult indicates success/failure once the promotion
>                   has completed all work. CompletionResult will only have a value
>                   if State field is 'Complete'.
>                 type: string
>               conditions:
>                 items:
>                   description: PromotionRunCondition contains details about an PromotionRun
>                     condition, which is usually an error or warning
>                   properties:
>                     lastProbeTime:
>                       description: LastProbeTime is the last time the condition was
>                         observed.
>                       format: date-time
>                       type: string
>                     lastTransitionTime:
>                       description: LastTransitionTime is the last time the condition
>                         transitioned from one status to another.
>                       format: date-time
>                       type: string
>                     message:
>                       description: Message contains human-readable message indicating
>                         details about the last condition.
>                       type: string
>                     reason:
>                       description: Reason is a unique, one-word, CamelCase reason
>                         for the condition's last transition.
>                       type: string
>                     status:
>                       description: Status is the status of the condition.
>                       type: string
>                     type:
>                       description: Type is a PromotionRun condition type
>                       type: string
>                   required:
>                   - status
>                   - type
>                   type: object
>                 type: array
>               environmentStatus:
>                 description: EnvironmentStatus represents the set of steps taken during
>                   the  current promotion
>                 items:
>                   description: 'PromotionRunEnvironmentStatus represents the set of
>                     steps taken during the  current promotion: - manual promotions
>                     will only have a single step. - automated promotions may have
>                     one or more steps, depending on how many environments have been
>                     promoted to.'
>                   properties:
>                     displayStatus:
>                       description: DisplayStatus is human-readible description of
>                         the current state/status.
>                       type: string
>                     environmentName:
>                       description: EnvironmentName is the name of the environment
>                         that was promoted to in this step
>                       type: string
>                     status:
>                       description: Status is/was the result of promoting to that environment.
>                       type: string
>                     step:
>                       description: Step is the sequential number of the step in the
>                         array, starting with 1
>                       type: integer
>                   required:
>                   - displayStatus
>                   - environmentName
>                   - status
>                   - step
>                   type: object
>                 type: array
>               promotionStartTime:
>                 description: PromotionStartTime is set to the value when the PromotionRun
>                   Reconciler first started the promotion.
>                 format: date-time
>                 type: string
>               state:
>                 description: State indicates whether or not the overall promotion
>                   (either manual or automated is complete)
>                 type: string
>             required:
>             - state
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: snapshotenvironmentbindings.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: SnapshotEnvironmentBinding
>     listKind: SnapshotEnvironmentBindingList
>     plural: snapshotenvironmentbindings
>     shortNames:
>     - aseb
>     - binding
>     singular: snapshotenvironmentbinding
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: SnapshotEnvironmentBinding is the Schema for the snapshotenvironmentbindings
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: SnapshotEnvironmentBindingSpec defines the desired state
>               of SnapshotEnvironmentBinding
>             properties:
>               application:
>                 description: Application is a reference to the Application resource
>                   (defined in the namespace) involved in the binding. Required
>                 type: string
>               components:
>                 description: Components contains individual component data. Required.
>                 items:
>                   description: BindingComponent contains individual component data
>                   properties:
>                     configuration:
>                       description: Configuration describes GitOps repository customizations
>                         that are specific to the the component-application-environment
>                         combination. - Values defined in this struct will overwrite
>                         values from Application/Environment/Component. Optional
>                       properties:
>                         env:
>                           description: Env describes environment variables to use
>                             for the component. Optional.
>                           items:
>                             description: EnvVarPair describes environment variables
>                               to use for the component
>                             properties:
>                               name:
>                                 description: Name is the environment variable name
>                                 type: string
>                               value:
>                                 description: Value is the environment variable value
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                         replicas:
>                           description: Replicas defines the number of replicas to
>                             use for the component
>                           type: integer
>                         resources:
>                           description: Resources defines the Compute Resources required
>                             by the component. Optional.
>                           properties:
>                             limits:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Limits describes the maximum amount of
>                                 compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                             requests:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Requests describes the minimum amount
>                                 of compute resources required. If Requests is omitted
>                                 for a container, it defaults to Limits if that is
>                                 explicitly specified, otherwise to an implementation-defined
>                                 value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                           type: object
>                       required:
>                       - replicas
>                       type: object
>                     name:
>                       description: Name is the name of the component.
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment is the Environment resource (defined in the
>                   namespace) that the binding will deploy to. Required
>                 type: string
>               snapshot:
>                 description: Snapshot is the Snapshot resource (defined in the namespace)
>                   that contains the container image versions for the components of
>                   the Application. Required
>                 type: string
>             required:
>             - application
>             - components
>             - environment
>             - snapshot
>             type: object
>           status:
>             description: SnapshotEnvironmentBindingStatus defines the observed state
>               of SnapshotEnvironmentBinding
>             properties:
>               bindingConditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               componentDeploymentConditions:
>                 description: ComponentDeploymentConditions describes the deployment
>                   status of all of the Components of the Application. This status
>                   is updated by the Gitops Service's SnapshotEnvironmentBinding controller
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               components:
>                 description: Components describes a component's GitOps repository
>                   information. This status is updated by the Application Service controller.
>                 items:
>                   description: BindingComponentStatus contains the status of the components
>                   properties:
>                     gitopsRepository:
>                       description: GitOpsRepository contains the Git URL, path, branch,
>                         and most recent commit id for the component
>                       properties:
>                         branch:
>                           description: Branch is the branch to use when accessing
>                             the GitOps repository
>                           type: string
>                         commitID:
>                           description: CommitID contains the most recent commit ID
>                             for which the Kubernetes resources of the Component were
>                             modified.
>                           type: string
>                         generatedResources:
>                           description: GeneratedResources contains the list of GitOps
>                             repository resources generated by the application service
>                             controller in the overlays/<environment> dir, for example,
>                             'deployment-patch.yaml'. This is stored to differentiate
>                             between application-service controller generated resources
>                             vs resources added by a user
>                           items:
>                             type: string
>                           type: array
>                         path:
>                           description: 'Path is a pointer to a folder in the GitOps
>                             repo, containing a kustomization.yaml NOTE: Each component-env
>                             combination must have it''s own separate path'
>                           type: string
>                         url:
>                           description: URL is the Git repository URL e.g. The Git
>                             repository that contains the K8s resources to deployment
>                             for the component of the application.
>                           type: string
>                       required:
>                       - branch
>                       - commitID
>                       - generatedResources
>                       - path
>                       - url
>                       type: object
>                     name:
>                       description: Name is the name of the component.
>                       type: string
>                   required:
>                   - gitopsRepository
>                   - name
>                   type: object
>                 type: array
>               gitopsDeployments:
>                 description: GitOpsDeployments describes the set of GitOpsDeployment
>                   resources that correspond to the binding. To determine the health/sync
>                   status of a binding, you can look at the GitOpsDeployments decribed
>                   here.
>                 items:
>                   description: "BindingStatusGitOpsDeployment describes an individual
>                     reference to a GitOpsDeployment resources that is used to deploy
>                     this binding. \n To determine the health/sync status of a binding,
>                     you can look at the GitOpsDeployments decribed here."
>                   properties:
>                     componentName:
>                       description: ComponentName is the name of the component in the
>                         (component, gitopsdeployment) pair
>                       type: string
>                     gitopsDeployment:
>                       description: GitOpsDeployment is a reference to the name of
>                         a GitOpsDeployment resource which is used to deploy the binding.
>                         The Health/sync status for the binding can thus be read from
>                         the references GitOpsDEployment
>                       type: string
>                   required:
>                   - componentName
>                   type: object
>                 type: array
>               gitopsRepoConditions:
>                 description: Condition describes operations on the GitOps repository,
>                   for example, if there were issues with generating/processing the
>                   repository. This status is updated by the Application Service controller.
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: snapshots.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Snapshot
>     listKind: SnapshotList
>     plural: snapshots
>     shortNames:
>     - as
>     - snapshot
>     singular: snapshot
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Snapshot is the Schema for the snapshots API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: SnapshotSpec defines the desired state of Snapshot
>             properties:
>               application:
>                 description: Application is a reference to the name of an Application
>                   resource within the same namespace, which defines the target application
>                   for the Snapshot (when used with a Binding).
>                 type: string
>               artifacts:
>                 description: Artifacts is a placeholder section for 'artifact links'
>                   we want to maintain to other AppStudio resources. See Environment
>                   API doc for details.
>                 properties:
>                   unstableFields:
>                     description: 'NOTE: This field (and struct) are placeholders.
>                       - Until this API is stabilized, consumers of the API may store
>                       any unstructured JSON/YAML data here,   but no backwards compatibility
>                       will be preserved.'
>                     x-kubernetes-preserve-unknown-fields: true
>                 type: object
>               components:
>                 description: Components field contains the sets of components to deploy
>                   as part of this snapshot.
>                 items:
>                   description: SnapshotComponent
>                   properties:
>                     containerImage:
>                       description: ContainerImage is the container image to use when
>                         deploying the component, as part of a Snapshot
>                       type: string
>                     name:
>                       description: Name is the name of the component
>                       type: string
>                   required:
>                   - containerImage
>                   - name
>                   type: object
>                 type: array
>               displayDescription:
>                 description: DisplayDescription is a user-visible, user definable
>                   description for the resource (and is not used for any functional
>                   behaviour)
>                 type: string
>               displayName:
>                 description: DisplayName is a user-visible, user-definable name for
>                   the resource (and is not used for any functional behaviour)
>                 type: string
>             required:
>             - application
>             type: object
>           status:
>             description: SnapshotStatus defines the observed state of Snapshot
>             properties:
>               conditions:
>                 description: Conditions represent the latest available observations
>                   for the Snapshot
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
1585c3528
<         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
---
>         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
1667c3610
<         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
---
>         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
1749c3692
<         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
---
>         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
diff -r /home/john/dev/kdiff/kustomized-cache/tag-704d64c/components/gitops/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-b1e43d1/components/gitops/staging/kustomize.out
16a17,1164
>   name: applications.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Application
>     listKind: ApplicationList
>     plural: applications
>     shortNames:
>     - hasapp
>     - ha
>     - app
>     singular: application
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Application is the Schema for the applications API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: ApplicationSpec defines the desired state of Application
>             properties:
>               appModelRepository:
>                 description: AppModelRepository refers to the git repository that
>                   will store the application model (a devfile) Can be the same as
>                   GitOps repository. A repository will be generated if this field
>                   is left blank. Optional.
>                 properties:
>                   branch:
>                     description: 'Branch corresponds to the branch in the repository
>                       that should be used Example: devel. Optional.'
>                     type: string
>                   context:
>                     description: 'Context corresponds to the context within the repository
>                       that should be used Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   url:
>                     description: 'URL refers to the repository URL that should be
>                       used. If not specified, a GitOps repository under the $GITHUB_ORG
>                       (defaults to redhat-appstudio-appdata) organization on GitHub
>                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
>                       Required.'
>                     type: string
>                 required:
>                 - url
>                 type: object
>               description:
>                 description: Description refers to a brief description of the application.
>                   Optional.
>                 type: string
>               displayName:
>                 description: DisplayName refers to the name that an application will
>                   be deployed with in App Studio. Required.
>                 type: string
>               gitOpsRepository:
>                 description: GitOpsRepository refers to the git repository that will
>                   store the gitops resources. Can be the same as App Model Repository.
>                   A repository will be generated if this field is left blank. Optional.
>                 properties:
>                   branch:
>                     description: 'Branch corresponds to the branch in the repository
>                       that should be used Example: devel. Optional.'
>                     type: string
>                   context:
>                     description: 'Context corresponds to the context within the repository
>                       that should be used Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   url:
>                     description: 'URL refers to the repository URL that should be
>                       used. If not specified, a GitOps repository under the $GITHUB_ORG
>                       (defaults to redhat-appstudio-appdata) organization on GitHub
>                       will be generated by HAS. Example: https://github.com/devfile-test/myrepo.
>                       Required.'
>                     type: string
>                 required:
>                 - url
>                 type: object
>             required:
>             - displayName
>             type: object
>           status:
>             description: ApplicationStatus defines the observed state of Application
>             properties:
>               conditions:
>                 description: Conditions is an array of the Application's status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               devfile:
>                 description: Devfile corresponds to the devfile representation of
>                   the Application resource
>                 type: string
>             required:
>             - conditions
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: componentdetectionqueries.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: ComponentDetectionQuery
>     listKind: ComponentDetectionQueryList
>     plural: componentdetectionqueries
>     shortNames:
>     - hcdq
>     - compdetection
>     singular: componentdetectionquery
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.conditions[-1].type
>       name: Type
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: ComponentDetectionQuery is the Schema for the componentdetectionqueries
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: ComponentDetectionQuerySpec defines the desired state of
>               ComponentDetectionQuery
>             properties:
>               git:
>                 description: Git Source for a Component. Required.
>                 properties:
>                   context:
>                     description: 'A relative path inside the git repo containing the
>                       component Example: folderA/folderB/gitops. Optional.'
>                     type: string
>                   devfileUrl:
>                     description: 'If specified, the devfile at the URL will be used
>                       for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                       Optional.'
>                     type: string
>                   dockerfileUrl:
>                     description: If specified, the dockerfile at the URL will be used
>                       for the component. Optional.
>                     type: string
>                   revision:
>                     description: 'Specify a branch/tag/commit id. If not specified,
>                       default is `main`/`master`. Example: devel. Optional.'
>                     type: string
>                   url:
>                     description: If importing from git, the repository to create the
>                       component from
>                     type: string
>                 required:
>                 - url
>                 type: object
>               secret:
>                 description: Secret describes the name of an optional Kubernetes secret
>                   containing a Personal Access Token to access the git repostiory.
>                   Optional.
>                 type: string
>             required:
>             - git
>             type: object
>           status:
>             description: ComponentDetectionQueryStatus defines the observed state
>               of ComponentDetectionQuery
>             properties:
>               componentDetected:
>                 additionalProperties:
>                   description: ComponentDetectionDescription holds all the information
>                     about the component being detected
>                   properties:
>                     componentStub:
>                       description: ComponentStub is a stub of the component detected
>                         with all the info gathered from the devfile or service detection
>                       properties:
>                         application:
>                           description: Application is the name of the application
>                             resource that the component belongs to. Required.
>                           pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                           type: string
>                         componentName:
>                           description: ComponentName is name of the component to be
>                             added to the Application. The name must adhere to DNS-1123
>                             validation. Required.
>                           maxLength: 63
>                           pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                           type: string
>                         containerImage:
>                           description: 'The container image to build or create the
>                             component from Example: quay.io/someorg/somerepository:latest.
>                             Optional.'
>                           type: string
>                         env:
>                           description: An array of environment variables to add to
>                             the component (ValueFrom not currently supported) Optional
>                           items:
>                             description: EnvVar represents an environment variable
>                               present in a Container.
>                             properties:
>                               name:
>                                 description: Name of the environment variable. Must
>                                   be a C_IDENTIFIER.
>                                 type: string
>                               value:
>                                 description: 'Variable references $(VAR_NAME) are
>                                   expanded using the previously defined environment
>                                   variables in the container and any service environment
>                                   variables. If a variable cannot be resolved, the
>                                   reference in the input string will be unchanged.
>                                   Double $$ are reduced to a single $, which allows
>                                   for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)"
>                                   will produce the string literal "$(VAR_NAME)". Escaped
>                                   references will never be expanded, regardless of
>                                   whether the variable exists or not. Defaults to
>                                   "".'
>                                 type: string
>                               valueFrom:
>                                 description: Source for the environment variable's
>                                   value. Cannot be used if value is not empty.
>                                 properties:
>                                   configMapKeyRef:
>                                     description: Selects a key of a ConfigMap.
>                                     properties:
>                                       key:
>                                         description: The key to select.
>                                         type: string
>                                       name:
>                                         description: 'Name of the referent. More info:
>                                           https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                           TODO: Add other useful fields. apiVersion,
>                                           kind, uid?'
>                                         type: string
>                                       optional:
>                                         description: Specify whether the ConfigMap
>                                           or its key must be defined
>                                         type: boolean
>                                     required:
>                                     - key
>                                     type: object
>                                   fieldRef:
>                                     description: 'Selects a field of the pod: supports
>                                       metadata.name, metadata.namespace, `metadata.labels[''<KEY>'']`,
>                                       `metadata.annotations[''<KEY>'']`, spec.nodeName,
>                                       spec.serviceAccountName, status.hostIP, status.podIP,
>                                       status.podIPs.'
>                                     properties:
>                                       apiVersion:
>                                         description: Version of the schema the FieldPath
>                                           is written in terms of, defaults to "v1".
>                                         type: string
>                                       fieldPath:
>                                         description: Path of the field to select in
>                                           the specified API version.
>                                         type: string
>                                     required:
>                                     - fieldPath
>                                     type: object
>                                   resourceFieldRef:
>                                     description: 'Selects a resource of the container:
>                                       only resources limits and requests (limits.cpu,
>                                       limits.memory, limits.ephemeral-storage, requests.cpu,
>                                       requests.memory and requests.ephemeral-storage)
>                                       are currently supported.'
>                                     properties:
>                                       containerName:
>                                         description: 'Container name: required for
>                                           volumes, optional for env vars'
>                                         type: string
>                                       divisor:
>                                         anyOf:
>                                         - type: integer
>                                         - type: string
>                                         description: Specifies the output format of
>                                           the exposed resources, defaults to "1"
>                                         pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                         x-kubernetes-int-or-string: true
>                                       resource:
>                                         description: 'Required: resource to select'
>                                         type: string
>                                     required:
>                                     - resource
>                                     type: object
>                                   secretKeyRef:
>                                     description: Selects a key of a secret in the
>                                       pod's namespace
>                                     properties:
>                                       key:
>                                         description: The key of the secret to select
>                                           from.  Must be a valid secret key.
>                                         type: string
>                                       name:
>                                         description: 'Name of the referent. More info:
>                                           https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                           TODO: Add other useful fields. apiVersion,
>                                           kind, uid?'
>                                         type: string
>                                       optional:
>                                         description: Specify whether the Secret or
>                                           its key must be defined
>                                         type: boolean
>                                     required:
>                                     - key
>                                     type: object
>                                 type: object
>                             required:
>                             - name
>                             type: object
>                           type: array
>                         replicas:
>                           description: The number of replicas to deploy the component
>                             with. Optional.
>                           type: integer
>                         resources:
>                           description: Compute Resources required by this component.
>                             Optional.
>                           properties:
>                             limits:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Limits describes the maximum amount of
>                                 compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                             requests:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Requests describes the minimum amount
>                                 of compute resources required. If Requests is omitted
>                                 for a container, it defaults to Limits if that is
>                                 explicitly specified, otherwise to an implementation-defined
>                                 value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                           type: object
>                         route:
>                           description: The route to expose the component with. Optional.
>                           type: string
>                         secret:
>                           description: 'Secret describes the name of a Kubernetes
>                             secret containing either: 1. A Personal Access Token to
>                             access the Component''s git repostiory (if using a Git-source
>                             component) or 2. An Image Pull Secret to access the Component''s
>                             container image (if using an Image-source component).
>                             Optional.'
>                           type: string
>                         skipGitOpsResourceGeneration:
>                           description: Whether or not to bypass the generation of
>                             GitOps resources for the Component. Defaults to false.
>                             Optional.
>                           type: boolean
>                         source:
>                           description: Source describes the Component source. Optional.
>                           properties:
>                             git:
>                               description: Git Source for a Component. Optional.
>                               properties:
>                                 context:
>                                   description: 'A relative path inside the git repo
>                                     containing the component Example: folderA/folderB/gitops.
>                                     Optional.'
>                                   type: string
>                                 devfileUrl:
>                                   description: 'If specified, the devfile at the URL
>                                     will be used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                                     Optional.'
>                                   type: string
>                                 dockerfileUrl:
>                                   description: If specified, the dockerfile at the
>                                     URL will be used for the component. Optional.
>                                   type: string
>                                 revision:
>                                   description: 'Specify a branch/tag/commit id. If
>                                     not specified, default is `main`/`master`. Example:
>                                     devel. Optional.'
>                                   type: string
>                                 url:
>                                   description: If importing from git, the repository
>                                     to create the component from
>                                   type: string
>                               required:
>                               - url
>                               type: object
>                           type: object
>                         targetPort:
>                           description: The port to expose the component over. Optional.
>                           type: integer
>                       required:
>                       - application
>                       - componentName
>                       type: object
>                     devfileFound:
>                       description: DevfileFound tells if a devfile is found in the
>                         component
>                       type: boolean
>                     language:
>                       description: 'Language specifies the language of the component
>                         detected Example: JavaScript'
>                       type: string
>                     projectType:
>                       description: ProjectType specifies the type of project for the
>                         component detected Example Node.JS
>                       type: string
>                   type: object
>                 description: ComponentDetected gives a list of components and the
>                   info from detection
>                 type: object
>               conditions:
>                 description: Conditions is an array of the ComponentDetectionQuery's
>                   status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: components.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Component
>     listKind: ComponentList
>     plural: components
>     shortNames:
>     - hascmp
>     - hc
>     - comp
>     singular: component
>   scope: Namespaced
>   versions:
>   - additionalPrinterColumns:
>     - jsonPath: .metadata.creationTimestamp
>       name: Age
>       type: date
>     - jsonPath: .status.conditions[-1].status
>       name: Status
>       type: string
>     - jsonPath: .status.conditions[-1].reason
>       name: Reason
>       type: string
>     - jsonPath: .status.conditions[-1].type
>       name: Type
>       type: string
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Component is the Schema for the components API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: ComponentSpec defines the desired state of Component
>             properties:
>               application:
>                 description: Application is the name of the application resource that
>                   the component belongs to. Required.
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               componentName:
>                 description: ComponentName is name of the component to be added to
>                   the Application. The name must adhere to DNS-1123 validation. Required.
>                 maxLength: 63
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               containerImage:
>                 description: 'The container image to build or create the component
>                   from Example: quay.io/someorg/somerepository:latest. Optional.'
>                 type: string
>               env:
>                 description: An array of environment variables to add to the component
>                   (ValueFrom not currently supported) Optional
>                 items:
>                   description: EnvVar represents an environment variable present in
>                     a Container.
>                   properties:
>                     name:
>                       description: Name of the environment variable. Must be a C_IDENTIFIER.
>                       type: string
>                     value:
>                       description: 'Variable references $(VAR_NAME) are expanded using
>                         the previously defined environment variables in the container
>                         and any service environment variables. If a variable cannot
>                         be resolved, the reference in the input string will be unchanged.
>                         Double $$ are reduced to a single $, which allows for escaping
>                         the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the
>                         string literal "$(VAR_NAME)". Escaped references will never
>                         be expanded, regardless of whether the variable exists or
>                         not. Defaults to "".'
>                       type: string
>                     valueFrom:
>                       description: Source for the environment variable's value. Cannot
>                         be used if value is not empty.
>                       properties:
>                         configMapKeyRef:
>                           description: Selects a key of a ConfigMap.
>                           properties:
>                             key:
>                               description: The key to select.
>                               type: string
>                             name:
>                               description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                 TODO: Add other useful fields. apiVersion, kind, uid?'
>                               type: string
>                             optional:
>                               description: Specify whether the ConfigMap or its key
>                                 must be defined
>                               type: boolean
>                           required:
>                           - key
>                           type: object
>                         fieldRef:
>                           description: 'Selects a field of the pod: supports metadata.name,
>                             metadata.namespace, `metadata.labels[''<KEY>'']`, `metadata.annotations[''<KEY>'']`,
>                             spec.nodeName, spec.serviceAccountName, status.hostIP,
>                             status.podIP, status.podIPs.'
>                           properties:
>                             apiVersion:
>                               description: Version of the schema the FieldPath is
>                                 written in terms of, defaults to "v1".
>                               type: string
>                             fieldPath:
>                               description: Path of the field to select in the specified
>                                 API version.
>                               type: string
>                           required:
>                           - fieldPath
>                           type: object
>                         resourceFieldRef:
>                           description: 'Selects a resource of the container: only
>                             resources limits and requests (limits.cpu, limits.memory,
>                             limits.ephemeral-storage, requests.cpu, requests.memory
>                             and requests.ephemeral-storage) are currently supported.'
>                           properties:
>                             containerName:
>                               description: 'Container name: required for volumes,
>                                 optional for env vars'
>                               type: string
>                             divisor:
>                               anyOf:
>                               - type: integer
>                               - type: string
>                               description: Specifies the output format of the exposed
>                                 resources, defaults to "1"
>                               pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                               x-kubernetes-int-or-string: true
>                             resource:
>                               description: 'Required: resource to select'
>                               type: string
>                           required:
>                           - resource
>                           type: object
>                         secretKeyRef:
>                           description: Selects a key of a secret in the pod's namespace
>                           properties:
>                             key:
>                               description: The key of the secret to select from.  Must
>                                 be a valid secret key.
>                               type: string
>                             name:
>                               description: 'Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
>                                 TODO: Add other useful fields. apiVersion, kind, uid?'
>                               type: string
>                             optional:
>                               description: Specify whether the Secret or its key must
>                                 be defined
>                               type: boolean
>                           required:
>                           - key
>                           type: object
>                       type: object
>                   required:
>                   - name
>                   type: object
>                 type: array
>               replicas:
>                 description: The number of replicas to deploy the component with.
>                   Optional.
>                 type: integer
>               resources:
>                 description: Compute Resources required by this component. Optional.
>                 properties:
>                   limits:
>                     additionalProperties:
>                       anyOf:
>                       - type: integer
>                       - type: string
>                       pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                       x-kubernetes-int-or-string: true
>                     description: 'Limits describes the maximum amount of compute resources
>                       allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                     type: object
>                   requests:
>                     additionalProperties:
>                       anyOf:
>                       - type: integer
>                       - type: string
>                       pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                       x-kubernetes-int-or-string: true
>                     description: 'Requests describes the minimum amount of compute
>                       resources required. If Requests is omitted for a container,
>                       it defaults to Limits if that is explicitly specified, otherwise
>                       to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                     type: object
>                 type: object
>               route:
>                 description: The route to expose the component with. Optional.
>                 type: string
>               secret:
>                 description: 'Secret describes the name of a Kubernetes secret containing
>                   either: 1. A Personal Access Token to access the Component''s git
>                   repostiory (if using a Git-source component) or 2. An Image Pull
>                   Secret to access the Component''s container image (if using an Image-source
>                   component). Optional.'
>                 type: string
>               skipGitOpsResourceGeneration:
>                 description: Whether or not to bypass the generation of GitOps resources
>                   for the Component. Defaults to false. Optional.
>                 type: boolean
>               source:
>                 description: Source describes the Component source. Optional.
>                 properties:
>                   git:
>                     description: Git Source for a Component. Optional.
>                     properties:
>                       context:
>                         description: 'A relative path inside the git repo containing
>                           the component Example: folderA/folderB/gitops. Optional.'
>                         type: string
>                       devfileUrl:
>                         description: 'If specified, the devfile at the URL will be
>                           used for the component. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
>                           Optional.'
>                         type: string
>                       dockerfileUrl:
>                         description: If specified, the dockerfile at the URL will
>                           be used for the component. Optional.
>                         type: string
>                       revision:
>                         description: 'Specify a branch/tag/commit id. If not specified,
>                           default is `main`/`master`. Example: devel. Optional.'
>                         type: string
>                       url:
>                         description: If importing from git, the repository to create
>                           the component from
>                         type: string
>                     required:
>                     - url
>                     type: object
>                 type: object
>               targetPort:
>                 description: The port to expose the component over. Optional.
>                 type: integer
>             required:
>             - application
>             - componentName
>             type: object
>           status:
>             description: ComponentStatus defines the observed state of Component
>             properties:
>               conditions:
>                 description: Conditions is an array of the Component's status conditions
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               containerImage:
>                 description: ContainerImage stores the associated built container
>                   image for the component
>                 type: string
>               devfile:
>                 description: The devfile model for the Component CR
>                 type: string
>               gitops:
>                 description: GitOps specific status for the Component CR
>                 properties:
>                   branch:
>                     description: Branch is the git branch used for the gitops repository
>                     type: string
>                   commitID:
>                     description: CommitID is the most recent commit ID in the GitOps
>                       repository for this component
>                     type: string
>                   context:
>                     description: Context is the path within the gitops repository
>                       used for the gitops resources
>                     type: string
>                   repositoryURL:
>                     description: RepositoryURL is the gitops repository URL for the
>                       component
>                     type: string
>                   resourceGenerationSkipped:
>                     description: ResourceGenerationSkipped is whether or not GitOps
>                       resource generation was skipped for the component
>                     type: boolean
>                 type: object
>               webhook:
>                 description: Webhook URL generated by Builds
>                 type: string
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: environments.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Environment
>     listKind: EnvironmentList
>     plural: environments
>     shortNames:
>     - env
>     singular: environment
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Environment is the Schema for the environments API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: EnvironmentSpec defines the desired state of Environment
>             properties:
>               configuration:
>                 description: Configuration contains environment-specific details for
>                   Applications/Components that are deployed to the Environment.
>                 properties:
>                   env:
>                     description: Env is an array of standard environment vairables
>                     items:
>                       description: EnvVarPair describes environment variables to use
>                         for the component
>                       properties:
>                         name:
>                           description: Name is the environment variable name
>                           type: string
>                         value:
>                           description: Value is the environment variable value
>                           type: string
>                       required:
>                       - name
>                       - value
>                       type: object
>                     type: array
>                 required:
>                 - env
>                 type: object
>               deploymentStrategy:
>                 description: DeploymentStrategy is the promotion strategy for the
>                   Environment See Environment API doc for details.
>                 type: string
>               displayName:
>                 description: DisplayName is the user-visible, user-definable name
>                   for the environment (but not used for functional requirements)
>                 type: string
>               parentEnvironment:
>                 description: 'ParentEnvironment references another Environment defined
>                   in the namespace: when automated promotion is enabled, promotions
>                   to the parent environment will cause this environment to be promoted
>                   to. See Environment API doc for details.'
>                 type: string
>               tags:
>                 description: Tags are a user-visisble, user-definable set of tags
>                   that can be applied to the environment
>                 items:
>                   type: string
>                 type: array
>               type:
>                 description: Type is whether the Environment is a POC or non-POC environment
>                 type: string
>               unstableConfigurationFields:
>                 description: 'UnstableConfigurationFields are experimental/prototype:
>                   the API has not been finalized here, and is subject to breaking
>                   changes. See comment on UnstableEnvironmentConfiguration for details.'
>                 properties:
>                   kubernetesCredentials:
>                     description: "KubernetesClusterCredentials allows you to specify
>                       cluster credentials for stanadard K8s cluster (e.g. non-KCP
>                       workspace). \n See this temporary URL for details on what values
>                       to provide for the APIURL and Secret: https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m6-demo#gitopsdeploymentmanagedenvironment-resource"
>                     properties:
>                       allowInsecureSkipTLSVerify:
>                         description: Indicates that ArgoCD/GitOps Service should not
>                           check the TLS certificate.
>                         type: boolean
>                       apiURL:
>                         description: APIURL is a reference to a cluster API url defined
>                           within the kube config file of the cluster credentials secret.
>                         type: string
>                       clusterCredentialsSecret:
>                         description: "ClusterCredentialsSecret is a reference to the
>                           name of k8s Secret, defined within the same namespace as
>                           the Environment resource, that contains a kubeconfig. The
>                           Secret must be of type 'managed-gitops.redhat.com/managed-environment'
>                           \n See this temporary URL for details: https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m6-demo#gitopsdeploymentmanagedenvironment-resource"
>                         type: string
>                       targetNamespace:
>                         description: TargetNamespace is the default destination target
>                           on the cluster for deployments. This Namespace will be used
>                           for any GitOps repository K8s resources where the `.metadata.Namespace`
>                           field is not specified.
>                         type: string
>                     required:
>                     - allowInsecureSkipTLSVerify
>                     - apiURL
>                     - clusterCredentialsSecret
>                     - targetNamespace
>                     type: object
>                 type: object
>             required:
>             - deploymentStrategy
>             - displayName
>             - type
>             type: object
>           status:
>             description: EnvironmentStatus defines the observed state of Environment
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
614a1763,2557
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: promotionruns.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: PromotionRun
>     listKind: PromotionRunList
>     plural: promotionruns
>     shortNames:
>     - apr
>     - promotion
>     singular: promotionrun
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: PromotionRun is the Schema for the promotionruns API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: PromotionRunSpec defines the desired state of PromotionRun
>             properties:
>               application:
>                 description: Application is the name of an Application resource defined
>                   within the namespaced, and which is the target of the promotion
>                 type: string
>               automatedPromotion:
>                 description: 'AutomatedPromotion is for fields specific to automated
>                   promotion Only one field should be defined: either ''manualPromotion''
>                   or ''automatedPromotion'', but not both.'
>                 properties:
>                   initialEnvironment:
>                     description: 'InitialEnvironment: start iterating through the
>                       digraph, beginning with the value specified in ''initialEnvironment'''
>                     type: string
>                 required:
>                 - initialEnvironment
>                 type: object
>               manualPromotion:
>                 description: 'ManualPromotion is for fields specific to manual promotion.
>                   Only one field should be defined: either ''manualPromotion'' or
>                   ''automatedPromotion'', but not both.'
>                 properties:
>                   targetEnvironment:
>                     description: TargetEnvironment is the environment to promote to
>                     type: string
>                 required:
>                 - targetEnvironment
>                 type: object
>               snapshot:
>                 description: Snapshot refers to the name of a Snapshot resource defined
>                   within the namespace, used to promote container images between Environments.
>                 type: string
>             required:
>             - application
>             - snapshot
>             type: object
>           status:
>             description: PromotionRunStatus defines the observed state of PromotionRun
>             properties:
>               activeBindings:
>                 description: 'ActiveBindings is the list of active bindings currently
>                   being promoted to: - For an automated promotion, there can be multiple
>                   active bindings at a time (one for each env at a particular tree
>                   depth) - For a manual promotion, there will be only one.'
>                 items:
>                   type: string
>                 type: array
>               completionResult:
>                 description: CompletionResult indicates success/failure once the promotion
>                   has completed all work. CompletionResult will only have a value
>                   if State field is 'Complete'.
>                 type: string
>               conditions:
>                 items:
>                   description: PromotionRunCondition contains details about an PromotionRun
>                     condition, which is usually an error or warning
>                   properties:
>                     lastProbeTime:
>                       description: LastProbeTime is the last time the condition was
>                         observed.
>                       format: date-time
>                       type: string
>                     lastTransitionTime:
>                       description: LastTransitionTime is the last time the condition
>                         transitioned from one status to another.
>                       format: date-time
>                       type: string
>                     message:
>                       description: Message contains human-readable message indicating
>                         details about the last condition.
>                       type: string
>                     reason:
>                       description: Reason is a unique, one-word, CamelCase reason
>                         for the condition's last transition.
>                       type: string
>                     status:
>                       description: Status is the status of the condition.
>                       type: string
>                     type:
>                       description: Type is a PromotionRun condition type
>                       type: string
>                   required:
>                   - status
>                   - type
>                   type: object
>                 type: array
>               environmentStatus:
>                 description: EnvironmentStatus represents the set of steps taken during
>                   the  current promotion
>                 items:
>                   description: 'PromotionRunEnvironmentStatus represents the set of
>                     steps taken during the  current promotion: - manual promotions
>                     will only have a single step. - automated promotions may have
>                     one or more steps, depending on how many environments have been
>                     promoted to.'
>                   properties:
>                     displayStatus:
>                       description: DisplayStatus is human-readible description of
>                         the current state/status.
>                       type: string
>                     environmentName:
>                       description: EnvironmentName is the name of the environment
>                         that was promoted to in this step
>                       type: string
>                     status:
>                       description: Status is/was the result of promoting to that environment.
>                       type: string
>                     step:
>                       description: Step is the sequential number of the step in the
>                         array, starting with 1
>                       type: integer
>                   required:
>                   - displayStatus
>                   - environmentName
>                   - status
>                   - step
>                   type: object
>                 type: array
>               promotionStartTime:
>                 description: PromotionStartTime is set to the value when the PromotionRun
>                   Reconciler first started the promotion.
>                 format: date-time
>                 type: string
>               state:
>                 description: State indicates whether or not the overall promotion
>                   (either manual or automated is complete)
>                 type: string
>             required:
>             - state
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: snapshotenvironmentbindings.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: SnapshotEnvironmentBinding
>     listKind: SnapshotEnvironmentBindingList
>     plural: snapshotenvironmentbindings
>     shortNames:
>     - aseb
>     - binding
>     singular: snapshotenvironmentbinding
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: SnapshotEnvironmentBinding is the Schema for the snapshotenvironmentbindings
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: SnapshotEnvironmentBindingSpec defines the desired state
>               of SnapshotEnvironmentBinding
>             properties:
>               application:
>                 description: Application is a reference to the Application resource
>                   (defined in the namespace) involved in the binding. Required
>                 type: string
>               components:
>                 description: Components contains individual component data. Required.
>                 items:
>                   description: BindingComponent contains individual component data
>                   properties:
>                     configuration:
>                       description: Configuration describes GitOps repository customizations
>                         that are specific to the the component-application-environment
>                         combination. - Values defined in this struct will overwrite
>                         values from Application/Environment/Component. Optional
>                       properties:
>                         env:
>                           description: Env describes environment variables to use
>                             for the component. Optional.
>                           items:
>                             description: EnvVarPair describes environment variables
>                               to use for the component
>                             properties:
>                               name:
>                                 description: Name is the environment variable name
>                                 type: string
>                               value:
>                                 description: Value is the environment variable value
>                                 type: string
>                             required:
>                             - name
>                             - value
>                             type: object
>                           type: array
>                         replicas:
>                           description: Replicas defines the number of replicas to
>                             use for the component
>                           type: integer
>                         resources:
>                           description: Resources defines the Compute Resources required
>                             by the component. Optional.
>                           properties:
>                             limits:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Limits describes the maximum amount of
>                                 compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                             requests:
>                               additionalProperties:
>                                 anyOf:
>                                 - type: integer
>                                 - type: string
>                                 pattern: ^(\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\+|-)?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))))?$
>                                 x-kubernetes-int-or-string: true
>                               description: 'Requests describes the minimum amount
>                                 of compute resources required. If Requests is omitted
>                                 for a container, it defaults to Limits if that is
>                                 explicitly specified, otherwise to an implementation-defined
>                                 value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/'
>                               type: object
>                           type: object
>                       required:
>                       - replicas
>                       type: object
>                     name:
>                       description: Name is the name of the component.
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment is the Environment resource (defined in the
>                   namespace) that the binding will deploy to. Required
>                 type: string
>               snapshot:
>                 description: Snapshot is the Snapshot resource (defined in the namespace)
>                   that contains the container image versions for the components of
>                   the Application. Required
>                 type: string
>             required:
>             - application
>             - components
>             - environment
>             - snapshot
>             type: object
>           status:
>             description: SnapshotEnvironmentBindingStatus defines the observed state
>               of SnapshotEnvironmentBinding
>             properties:
>               bindingConditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               componentDeploymentConditions:
>                 description: ComponentDeploymentConditions describes the deployment
>                   status of all of the Components of the Application. This status
>                   is updated by the Gitops Service's SnapshotEnvironmentBinding controller
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>               components:
>                 description: Components describes a component's GitOps repository
>                   information. This status is updated by the Application Service controller.
>                 items:
>                   description: BindingComponentStatus contains the status of the components
>                   properties:
>                     gitopsRepository:
>                       description: GitOpsRepository contains the Git URL, path, branch,
>                         and most recent commit id for the component
>                       properties:
>                         branch:
>                           description: Branch is the branch to use when accessing
>                             the GitOps repository
>                           type: string
>                         commitID:
>                           description: CommitID contains the most recent commit ID
>                             for which the Kubernetes resources of the Component were
>                             modified.
>                           type: string
>                         generatedResources:
>                           description: GeneratedResources contains the list of GitOps
>                             repository resources generated by the application service
>                             controller in the overlays/<environment> dir, for example,
>                             'deployment-patch.yaml'. This is stored to differentiate
>                             between application-service controller generated resources
>                             vs resources added by a user
>                           items:
>                             type: string
>                           type: array
>                         path:
>                           description: 'Path is a pointer to a folder in the GitOps
>                             repo, containing a kustomization.yaml NOTE: Each component-env
>                             combination must have it''s own separate path'
>                           type: string
>                         url:
>                           description: URL is the Git repository URL e.g. The Git
>                             repository that contains the K8s resources to deployment
>                             for the component of the application.
>                           type: string
>                       required:
>                       - branch
>                       - commitID
>                       - generatedResources
>                       - path
>                       - url
>                       type: object
>                     name:
>                       description: Name is the name of the component.
>                       type: string
>                   required:
>                   - gitopsRepository
>                   - name
>                   type: object
>                 type: array
>               gitopsDeployments:
>                 description: GitOpsDeployments describes the set of GitOpsDeployment
>                   resources that correspond to the binding. To determine the health/sync
>                   status of a binding, you can look at the GitOpsDeployments decribed
>                   here.
>                 items:
>                   description: "BindingStatusGitOpsDeployment describes an individual
>                     reference to a GitOpsDeployment resources that is used to deploy
>                     this binding. \n To determine the health/sync status of a binding,
>                     you can look at the GitOpsDeployments decribed here."
>                   properties:
>                     componentName:
>                       description: ComponentName is the name of the component in the
>                         (component, gitopsdeployment) pair
>                       type: string
>                     gitopsDeployment:
>                       description: GitOpsDeployment is a reference to the name of
>                         a GitOpsDeployment resource which is used to deploy the binding.
>                         The Health/sync status for the binding can thus be read from
>                         the references GitOpsDEployment
>                       type: string
>                   required:
>                   - componentName
>                   type: object
>                 type: array
>               gitopsRepoConditions:
>                 description: Condition describes operations on the GitOps repository,
>                   for example, if there were issues with generating/processing the
>                   repository. This status is updated by the Application Service controller.
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         required:
>         - spec
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations:
>     controller-gen.kubebuilder.io/version: v0.6.1
>   creationTimestamp: null
>   name: snapshots.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     kind: Snapshot
>     listKind: SnapshotList
>     plural: snapshots
>     shortNames:
>     - as
>     - snapshot
>     singular: snapshot
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: Snapshot is the Schema for the snapshots API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: SnapshotSpec defines the desired state of Snapshot
>             properties:
>               application:
>                 description: Application is a reference to the name of an Application
>                   resource within the same namespace, which defines the target application
>                   for the Snapshot (when used with a Binding).
>                 type: string
>               artifacts:
>                 description: Artifacts is a placeholder section for 'artifact links'
>                   we want to maintain to other AppStudio resources. See Environment
>                   API doc for details.
>                 properties:
>                   unstableFields:
>                     description: 'NOTE: This field (and struct) are placeholders.
>                       - Until this API is stabilized, consumers of the API may store
>                       any unstructured JSON/YAML data here,   but no backwards compatibility
>                       will be preserved.'
>                     x-kubernetes-preserve-unknown-fields: true
>                 type: object
>               components:
>                 description: Components field contains the sets of components to deploy
>                   as part of this snapshot.
>                 items:
>                   description: SnapshotComponent
>                   properties:
>                     containerImage:
>                       description: ContainerImage is the container image to use when
>                         deploying the component, as part of a Snapshot
>                       type: string
>                     name:
>                       description: Name is the name of the component
>                       type: string
>                   required:
>                   - containerImage
>                   - name
>                   type: object
>                 type: array
>               displayDescription:
>                 description: DisplayDescription is a user-visible, user definable
>                   description for the resource (and is not used for any functional
>                   behaviour)
>                 type: string
>               displayName:
>                 description: DisplayName is a user-visible, user-definable name for
>                   the resource (and is not used for any functional behaviour)
>                 type: string
>             required:
>             - application
>             type: object
>           status:
>             description: SnapshotStatus defines the observed state of Snapshot
>             properties:
>               conditions:
>                 description: Conditions represent the latest available observations
>                   for the Snapshot
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     type FooStatus struct{     // Represents the observations of a
>                     foo's current state.     // Known .status.conditions.type are:
>                     \"Available\", \"Progressing\", and \"Degraded\"     // +patchMergeKey=type
>                     \    // +patchStrategy=merge     // +listType=map     // +listMapKey=type
>                     \    Conditions []metav1.Condition `json:\"conditions,omitempty\"
>                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`
>                     \n     // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
> ---
1585c3528
<         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
---
>         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
1667c3610
<         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
---
>         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46
1749c3692
<         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
---
>         image: quay.io/redhat-appstudio/gitops-service:d2480e7abbe50e4207b4ef9368e481a9329a3a46 </pre> 
</details>
<details> 
<summary>Changes in diff-b2a44dd-8d05e7a-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-b6a26b4-07d3eba-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-bd5a5ad-ebb2026-kustomize with 19 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-ebb2026/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-bd5a5ad/components/jvm-build-service/kustomize.out
288,289d287
<                   postBuildScript:
<                     type: string
347,348d344
<                     postBuildScript:
<                       type: string
367,368d362
<               pipelineRetries:
<                 type: integer
407,408d400
<                     postBuildScript:
<                       type: string
1039,1040c1031,1032
<           value: 715102850a1dab062a4170c712f21cab3569f858
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:715102850a1dab062a4170c712f21cab3569f858
---
>           value: 9c5ce555e6ef08757b76daa60eb2dc096221bf83
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:9c5ce555e6ef08757b76daa60eb2dc096221bf83 </pre> 
</details>
<details> 
<summary>Changes in diff-be64ed0-98ce5fb-kustomize with 16 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-98ce5fb/components/authentication/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-be64ed0/components/authentication/staging/kustomize.out
677a678,691
> kind: RoleBinding
> metadata:
>   name: test-team
>   namespace: test-team
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: component-maintainer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: Test team
> ---
> apiVersion: rbac.authorization.k8s.io/v1 </pre> 
</details>
<details> 
<summary>Changes in diff-bf722ff-bd5a5ad-kustomize with 60 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-bd5a5ad/components/integration/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-bf722ff/components/integration/kustomize.out
6d5
<     openshift.io/cluster-monitoring: "true"
534,551d532
<   name: integration-service-prometheus-viewer-role
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - nodes
<   - nodes/metrics
<   - services
<   - endpoints
<   - pods
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
875,887d855
<   name: integration-service-prometheus-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: integration-service-prometheus-viewer-role
< subjects:
< - kind: ServiceAccount
<   name: prometheus-k8s
<   namespace: openshift-monitoring
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
1024c992
<         image: quay.io/redhat-appstudio/integration-service:64f8f5ac9528a5134e4957c7604c443cfbaad83d
---
>         image: quay.io/redhat-appstudio/integration-service:2afed2d3c1c4e79e2c692e68f50a1fedf7e6d9bf
1069,1087d1036
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: integration-service-controller-manager-metrics-monitor
<   namespace: integration-service
< spec:
<   endpoints:
<   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager </pre> 
</details>
<details> 
<summary>Changes in diff-c1b59f1-f9bfff1-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-f9bfff1/components/build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-c1b59f1/components/build-service/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6655bacbd4493f8dd01909554d5fc225d4dd888b
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6655bacbd4493f8dd01909554d5fc225d4dd888b
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6655bacbd4493f8dd01909554d5fc225d4dd888b
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6655bacbd4493f8dd01909554d5fc225d4dd888b
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:573ad14821a21ef5eb7b1dc66542a7c66b8a37f9 </pre> 
</details>
<details> 
<summary>Changes in diff-c58d62a-90de354-kustomize with 8 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-90de354/components/dev-sso/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-c58d62a/components/dev-sso/kustomize.out
45,48c45
<     - clientRoles:
<         realm-management:
<         - manage-users
<       credentials:
---
>     - credentials: </pre> 
</details>
<details> 
<summary>Changes in diff-c662270-03f761b-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-03f761b/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-c662270/app-of-apps-staging.yaml
960c960
<             clusterDir: ""
---
>             clusterDir: base </pre> 
</details>
<details> 
<summary>Changes in diff-c77a8eb-f3fb415-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-c917b93-eb11c35-kustomize with 13 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-eb11c35/components/enterprise-contract/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-c917b93/components/enterprise-contract/kustomize.out
212c212
<   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:6f4dad9b165576680fd20ce6b9b78ede9aceec0035d6212f833cb2504aa1bb30
---
>   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:9a50ecf11a32ae77ac3a1bfed79072bd1528d88f@sha256:7d0117dfc10c29cc507392323f1880fb62289a847bd827bb9a06cda17cac2370
232c232
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:59b9caa14e241454950f82ae1b54ce0a21063c279db1b6148a7b983c9b6c1bee
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-5e76d0e@sha256:0a74ea290975fbe9280b17b43add061d59caa63a3e7b988bd61872b037fa82ed
235c235
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:c16fc87e87bb97169726322a05bf2e5eb228d1bbd4abc34c9912fbe4f4011b1f
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-95fe672@sha256:c0c9232c3ed4310b486dae22bacaaedc6f6759bcb1f404e96c69cb8311b52977 </pre> 
</details>
<details> 
<summary>Changes in diff-c9c8ac4-5bab796-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-cba76ff-e28f605-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-cc60e59-f109b62-kustomize with 101 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-f109b62/app-of-apps-staging.yaml /home/john/dev/kdiff/kustomized-cache/tag-cc60e59/app-of-apps-staging.yaml
37c37
<         targetRevision: main
---
>         targetRevision: multi-cluster
81c81
<         targetRevision: main
---
>         targetRevision: multi-cluster
125c125
<         targetRevision: main
---
>         targetRevision: multi-cluster
171c171
<         targetRevision: main
---
>         targetRevision: multi-cluster
207c207
<         targetRevision: main
---
>         targetRevision: multi-cluster
253c253
<         targetRevision: main
---
>         targetRevision: multi-cluster
294c294
<         targetRevision: main
---
>         targetRevision: multi-cluster
330c330
<         targetRevision: main
---
>         targetRevision: multi-cluster
364c364
<         targetRevision: main
---
>         targetRevision: multi-cluster
412c412
<         targetRevision: main
---
>         targetRevision: multi-cluster
448c448
<         targetRevision: main
---
>         targetRevision: multi-cluster
494c494
<         targetRevision: main
---
>         targetRevision: multi-cluster
528c528
<         targetRevision: main
---
>         targetRevision: multi-cluster
562c562
<         targetRevision: main
---
>         targetRevision: multi-cluster
596c596
<         targetRevision: main
---
>         targetRevision: multi-cluster
632c632
<         targetRevision: main
---
>         targetRevision: multi-cluster
666c666
<         targetRevision: main
---
>         targetRevision: multi-cluster
700c700
<         targetRevision: main
---
>         targetRevision: multi-cluster
748c748
<         targetRevision: main
---
>         targetRevision: multi-cluster
784c784
<         targetRevision: main
---
>         targetRevision: multi-cluster
820c820
<         targetRevision: main
---
>         targetRevision: multi-cluster
854c854
<         targetRevision: main
---
>         targetRevision: multi-cluster
904c904
<         targetRevision: main
---
>         targetRevision: multi-cluster
938c938
<         targetRevision: main
---
>         targetRevision: multi-cluster
972c972
<         targetRevision: main
---
>         targetRevision: multi-cluster </pre> 
</details>
<details> 
<summary>Changes in diff-cd7e151-d90b6c3-kustomize with 26 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-d90b6c3/components/gitops/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-cd7e151/components/gitops/kustomize.out
1585c1585
<         image: quay.io/redhat-appstudio/gitops-service:491d83f7a0e67f20a872269572f9e8392452f00d
---
>         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
1667c1667
<         image: quay.io/redhat-appstudio/gitops-service:491d83f7a0e67f20a872269572f9e8392452f00d
---
>         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
1749c1749
<         image: quay.io/redhat-appstudio/gitops-service:491d83f7a0e67f20a872269572f9e8392452f00d
---
>         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
diff -r /home/john/dev/kdiff/kustomized-cache/tag-d90b6c3/components/gitops/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-cd7e151/components/gitops/staging/kustomize.out
1585c1585
<         image: quay.io/redhat-appstudio/gitops-service:491d83f7a0e67f20a872269572f9e8392452f00d
---
>         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
1667c1667
<         image: quay.io/redhat-appstudio/gitops-service:491d83f7a0e67f20a872269572f9e8392452f00d
---
>         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678
1749c1749
<         image: quay.io/redhat-appstudio/gitops-service:491d83f7a0e67f20a872269572f9e8392452f00d
---
>         image: quay.io/redhat-appstudio/gitops-service:de0006e1ca9cd25c9f709527c01deb3fb88f3678 </pre> 
</details>
<details> 
<summary>Changes in diff-cd9888b-30dea39-kustomize with 7 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-30dea39/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-cd9888b/components/jvm-build-service/kustomize.out
1039,1040c1039,1040
<           value: 3b4e904fb3567649f539aa4ab0b51de27318d64a
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:3b4e904fb3567649f539aa4ab0b51de27318d64a
---
>           value: 715102850a1dab062a4170c712f21cab3569f858
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:715102850a1dab062a4170c712f21cab3569f858 </pre> 
</details>
<details> 
<summary>Changes in diff-cefc822-6c9a49a-kustomize with 3 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-6c9a49a/components/application-api/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-cefc822/components/application-api/kustomize.out
1118a1119
>             - type </pre> 
</details>
<details> 
<summary>Changes in diff-d20d117-695626b-kustomize with 17 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-695626b/components/build-service/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-d20d117/components/build-service/staging/kustomize.out
586c586
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:4104361804a104899371e0fd2f7179cf2c6b07d1
592c592
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:4104361804a104899371e0fd2f7179cf2c6b07d1
598c598
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:4104361804a104899371e0fd2f7179cf2c6b07d1
604c604
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b1aeee4d3ac149a88eab536577ff7dc20b0ebcb0
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:4104361804a104899371e0fd2f7179cf2c6b07d1 </pre> 
</details>
<details> 
<summary>Changes in diff-d2f9528-9484583-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-9484583/components/build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-d2f9528/components/build-service/kustomize.out
522c522
<         image: quay.io/redhat-appstudio/build-service:10a1ad9cea5cbc0f6c5946148c5f2f7fcdd60b91
---
>         image: quay.io/redhat-appstudio/build-service:60a92916feb3080c8769de1db392a0b1ab21d857 </pre> 
</details>
<details> 
<summary>Changes in diff-d614b96-95985e0-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-95985e0/components/has/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-d614b96/components/has/kustomize.out
677c677
<         image: quay.io/redhat-appstudio/application-service:695765c656ab1cd87a661881543114e540a23b8c
---
>         image: quay.io/redhat-appstudio/application-service:df9177f14a0e46f9e9da51ff2d0f6055b67f9abe </pre> 
</details>
<details> 
<summary>Changes in diff-d75b32d-e5c589e-kustomize with 15 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-e5c589e/components/tekton-ci/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-d75b32d/components/tekton-ci/staging/kustomize.out
44a45,57
> apiVersion: v1
> kind: PersistentVolumeClaim
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: app-studio-default-workspace
> spec:
>   accessModes:
>   - ReadWriteOnce
>   resources:
>     requests:
>       storage: 100Gi
> --- </pre> 
</details>
<details> 
<summary>Changes in diff-d90b6c3-0ed82ee-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-de8e8c0-f6deb7f-kustomize with 9 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-f6deb7f/components/enterprise-contract/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-de8e8c0/components/enterprise-contract/kustomize.out
236c236
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-5e76d0e@sha256:0a74ea290975fbe9280b17b43add061d59caa63a3e7b988bd61872b037fa82ed
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-ccc72dc@sha256:00e383dae2d0d79552ec6c53e68e74ead86f1e62714f5e1224dcfe88230f1f9a
239c239
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-95fe672@sha256:c0c9232c3ed4310b486dae22bacaaedc6f6759bcb1f404e96c69cb8311b52977
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-ccc72dc@sha256:af149d5f68984b303739eb2222ad5b7471862b287387a27d338ec0adb36aab7d </pre> 
</details>
<details> 
<summary>Changes in diff-decfc8a-526e0d2-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-dfb33dc-e8c558f-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-e8c558f/components/enterprise-contract/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-dfb33dc/components/enterprise-contract/kustomize.out
212c212
<   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:9a50ecf11a32ae77ac3a1bfed79072bd1528d88f@sha256:7d0117dfc10c29cc507392323f1880fb62289a847bd827bb9a06cda17cac2370
---
>   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:a30537c1e3f17187b099453704cacd6f18db14f0@sha256:eab10cfd43093ac7422bf3d576285c5315b0aca7b6248be8b7ff357b524ff669 </pre> 
</details>
<details> 
<summary>Changes in diff-e5c589e-8fb8d98-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-e8c558f-58c00f5-kustomize with 28 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-58c00f5/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-e8c558f/components/jvm-build-service/kustomize.out
303,306d302
<               diagnosticDockerFiles:
<                 items:
<                   type: string
<                 type: array
1031,1032c1027,1028
<           value: 9c5ce555e6ef08757b76daa60eb2dc096221bf83
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:9c5ce555e6ef08757b76daa60eb2dc096221bf83
---
>           value: 5f48cda609042ab11062a3708a5384bfd499b09d
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:5f48cda609042ab11062a3708a5384bfd499b09d
1059c1055
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:e692f15322dd969e128844d51ef6193d3a95f2b8
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
1063c1059
<       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:e692f15322dd969e128844d51ef6193d3a95f2b8
---
>       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
1067c1063
<       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:e692f15322dd969e128844d51ef6193d3a95f2b8
---
>       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:b21afff3412984bb7e06e9a03c7097db201d3f55
1071c1067
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:e692f15322dd969e128844d51ef6193d3a95f2b8
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:b21afff3412984bb7e06e9a03c7097db201d3f55 </pre> 
</details>
<details> 
<summary>Changes in diff-eb11c35-171c845-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-eb81ff9-c1b59f1-kustomize with 25 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-c1b59f1/components/release/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-eb81ff9/components/release/kustomize.out
241,248d240
<     - jsonPath: .status.deploymentStartTime
<       name: Deployment Start Time
<       priority: 1
<       type: date
<     - jsonPath: .status.deploymentCompletionTime
<       name: Deployment Completion Time
<       priority: 1
<       type: date
361,370d352
<               deploymentCompletionTime:
<                 description: DeploymentCompletionTime is the time when the SnapshotEnvironmentBinding
<                   has all components deployed
<                 format: date-time
<                 type: string
<               deploymentStartTime:
<                 description: DeploymentStartTime is the time when the SnapshotEnvironmentBinding
<                   was created
<                 format: date-time
<                 type: string
1851c1833
<         image: quay.io/redhat-appstudio/release-service:3aedd895b70ed464c53624489fa4b8f5140a1091
---
>         image: quay.io/redhat-appstudio/release-service:fe1657ef9ad9153de69acb0a1aabfa905dd216c2 </pre> 
</details>
<details> 
<summary>Changes in diff-ebb2026-b6a26b4-kustomize with 5 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-b6a26b4/components/has/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-ebb2026/components/has/staging/kustomize.out
677c677
<         image: quay.io/redhat-appstudio/application-service:d2edbc61e5e698c36932058e7dd2cd2286811f15
---
>         image: quay.io/redhat-appstudio/application-service:695765c656ab1cd87a661881543114e540a23b8c </pre> 
</details>
<details> 
<summary>Changes in diff-f109b62-a181b33-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-f3fb415-5230727-kustomize with 9 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-5230727/components/quality-dashboard/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-f3fb415/components/quality-dashboard/kustomize.out
119c119
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:b124604afa730718b2dbe80e1d3132a67764fb7f
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:132f37b89595331df68e6e23981424d7eb04db0f
201c201
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:b124604afa730718b2dbe80e1d3132a67764fb7f
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:132f37b89595331df68e6e23981424d7eb04db0f </pre> 
</details>
<details> 
<summary>Changes in diff-f688f21-4ca3754-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-f6deb7f-cd7e151-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-f9bfff1-b1e43d1-kustomize with 7 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-b1e43d1/components/jvm-build-service/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-f9bfff1/components/jvm-build-service/kustomize.out
1027,1028c1027,1028
<           value: 5f48cda609042ab11062a3708a5384bfd499b09d
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:5f48cda609042ab11062a3708a5384bfd499b09d
---
>           value: 9fbebf56d88762c14597b6882dca212b56243d0d
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:9fbebf56d88762c14597b6882dca212b56243d0d </pre> 
</details>
<details> 
<summary>Changes in diff-fa38325-fcbbcc8-kustomize with 318 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-fcbbcc8/components/image-controller/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-fa38325/components/image-controller/staging/kustomize.out
1,316d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: image-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: image-controller-controller-manager
<   namespace: image-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: image-controller-leader-election-role
<   namespace: image-controller
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   creationTimestamp: null
<   name: image-controller-manager-role
< rules:
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
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - components
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: image-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: image-controller-proxy-role
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
<   namespace: image-controller
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
<   name: image-controller-leader-election-rolebinding
<   namespace: image-controller
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: image-controller-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: image-controller-controller-manager
<   namespace: image-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: image-controller-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: image-controller-manager-role
< subjects:
< - kind: ServiceAccount
<   name: image-controller-controller-manager
<   namespace: image-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: image-controller-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: image-controller-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: image-controller-controller-manager
<   namespace: image-controller
< ---
< apiVersion: v1
< data:
<   controller_manager_config.yaml: |
<     apiVersion: controller-runtime.sigs.k8s.io/v1alpha1
<     kind: ControllerManagerConfig
<     health:
<       healthProbeBindAddress: :8081
<     metrics:
<       bindAddress: 127.0.0.1:8080
<     webhook:
<       port: 9443
<     leaderElection:
<       leaderElect: true
<       resourceName: ed4c18c3.appstudio.redhat.com
<     # leaderElectionReleaseOnCancel defines if the leader should step down volume
<     # when the Manager ends. This requires the binary to immediately end when the
<     # Manager is stopped, otherwise, this setting is unsafe. Setting this significantly
<     # speeds up voluntary leader transitions as the new leader don't have to wait
<     # LeaseDuration time first.
<     # In the default scaffold provided, the program ends immediately after
<     # the manager stops, so would be fine to enable this option. However,
<     # if you are doing or is intended to do any operation such as perform cleanups
<     # after the manager stops then its usage might be unsafe.
<     # leaderElectionReleaseOnCancel: true
< kind: ConfigMap
< metadata:
<   name: image-controller-manager-config
<   namespace: image-controller
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: image-controller-controller-manager-metrics-service
<   namespace: image-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: controller-manager
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: image-controller-controller-manager
<   namespace: image-controller
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: controller-manager
<   template:
<     metadata:
<       annotations:
<         kubectl.kubernetes.io/default-container: manager
<       labels:
<         control-plane: controller-manager
<     spec:
<       containers:
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
<         - --leader-elect
<         command:
<         - /manager
<         image: quay.io/redhat-appstudio/image-controller:8fea7b436f4ec8362a645bcf5bee14427686c83e
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 20Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<         volumeMounts:
<         - mountPath: /workspace
<           name: quaytoken
<           readOnly: true
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.13.0
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
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: image-controller-controller-manager
<       terminationGracePeriodSeconds: 10
<       volumes:
<       - name: quaytoken
<         secret:
<           secretName: quaytoken
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "1"
<   name: quaytoken
<   namespace: image-controller
< spec:
<   dataFrom:
<   - extract:
<       key: staging/build/image-controller
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quaytoken </pre> 
</details>
<details> 
<summary>Changes in diff-fc2e37a-476e728-kustomize with 0 lines changed </summary>  
<pre>  </pre> 
</details>
<details> 
<summary>Changes in diff-fcbbcc8-5770370-kustomize with 11 lines changed </summary>  
<pre> diff -r /home/john/dev/kdiff/kustomized-cache/tag-5770370/components/tekton-ci/staging/kustomize.out /home/john/dev/kdiff/kustomized-cache/tag-fcbbcc8/components/tekton-ci/staging/kustomize.out
232,240d231
<   name: o11y
< spec:
<   url: https://github.com/redhat-appstudio/o11y
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true </pre> 
</details>
