BUILD_ID := $(shell git rev-parse --short HEAD 2>/dev/null)
WORKSPACE := $(shell pwd)

.PHONY: all

.DEFAULT_GOAL := help
help: ## List targets & descriptions
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


docs: docs/api.html ## generate API docs

docs/api.html: apiary.apib
	mkdir -p docs && \
	NOCACHE=1 aglio -i apiary.apib -o docs/api.html --theme-full-width --theme-style default

push-docs-dev: docs/api.html ## Push API docs to developer site (internal)
	rsync -a --delete --delete-after docs/api.html ubuntu@apidocs.hootops.com:/ebs1/www/health-checks/index.html
