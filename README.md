# cpuminer on docker for BitZeny

## requied
- docker <confirmed version 18.03.1-ce>
- docker-compose <confirmed version 1.21.2>

## Install

- clone this repository.  
  `git clone git@github.com:ishibashi-futos/cpuminer-zny.git`
- change directory.  
  ` cd ./cpuminer-zny/`
- Enter environment variables in the docker-compose.yml
  - POOL_SERVER_ADDRESS
  - POOL_USER_NAME
  - POOL_WORKER_NAME
  - POOL_WORKER_PASSWORD
- build on startup for container.
  `docker-compose up --build -d `
