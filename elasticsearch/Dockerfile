#ARG IMAGE_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:6.7.1

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/

# RUN apt-get update \
# 	&& apt-get install -y --no-install-recommends openssh-server \
# 	&& echo "root:Docker!" | chpasswd

# COPY sshd_config /etc/ssh/

EXPOSE 9200
ENV discovery.type="single-node"
#ENV http.port=80

# ENV SSH_PASSWD "root:Docker!"
# ENV SSH_PORT 2222
# COPY init_container.sh /opt/startup
# RUN chmod 755 /opt/startup/init_container.sh
# ENTRYPOINT ["/opt/startup/init_container.sh"]