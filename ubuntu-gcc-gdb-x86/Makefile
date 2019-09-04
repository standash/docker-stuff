build:
	docker build -t gcc_x86 .

run:
	docker run --rm -it -v ${MOUNT}:/code gcc_x86

clean:
	docker rmi gcc
