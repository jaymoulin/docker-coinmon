CACHE ?= --no-cache=1
VERSION ?= 0.0.22

.PHONY: all build publish
all: build publish
build:
	docker buildx build --platform linux/arm/v6,linux/arm/v7,linux/arm64/v8,linux/amd64 ${PUSH} --build-arg VERSION=${VERSION} --tag femtopixel/eleventy --tag femtopixel/eleventy:${VERSION} ${CACHE} .
publish:
	PUSH=--push CACHE= make build
