FROM ubuntu:10.04
MAINTAINER Justin McNally <justin@kohactive.com>
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install libexpat1 libmysqlclient16 libpq5 wget



ADD ./sphinx_2.0.8.deb /root/sphinx.deb
RUN dpkg -i /root/sphinx.deb

ADD ./search.sh /search.sh
RUN chmod +x /search.sh

EXPOSE 9312

ENTRYPOINT ["/search.sh"]