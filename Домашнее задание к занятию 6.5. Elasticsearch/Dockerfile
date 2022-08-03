FROM centos:centos7

RUN yum -y install wget; yum clean all && \
        groupadd --gid 1000 elasticsearch && \
        adduser --uid 1000 --gid 1000 --home /usr/share/elasticsearch elasticsearch && \
        mkdir /var/lib/elasticsearch/ && \
        mkdir /var/lib/elasticsearch/snapshots && \
        mkdir /var/lib/logs/ && \
        mkdir /var/lib/data && \
        chown -R 1000:1000 /var/lib/elasticsearch/ && \
        chown -R 1000:1000 /var/lib/elasticsearch/snapshots && \
        chown -R 1000:1000 /var/lib/data && \
        chown -R 1000:1000 /var/lib/logs

USER 1000:1000

WORKDIR /usr/share/elasticsearch

COPY ./config/elasticsearch-7.0.0.tar.gz /usr/share/elasticsearch

RUN tar -xzf elasticsearch-7.0.0.tar.gz && \
        cp -rp elasticsearch-7.0.0/* ./ && \
        rm -rf elasticsearch-7.0.0*


COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/

EXPOSE 9200

CMD ["bin/elasticsearch"]
