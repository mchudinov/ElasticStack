ARG IMAGE_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${IMAGE_VERSION}

ARG AWS_ACCESS_KEY
ARG AWS_SECRET_KEY
ARG AZURE_DEFAULT_ACCOUNT   
ARG AZURE_DEFAULT_KEY

EXPOSE 9200 9300
ENV discovery.type="single-node"
ENV network.bind_host="0.0.0.0"
# ENV s3.client.default.endpoint="host.docker.internal:9001"
# ENV s3.client.default.protocol="http"

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/

RUN elasticsearch-plugin install --batch repository-s3
RUN elasticsearch-plugin install --batch repository-azure
RUN elasticsearch-keystore create

RUN echo AZURE_DEFAULT_ACCOUNT= ${AZURE_DEFAULT_ACCOUNT}
RUN echo AZURE_DEFAULT_KEY= ${AZURE_DEFAULT_KEY}
RUN echo AWS_ACCESS_KEY= ${AWS_ACCESS_KEY}
RUN echo AWS_SECRET_KEY= ${AWS_SECRET_KEY}

RUN echo ${AWS_ACCESS_KEY} | elasticsearch-keystore add --stdin s3.client.default.access_key
RUN echo ${AWS_SECRET_KEY} | elasticsearch-keystore add --stdin s3.client.default.secret_key
RUN echo ${AZURE_DEFAULT_ACCOUNT} | elasticsearch-keystore add --stdin azure.client.default.account
RUN echo ${AZURE_DEFAULT_KEY} | elasticsearch-keystore add --stdin azure.client.default.key
