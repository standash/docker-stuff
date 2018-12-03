gcc:
	docker build -t gcc .

run:
	docker run --rm -it -v ${MOUNT}:/code --cap-add=SYS_PTRACE --security-opt seccomp=unconfined gcc bash 

clean:
	docker rmi gcc
