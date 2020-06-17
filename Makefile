
.PHONY : sync
sync: ## Sync repo with remote repository
	reposync --config crio.repo --repo=simonswine:cri-o:epel-7
	reposync --config crio.repo --repo=simonswine:cri-o:epel-8

.PHONY : metadata
metadata:
	createrepo simonswine:cri-o:epel-7
	createrepo simonswine:cri-o:epel-8

