### Hashnode MERN Tutorial Project
Taken from [here](https://sourceforge.net/p/keepass/bugs/1545/#1618)

### Docker development environment
Build docker image from Dockerfile, name it ubuntu_env:
`docker build -t ubuntu_env .`

Run docker container named `ubuntu_env` and mount the current directory as /src within the container and then enter the container using bash:
`docker run -v $PWD:/src -t -i ubuntu_env:latest /bin/bash`


