PRJ_FILES:=hello-world.txt

.PHONY: build output test

build: ## An example of a build task
	echo "Here is my file" > $(PRJ_FILES)

output: ## Outputs the contents of the files
	cat $(PRJ_FILES)

test: ## Performs a testing action
	ls