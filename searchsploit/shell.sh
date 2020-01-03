#!/bin/bash

[ ! "$(docker ps -a | grep searchsploit-ctr)" ] && make start
docker exec -it searchsploit-ctr /bin/bash
