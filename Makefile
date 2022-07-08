bold := $(shell tput bold)
green := $(shell tput setaf 2)
normal := $(shell tput sgr0)
gray := $(shell tput setaf 0)
yellow := $(shell tput setaf 3)

run: all clean

all: main.ts
	npm install
	npx tsc
	@printf '\n'
	@printf '$(bold)$(green)COMPILATION SUCCESSFUL\n'
	@printf '$(bold)$(yellow)Running... $(normal)'
	node ./build/main.js
	@printf '\n'
clean:
	@printf '$(bold)$(green)DONE$(normal)\n'
	@printf 'Cleaning up...\n'
	@printf '$(gray)'
	rm -rf ./node_modules
	rm -rf ./*.js
	rm -rf ./main.js ./build
