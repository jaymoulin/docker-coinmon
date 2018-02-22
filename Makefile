CACHE ?= --no-cache=1
VERSION ?= 0.0.22
FULLVERSION ?= 0.0.22
archs = amd64 arm64v8 arm32v6

.PHONY: all build publish latest
all: build publish latest
qemu-arm-static:
	cp /usr/bin/qemu-arm-static .
qemu-aarch64-static:
	cp /usr/bin/qemu-aarch64-static .
build: qemu-aarch64-static qemu-arm-static
	$(foreach arch,$(archs), \
		cat Dockerfile | sed "s/FROM node:alpine/FROM ${arch}\/node:alpine/g" > .Dockerfile; \
		docker build -t jaymoulin/coinmon:${VERSION}-$(arch) -f .Dockerfile ${CACHE} .;\
	)
publish:
	docker push jaymoulin/coinmon
	cat manifest.yml | sed "s/\$$VERSION/${VERSION}/g" > manifest.yaml
	cat manifest.yaml | sed "s/\$$FULLVERSION/${FULLVERSION}/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
latest: build
	FULLVERSION=latest VERSION=${VERSION} make publish
