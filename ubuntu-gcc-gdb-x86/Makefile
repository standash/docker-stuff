build:
	docker build -t gcc_x86 .

run:
	docker run --rm -it -v ${MOUNT}:/code --cap-add=SYS_PTRACE --security-opt seccomp=unconfined gcc_x86


clean:
	docker rmi gcc_x86
