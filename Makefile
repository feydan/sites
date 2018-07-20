include .env

help:
        @echo ""
        @echo "usage: make COMMAND"
        @echo ""
        @echo "Commands:"
        @echo "  docker-start        Create and start containers"
        @echo "  docker-stop         Stop and clear all services"
        @echo "  logs                Follow log output"

docker-start: init
        docker-compose up -d

docker-stop:
        @docker-compose down -v

logs:
        @docker-compose logs -f