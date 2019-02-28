# Kubernetes Playground

A workshop that works as a starting point to mess around with kubernetes.

By the end you should know how to run kubernetes in your PC and how to run
different services in your kubernetes.

## Requirements

### OSX

* [Homebrew](https://brew.sh/)

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* [Minikube](https://github.com/kubernetes/minikube)

```
$ brew cask install minikube

$ minikube config set cpus 4
$ minikube config set memory 4096
```

* [Helm]([https://github.com/kubernetes/minikube](https://helm.sh/))

`brew install helm`

* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

`brew reinstall kubernetes-cli`

* [VirtualBox](https://www.virtualbox.org/)

`brew cask install virtualbox`

### Ubuntu

* [Minikube](https://github.com/kubernetes/minikube)

```
$ snap install minikube --classic

$ minikube config set cpus 4
$ minikube config set memory 4096
```

* [Helm]([https://github.com/kubernetes/minikube](https://helm.sh/))

`snap install helm --classic`

* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

`snap install kubectl --classic`

* [VirtualBox]([https://github.com/kubernetes/minikube](https://www.virtualbox.org/))

```
$ wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

$ echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian cosmic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```