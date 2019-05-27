build:
	docker build -t androguard-2.0 .

run:
	docker run --rm -it -v ${MOUNT}:/androguard-2.0/apk_folder androguard-2.0

clean:
	docker rmi androguard-2.0
