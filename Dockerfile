FROM ubuntu:latest
LABEL maintainer="korben@kirscht.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -yq ansible \
 && useradd -m vagrant



COPY bin/entrypoint.sh /bin/entrypoint.sh
RUN chmod 755 /bin/entrypoint.sh && chown vagrant:vagrant /bin/entrypoint.sh

USER vagrant

ENTRYPOINT ["/bin/entrypoint.sh"]
