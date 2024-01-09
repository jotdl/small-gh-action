IMAGE_ICASSIGNER := ghcr.io/jotdl/small-gh-action
VERSION := ${VERSION}

.PHONY: build
build-image:
	docker build -t $(IMAGE_ICASSIGNER):latest .

.PHONY: publish-image
publish-image: build-image
	docker tag $(IMAGE_ICASSIGNER):latest $(IMAGE_ICASSIGNER):$(VERSION)
	docker push $(IMAGE_ICASSIGNER):$(VERSION)
	docker push $(IMAGE_ICASSIGNER):latest