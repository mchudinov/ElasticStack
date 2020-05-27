ARG IMAGE_VERSION
FROM docker.elastic.co/beats/heartbeat:$IMAGE_VERSION

COPY heartbeat.yml /usr/share/heartbeat/heartbeat.yml
USER root
RUN chown root:heartbeat /usr/share/heartbeat/heartbeat.yml
USER heartbeat
RUN chmod go-w /usr/share/heartbeat/heartbeat.yml