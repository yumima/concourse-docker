# dci.sh
# Goal: setup concourse service with docker image concourse/concourse
# setup:
#1. Add fw rule 8080 to the GCE VM
#2. Install and start docker following: https://docs.docker.com/engine/installation/
#3. Install and configure docker compose following: https://docs.docker.com/compose/install/
#4. Setup and concourse/concourse docker image following: https://concourse.ci/docker-repository.html
#	* sudo  curl -L https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > docker-compose
#	* sudo cp docker-compose /usr/local/bin
#	* sudo chmod +x /usr/local/bin/docker-compose
#	* docker-compose --version
#	    docker-compose version 1.8.1, build 878cff1
#5. Follwing dci.sh to start concourse in docker
#6. Check things are running:

mkdir dci
cd dci
mkdir -p keys/web keys/worker

ssh-keygen -t rsa -f ./keys/web/tsa_host_key -N ''
ssh-keygen -t rsa -f ./keys/web/session_signing_key -N ''

ssh-keygen -t rsa -f ./keys/worker/worker_key -N ''

cp ./keys/worker/worker_key.pub ./keys/web/authorized_worker_keys
cp ./keys/web/tsa_host_key.pub ./keys/worker

export CONCOURSE_EXTERNAL_URL=http://104.198.235.44
