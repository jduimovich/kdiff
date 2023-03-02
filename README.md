
This repo contains a tool which can compute the kustomize differences between two successive commits 
of infra deployments. 

The current workflow uses successive commits HEAD and HEAD^ and processes the staging overlay.
 

TODO - need to use Application Sets for precise diff for each app-of-apps. 
TODO - Add all environments and allow for branches.
TODO - allow diff between any two commits. 