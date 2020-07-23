install:
	yarn install

type:
	@PATH="./node_modules/.bin:$$PATH"; \
	tsc --noEmit -p web/src

webpack:
	@PATH="./node_modules/.bin:$$PATH"; \
	webpack-dev-server --config ./web/webpack.config.js
