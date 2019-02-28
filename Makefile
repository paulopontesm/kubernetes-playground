docker:
	docker build -t hellogo .

run:
	go run hello.go

build:
	go build hello.go

deploy:
	-kubectl delete -f hello.yaml
	kubectl create -f hello.yaml
	kubectl get all
	minikube service hello-svc --url
