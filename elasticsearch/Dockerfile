ARG IMAGE_VERSION
ARG AWS_ACCESS_KEY
ARG AWS_SECRET_KEY
FROM docker.elastic.co/elasticsearch/elasticsearch:$IMAGE_VERSION

EXPOSE 9200 9300
ENV discovery.type="single-node"
ENV network.bind_host="0.0.0.0"
ENV xpack.security.enabled 'true'

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/

RUN elasticsearch-plugin install --batch repository-s3
RUN elasticsearch-plugin install --batch repository-azure
RUN elasticsearch-keystore create

RUN echo $AWS_ACCESS_KEY | elasticsearch-keystore add --stdin s3.client.default.access_key
RUN echo $AWS_SECRET_KEY | elasticsearch-keystore add --stdin s3.client.default.secret_key

