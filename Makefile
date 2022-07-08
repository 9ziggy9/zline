all: main.ts
	npm install
	npx tsc ./main.ts --outFile ./main.js
	echo "Running... " && echo"" && node ./main.js
clean:
	rm -rf ./node_modules
	rm -rf ./main.js ./build/*
