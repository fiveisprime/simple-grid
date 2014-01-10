SRC = src/normalize.css src/grid.css src/user.css

all: build min
	@echo ===========================
	@echo dist/style.css written
	@echo dist/style.min.css written
	@echo ===========================

build: $(SRC)
	@cat $^ > dist/style.tmp.css && \
	node_modules/.bin/myth dist/style.tmp.css dist/style.css && \
	rm dist/style.tmp.css

min:
	@node_modules/.bin/cleancss --s0 \
	--output dist/style.min.css \
	dist/style.css
