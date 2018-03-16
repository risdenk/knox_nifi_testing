FROM apache/nifi

COPY flow.xml.gz ${NIFI_HOME}/conf/flow.xml.gz

COPY authorizations.xml ${NIFI_HOME}/conf/authorizations.xml
COPY users.xml ${NIFI_HOME}/conf/users.xml

USER root
RUN chown -R nifi:nifi ${NIFI_HOME}/conf
USER nifi

COPY start.sh /start.sh

CMD /start.sh

