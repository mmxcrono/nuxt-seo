
.PHONY: build dev

build:
	npx nuxt build

dev:
	npx nuxt dev

prod:
	npx nuxt build && npx nuxt preview