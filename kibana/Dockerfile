ARG IMAGE_VERSION
FROM docker.elastic.co/kibana/kibana:$IMAGE_VERSION

COPY kibana.yml /usr/share/kibana/config/kibana.yml
USER root
RUN chown root:kibana /usr/share/kibana/config/kibana.yml
USER kibana