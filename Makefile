run_dev:
	docker run -it -p 10000:10000 -p 20000:20000 --name debian debian:latest

build_dev:
	docker build -f dev_myself.dockerfile -t dev_myself .
