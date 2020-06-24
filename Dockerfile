FROM ubuntu:latest
LABEL maintainer="korben@kirscht.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -yq ansible

COPY bin/entrypoint.sh /bin/entrypoint.sh
RUN chmod 755 /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
