FROM ubuntu:22.04

ENV DIST ubuntu
ENV REV 22.04
ENV ARCH x86_64

#NOTE: Install required packages
#RUN apt-get update && apt-get install -y --no-install-recommends \

#COPY root/ /
COPY init /
RUN chmod +x /init
ENTRYPOINT ["/init"]
