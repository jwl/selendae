### Tutorial notes for MERN stack introduction
[Hashnode tutorial](https://hashnode.com/post/react-tutorial-using-mern-stack-ciiyus9m700qqge53mer0isxz)
[nvm install tutorial](https://github.com/creationix/nvm#install-script)


Build docker image from Dockerfile, name it ubuntu_env:
`docker build -t ubuntu_env .`

Run docker container named `ubuntu_env` and mount the current directory as /src within the container and then enter the container using bash:
`docker run -v $PWD:/src -t -i ubuntu_env:latest /bin/bash`

