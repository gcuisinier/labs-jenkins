.PHONY: jenkins build


jenkins: build
	mkdir work && chmod 777 work
	docker run -d  -p 10000:8080 -v $(PWD)/work:/var/jenkins_home jenkins:local

build:
	docker build -t jenkins:local .
