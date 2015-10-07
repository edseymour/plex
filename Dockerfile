FROM fedora:22
MAINTAINER "Ed Seymour" <edwaado@gmail.com>

ADD https://downloads.plex.tv/plex-media-server/0.9.12.13.1464-4ccd2ca/plexmediaserver-0.9.12.13.1464-4ccd2ca.x86_64.rpm /root/Downloads/plex.rpm
RUN rpm -ivh /root/Downloads/plex.rpm && rm -rf /root/Downloads
ADD start.sh /start.sh
RUN chmod u+x /start.sh

VOLUME ["/config","/data"]
EXPOSE 32400

CMD ["/start.sh"]
