
.PHONY: build dev prod gen-ssl docker

build:
	npx nuxt build

dev:
	npx nuxt dev

prod:
	npx nuxt build && npx nuxt preview

gen-ssl:
	mkdir -p nginx/ssl && openssl req -x509 -newkey rsa:4096 -keyout nginx/ssl/server.key -out nginx/ssl/server.crt -days 365 -nodes

docker:
	docker compose up --build