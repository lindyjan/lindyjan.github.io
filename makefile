# use tabs for indentation!
GITHUB_REPO ?= lindyjan/lindyjan.github.io

deploy: _site
	cd _site && \
	git init . && \
	git add . && \
	git commit -m "Update documentation."; \
	git push "git@github.com:$(GITHUB_REPO).git" master --force && \
	rm -rf .git

.PHONY: deploy

install:
	bundle install
	yarn install
	# composer install

#ssh:
#	ssh $(SSH-USER)@$(SSH-HOST)