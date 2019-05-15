build:
	docker build -t octave .

run:
	xhost + 127.0.0.1;
	docker run --rm -it -v ${MOUNT}:/code -e DISPLAY=host.docker.internal:0 octave;

clean:
	docker rmi octave
