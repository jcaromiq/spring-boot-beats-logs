.PHONY: all build docker-up docker-down docker-up-ek

all: build docker-up

build:
	./gradlew build

docker-up-ek:
	docker-compose -f docker/ek-docker-compose.yml up -d

docker-up:
	docker-compose -f docker/docker-compose.yml up --build

docker-down:
	docker-compose -f docker/docker-compose.yml down