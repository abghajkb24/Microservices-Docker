.PHONY: help build up down restart logs ps clean

help:
	@echo "Comandos disponíveis:"
	@echo "  make build    - Build das imagens dos microserviços"
	@echo "  make up       - Inicia todos os containers em background"
	@echo "  make down     - Para e remove os containers"
	@echo "  make restart  - Reinicia os containers"
	@echo "  make logs     - Visualiza os logs em tempo real"
	@echo "  make ps       - Lista os containers ativos"
	@echo "  make clean    - Remove imagens e volumes não utilizados"

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

logs:
	docker-compose logs -f

ps:
	docker-compose ps

clean:
	docker system prune -f
