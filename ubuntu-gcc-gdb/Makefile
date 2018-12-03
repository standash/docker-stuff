gcc:
	docker build -t gcc .

run:
	docker run --rm -it -v ${MOUNT}:/code  gcc bash 

clean:
	docker rmi gcc
