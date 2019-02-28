# Kubernetes Playground

A workshop that works as a starting point to mess around with kubernetes.

By the end you should know how to run kubernetes in your PC and how to run
different services in your kubernetes.

## Requirements

### OSX

* [Homebrew](https://brew.sh/)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* [VirtualBox 5.2](https://www.virtualbox.org/)

Download from here: https://www.virtualbox.org/wiki/Download_Old_Builds_5_2

* [Minikube](https://github.com/kubernetes/minikube)

```
$ brew cask install minikube

$ minikube config set cpus 4
$ minikube config set memory 4096

$ minikube start
```

* [Helm]([https://github.com/kubernetes/minikube](https://helm.sh/))

```
$ brew install kubernetes-helm

## install helm on the kuberntes cluster
$ helm init
```

* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

`brew reinstall kubernetes-cli`

### Ubuntu

* [VirtualBox 5.2.18 *!The version is important*](https://www.virtualbox.org/)

Download from here: https://www.virtualbox.org/wiki/Download_Old_Builds_5_2

* [Minikube](https://github.com/kubernetes/minikube)

```
$ snap install minikube --classic

$ minikube config set cpus 4
$ minikube config set memory 4096
```

* [Helm]([https://github.com/kubernetes/minikube](https://helm.sh/))

```
$ snap install helm --classic

## install helm on the kuberntes cluster
$ helm init
```

* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

`snap install kubectl --classic`


## Part 1 - Install Helm

```
$ helm init


### Check if its running

$ kubectl get pods --all-namespaces
```

## Part 2 - Install a Grafana

```
$ helm install --name grafana-release stable/grafana

...

NOTES:
1. Get your 'admin' user password by running:

   kubectl get secret --namespace default grafana-release -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

2. The Grafana server can be accessed via port 80 on the following DNS name from within your cluster:

   grafana-release.default.svc.cluster.local

   Get the Grafana URL to visit by running these commands in the same shell:

     export POD_NAME=$(kubectl get pods --namespace default -l "app=grafana,release=grafana-release" -o jsonpath="{.items[0].metadata.name}")
     kubectl --namespace default port-forward $POD_NAME 3000

3. Login with the password from step 1 and the username: admin
#################################################################################
######   WARNING: Persistence is disabled!!! You will lose your data when   #####
######            the Grafana pod is terminated.                            #####
#################################################################################
```


Check the status:

```
$ helm status grafana-release
```

Get the password

```
$ kubectl get secret --namespace default grafana-release -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
```

Forward the port

```
$ export POD_NAME=$(kubectl get pods --namespace default -l "app=grafana,release=grafana-release" -o jsonpath="{.items[0].metadata.name}")

$ kubectl --namespace default port-forward $POD_NAME 3000
```

Open http://localhost:3000/ and login with `admin:{password}`