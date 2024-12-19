
.PHONY: build dev prod gen-ssl docker

build:
	npx nuxt build

dev:
	npx nuxt dev

prod:
	npx nuxt build && npx nuxt preview

gen-ssl:
	mkdir -p certs && openssl req -x509 -newkey rsa:4096 -keyout certs/server.key -out certs/server.crt -days 365 -nodes

docker:
	docker compose up --build