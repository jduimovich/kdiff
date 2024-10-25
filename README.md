
This repo contains a tool which can compute the kustomize differences between two successive commits 
of infra deployments. 

# Kustomize diff
The current workflow uses successive commits HEAD and HEAD^ and processes the staging overlay.

See the directory `change-history` for diffs between commits. 

See the directory `commit-xxxxxxx` for generate kustomize and linting results

A github action keeps this up to date 

# Linting 
Each commit has a lint file as well for each overlay found in the commit in a file representing the overlay.
See `kustomized-cache/commit-4f5d17a/development.lint` for an example. 

# Reports 

A prettyprint report appears in `docs/index.html` and is kept up to date via a github action. 
The report is visible here https://jduimovich.github.io/kdiff/ 
 
## todo 
- need to use Application Sets for precise diff for each app-of-apps. 
- Add all environments and allow for branches.
- allow diff between any two commits. 
