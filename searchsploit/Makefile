build:
	@docker build -t searchsploit-img .

start:
	@docker run -d --name=searchsploit-ctr searchsploit-img 

update:
	@docker exec searchsploit-ctr searchsploit -u 
	@docker commit searchsploit-ctr searchsploit-img

stop:
	@docker stop searchsploit-ctr > /dev/null 2>&1 || :
	@docker rm searchsploit-ctr > /dev/null 2>&1 || :
