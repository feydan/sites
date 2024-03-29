help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  docker-start        Create and start containers"
	@echo "  docker-stop         Stop and clear all services"
	@echo "  logs                Follow log output"

docker-start:
	docker-compose -f stack.yml up -d

docker-stop:
	@docker-compose -f stack.yml down -v

logs:
	@docker-compose -f stack.yml logs --tail 100 -f