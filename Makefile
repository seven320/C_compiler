setup/docker:
	docker build -t compilerbook https://www.sigbus.info/compilerbook/Dockerfile

test:
	docker run --rm -v 9cc:/9cc -w /9cc compilerbook make test

run:
	docker run --rm -it -v $(shell pwd)/9cc:/9cc -w /9cc compilerbook
