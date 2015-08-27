# BUILD WITH

```
docker build -t sphinx .
```


# RUN WITH

```
docker run -d -v $HOME/sphinx:$HOME/sphinx -e CONF_FILE=$HOME/sphinx/conf/sphinx.conf --name=sphinx sphinx:2.0.8
```
