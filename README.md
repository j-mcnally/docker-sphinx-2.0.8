# BUILD WITH

```
docker build -t sphinx .
```

# SETUP

This will setup a local file structure for sphinx so that it can be linked to docker container.
This exisits because thinking sphinx creates the config locally.

```bash

mkdir -p ~/sphinx/conf
mkdir -p ~/sphinx/indicies
mkdir -p ~/sphinx/logs
mkdir -p ~/sphinx/binlogs
mkdir -p ~/sphinx/pids

```


# RUN WITH

```
docker run -d -v $HOME/sphinx:$HOME/sphinx -e CONF_FILE=$HOME/sphinx/conf/sphinx.conf --name=sphinx sphinx:2.0.8
```

