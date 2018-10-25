TAG ?= dev

# docker
build-image:
	docker build -t voting-system-mr-and-ms-usiu:$(TAG) .;
	docker-compose up;