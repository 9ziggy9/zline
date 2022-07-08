bold := $(shell tput bold)
green := $(shell tput setaf 2)

all: main.ts
	npm install
	npx tsc
	@printf '\n'
	@printf '$(bold)COMPILATION SUCCESSFUL\n'
	@printf '$(green)Running... '
	node ./build/main.js
clean:
	rm -rf ./node_modules
	rm -rf ./*.js
	rm -rf ./main.js ./build
