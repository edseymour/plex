#!/bin/bash

plexhome=/usr/lib/plexmediaserver

export PLEX_MEDIA_SERVER_MAX_STACK_SIZE=3000
export PLEX_MEDIA_SERVER_HOME="/usr/lib/plexmediaserver"
export LD_LIBRARY_PATH="${PLEX_MEDIA_SERVER_HOME}"
export PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="/config/Library/Application Support"
export PLEX_MEDIA_SERVER_TMPDIR=/config/Library/Temp
export PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS=6
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
ulimit -s 3000

/usr/lib/plexmediaserver/Plex\ Media\ Server

