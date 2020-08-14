# sscep-docker

Dockerfile to build https://github.com/certnanny/sscep
@author Per Abildgaard Toft <p@t1.dk>
https://github.com/cpertoft/sscep-docker/


Docker build for https://github.com/certnanny/sscep

# Instructions
Run a single command using:
`docker run -it sscep-docker sscep getca -c tmp/cacert -u http://yourhost/scep/scep`

Alternative you can jump into the container and run scep commands
`docker run -it sscep-docker bash`

