.PHONY: all build docker-up docker-down docker-up-ek

all: docker-build-ms docker-up-ek docker-up

build:
	./gradlew build

docker-build-ms: build
	docker build --build-arg JAR_FILE=./build/libs/javamicroservice.jar . -t java-ms

docker-up-ek:
	docker-compose -f docker/ek-docker-compose.yml up -d

docker-down-ek:
	docker-compose -f docker/ek-docker-compose.yml down

docker-up:
	docker-compose -f docker/docker-compose.yml up --build

docker-down:
	docker-compose -f docker/docker-compose.yml down

docker-swarm-up:
	docker stack deploy -c docker/docker-compose.yml ms

docker-swarm-down:
	docker stack rm ms
