up-dev:
	docker compose up -d --wait

down-dev:
	docker compose down $(filter-out $@, $(MAKECMDGOALS))

up-prod:
	docker compose -f compose.yml -f compose.prod.yml up -d --wait

down-prod:
	docker compose -f compose.yml -f compose.prod.yml down $(filter-out $@, $(MAKECMDGOALS))

logs-dev:
	docker compose logs $(filter-out $@, $(MAKECMDGOALS))

logs-prod:
	docker compose -f compose.yml -f compose.prod.yml logs $(filter-out $@, $(MAKECMDGOALS))

%:
	@:
