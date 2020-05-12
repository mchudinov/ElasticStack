ARG IMAGE_VERSION
FROM docker.elastic.co/logstash/logstash:$IMAGE_VERSION

RUN bin/logstash-plugin install logstash-output-syslog

EXPOSE 5514/udp 9600 5044

COPY --chown=logstash:logstash logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY --chown=logstash:logstash logstash.yml /usr/share/logstash/config/logstash.yml
# USER root
# RUN chown root:logstash /usr/share/logstash/config/logstash.yml
# USER logstash