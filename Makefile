run:
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml up --build -d
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml up --build -d
	docker-compose -f ./monopoly4u-game/docker-compose.yaml up --build -d
	docker-compose -f ./docker-compose.yaml up --build -d

down:
	docker-compose -f ./monopoly4u-auth/deployments/docker-compose.yml down
	docker-compose -f ./monopoly4u-sockets/docker-compose.yaml down
	docker-compose -f ./monopoly4u-game/docker-compose.yaml down
	docker-compose -f ./docker-compose.yaml down