ARG IMAGE_VERSION
ARG AWS_ACCESS_KEY
ARG AWS_SECRET_KEY
FROM docker.elastic.co/elasticsearch/elasticsearch:$IMAGE_VERSION

EXPOSE 9200 9300
ENV discovery.type="single-node"
ENV network.bind_host="0.0.0.0"

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/

RUN elasticsearch-plugin install --batch repository-s3
RUN elasticsearch-plugin install --batch repository-azure
RUN elasticsearch-keystore create
# arn:aws:s3:::tirsdagtest

