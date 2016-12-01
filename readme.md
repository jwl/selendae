### Hashnode MERN Tutorial Project
Taken from [here](https://sourceforge.net/p/keepass/bugs/1545/#1618) and [here](https://hashnode.com/post/react-tutorial-using-mern-stack-ciiyus9m700qqge53mer0isxz)

# Getting setup:
Develop in a vagrant VM and keep the application running in a docker container

### Vagrant development environment
`vagrant up`
`vagrant ssh`

If you need to regenerate the vagrant file: `vagrant init ubuntu/trusty64`


### Docker development environment
Build docker image from Dockerfile, name it ubuntu_env:
`docker build -t ubuntu_env .`


Generic Docker run usage:
`docker run [OPTIONS] IMAGE [COMMAND] [ARG...]`

Run docker container named `ubuntu_env` and mount the current directory as /src within the container and then enter the container using bash:
`docker run -v $PWD:/src -t -i ubuntu_env:latest /bin/bash`

Run docker container with shared volumes so changes made on host machine propagate into Docker container and DO NOT run an interactive shell
`docker run -p <HOSTPORT>:<CONTAINERPORT> --name <CONTAINERNAME> -v $(pwd)/src:/usr/local/src/src --sig-proxy=false <IMAGENAME> [<COMMANDSTORUN>]`

Example of above command:
`docker run -p 3000:3000 --name selendae_ubuntu -v $(pwd):/usr/local/src/ --sig-proxy=false ubuntu_env`

Example with shared volumes and interactive shell:
`docker run -p 3000:3000 --name selendae_ubuntu -v $(pwd):/usr/local/src/src -t -i ubuntu_env /bin/bash`

