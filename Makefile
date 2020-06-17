
.PHONY : sync
sync: ## Sync repo with remote repository
	reposync --config crio.repo --repo=epel-7
	reposync --config crio.repo --repo=epel-8

.PHONY : metadata
metadata:
	createrepo epel-7
	createrepo epel-8

