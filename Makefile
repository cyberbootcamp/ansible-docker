.PHONY: default
default:
	echo default target

.PHONY: build
build:
	sudo docker build -t ansible .
	# docker tag squid kirscht/squid-proxy-docker:latest
	# docker push new-repo:tagname

.PHONY: start
start:
	#sudo docker run -d -p 3128:3128 -p 3129:3129 --name squid squid
	sudo docker run -d --name ansible cyberxsecurity/ansible

.PHONY: connect
connect:
	sudo docker exec -it ansible /bin/bash

.PHONY: stop
stop:
	sudo docker stop ansible

.PHONY: rm
rm: stop
	sudo docker rm ansible
