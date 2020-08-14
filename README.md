# sscep-docker

Docker version of sscep from https://github.com/certnanny/sscep

Docker hub: https://hub.docker.com/repository/docker/pertoft/sscep-docker


# Instructions
Run a single command using:

`docker run -it pertoft/sscep-docker:latest bash sscep getca -c tmp/cacert -u http://yourhost/scep/scep`

Alternative you can jump into the container and run scep commands
`docker run -it pertoft/sscep-docker:latest bash`


