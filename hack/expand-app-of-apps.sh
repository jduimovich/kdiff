# this will be used to find the App Sets 
# to expand and print the expanded gitops manifests.

kustomize build infra-deployments/argo-cd-apps/overlays/staging 
yq app-of-apps.yaml -o=json > app-of-apps.json 