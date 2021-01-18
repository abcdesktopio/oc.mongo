NOCACHE := "false"

ifdef $$NOCACHE
  NOCACHE := $$NOCACHE
endif


all: mongo

release:
	docker build --no-cache=$(NOCACHE) -t oc.mongo .
	docker tag oc.mongo abcdesktopio/oc.mongo:latest

dev:
	docker build --no-cache=$(NOCACHE) -t oc.mongo .
	docker tag oc.mongo abcdesktopio/oc.mongo:dev

push_release:
	docker push abcdesktopio/oc.mongo:latest

push_dev:
	docker push abcdesktopio/oc.mongo:dev
