build:
	docker build -t octave .

run:
	docker run --rm -it -v ${MOUNT}:/code -e DISPLAY=host.docker.internal:0 octave

clean:
	docker rmi octave
