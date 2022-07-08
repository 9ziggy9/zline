all: main.ts
	npx tsc ./main.ts --outFile ./main.js
clean:
	rm -rf ./node_modules
	rm -rf ./main.js ./build/*
