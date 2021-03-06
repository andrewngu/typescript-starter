install:
	yarn install

eslint:
	@PATH="./node_modules/.bin:$$PATH"; \
	eslint 'web/src/**/*.{js,jsx,ts,tsx}'

stylelint:
	@PATH="./node_modules/.bin:$$PATH"; \
	stylelint --fix 'web/styles/**/*.scss'

typescript:
	@PATH="./node_modules/.bin:$$PATH"; \
	tsc --noEmit -p web/src

webpack:
	@PATH="./node_modules/.bin:$$PATH"; \
	webpack-dev-server --config ./web/webpack.config.js
