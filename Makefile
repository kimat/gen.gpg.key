.PHONY: key
key:
	docker run --rm gen-gpg-key > key

.PHONY: build
build:
	docker build -t gen-gpg-key .
