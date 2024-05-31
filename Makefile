build:
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml build
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml build
	docker-compose -f ./monopoly4u-game/docker-compose.yaml build
	docker-compose -f ./docker-compose.yaml build

test:
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml up -d --abort-on-container-exit --exit-code-from test
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml up -d --abort-on-container-exit --exit-code-from test
	docker-compose -f ./monopoly4u-game/docker-compose.yaml up -d --abort-on-container-exit --exit-code-from test
	docker-compose -f ./docker-compose.yaml up -d --abort-on-container-exit --exit-code-from test

run:
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml up --build -d
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml up --build -d
	docker-compose -f ./monopoly4u-game/docker-compose.yaml up --build -d
	docker-compose -f ./docker-compose.yaml up --build -d

status:
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml ps
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml ps
	docker-compose -f ./monopoly4u-game/docker-compose.yaml ps
	docker-compose -f ./docker-compose.yaml ps

down:
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml down
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml down
	docker-compose -f ./monopoly4u-game/docker-compose.yaml down
	docker-compose -f ./docker-compose.yaml down
