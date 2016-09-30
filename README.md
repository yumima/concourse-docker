# concourse-docker
## Goal: setup concourse service with docker image concourse/concourse
## Steps:
1. item 1 Add fw rule 8080 to the GCE VM
2. item 2 Install and start docker following: https://docs.docker.com/engine/installation/
3. item 3 Install and configure docker compose following: https://docs.docker.com/compose/install/
4. item 4 Setup and concourse/concourse docker image following: https://concourse.ci/docker-repository.html
	* sudo  curl -L https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > docker-compose
	* sudo cp docker-compose /usr/local/bin
	* sudo chmod +x /usr/local/bin/docker-compose
	* docker-compose --version
	    docker-compose version 1.8.1, build 878cff1
5. item 5 Follwing dci.sh to start concourse in docker
6. item 6 Check things are running:
*$ docker ps
*CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                    NAMES
*894a1124d72e        concourse/concourse   "/usr/local/bin/dumb-"   38 seconds ago      Up 37 seconds                                dci_concourse-worker_1
*fc7642edbbb3        concourse/concourse   "/usr/local/bin/dumb-"   39 seconds ago      Up 38 seconds       0.0.0.0:8080->8080/tcp   dci_concourse-web_1
*f4e45c1ffeea        postgres:9.6          "/docker-entrypoint.s"   40 seconds ago      Up 39 seconds       5432/tcp                 dci_concourse-db_1

