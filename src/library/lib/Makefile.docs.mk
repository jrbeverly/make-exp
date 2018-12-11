DEFAULT_VERSION := -no-version-set-
VERSION ?= $(DEFAULT_VERSION)
ALIASES = exp
BUILD_PARAMETERS = --build-arg exp

.PHONY: help variables print-% vars

help: ## Print the help
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

print-% : ; @echo $* = $($*) ## Prints the variable value for an image.

variables: ## Prints all the variables of the application
	$(foreach v, $(filter %,$(.VARIABLES)), $(info $(v) = $($(v))))

vars: ## Prints all the variables with the prefix PRJ
	$(foreach v, $(filter PRJ_%,$(.VARIABLES)), $(info $(v) = $($(v))))