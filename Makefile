.PHONY: all build docker-up docker-down

all: build docker-up

build:
	./gradlew build

docker-up:
	docker-compose -f docker/docker-compose.yml up --build

docker-down:
	docker-compose -f docker/docker-compose.yml down