FROM ubuntu:22.04 as rootfs-stage

ENV DIST ubuntu
ENV REV 22.04
ENV ARCH x86_64

#NOTE: Install required packages
#RUN apt-get update && apt-get install -y --no-install-recommends \

COPY root/ /
ENTRYPOINT ["/init"]
