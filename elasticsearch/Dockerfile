ARG IMAGE_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:$IMAGE_VERSION

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/

# RUN apt-get update \
# 	&& apt-get install -y --no-install-recommends openssh-server \
# 	&& echo "root:Docker!" | chpasswd

# COPY sshd_config /etc/ssh/

# EXPOSE 2222 80

# COPY init_container.sh /opt/startup
# RUN chmod 755 /opt/startup/init_container.sh
# ENTRYPOINT ["/opt/startup/init_container.sh"]