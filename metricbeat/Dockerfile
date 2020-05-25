ARG IMAGE_VERSION
FROM docker.elastic.co/beats/metricbeat:$IMAGE_VERSION

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
USER root
RUN chown root:metricbeat /usr/share/metricbeat/metricbeat.yml
RUN chmod 644 /usr/share/metricbeat/metricbeat.yml
USER metricbeat