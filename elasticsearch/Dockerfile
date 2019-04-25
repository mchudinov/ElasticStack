ARG IMAGE_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:$IMAGE_VERSION

EXPOSE 9200 9300
ENV discovery.type="single-node"
ENV network.bind_host="0.0.0.0"

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/
