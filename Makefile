
.PHONY: build dev prod gen-ssl docker

gen-ssl:
	mkdir -p nginx/ssl && openssl req -x509 -newkey rsa:4096 -keyout nginx/ssl/server.key -out nginx/ssl/server.crt -days 365 -nodes

gen-dha:
	mkdir -p nginx/ssl && openssl dhparam -out ./nginx/ssl/dhparam.pem 4096

dev:
	docker-compose up --build

prod:
	NODE_ENV=production docker-compose up --build
