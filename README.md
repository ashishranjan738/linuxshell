# linuxshell
The motivation of this project was to get a fedora based linux shell in mac based operating system which can be used for compiling go based projects in mac os.

### setup:
```
mkdir -p $GOPATH/.linuxshell/bin
mkdir -p $GOPATH/.linuxshell/.cache
```

##### Set the below alias in bash.rc or any other relevant shell file.
```
alias linuxshell='docker run --rm -e GOPATH=${GOPATH} -e GOBIN=${GOPATH}/.linuxshell/bin -e GOCACHE=${GOPATH}/.linuxshell/.cache -v ${GOPATH}/.linuxshell/.cache:${GOPATH}/.linuxshell/.cache -v ${GOPATH}/.linuxshell/bin:${GOPATH}/.linuxshell/bin -v $(pwd):$(pwd) -v /var/run/docker.sock:/var/run/docker.sock -w $(pwd) -it ashishranjan738/linuxshell:latest'
```

### usage:
```
linuxshell
```
 -> Above will give you a fedora based linux shell in the current working directory

```
linuxshell -c "echo HelloWorld"
```
-> Above can be used for running a shell command without execing into the container