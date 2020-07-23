install:
	yarn install

type:
	@PATH="./node_modules/.bin:$$PATH"; \
	tsc --noEmit -p web/src

lint:
	@PATH="./node_modules/.bin:$$PATH"; \
	eslint 'web/src/**/*.{js,jsx,ts,tsx}'


webpack:
	@PATH="./node_modules/.bin:$$PATH"; \
	webpack-dev-server --config ./web/webpack.config.js
