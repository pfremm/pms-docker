#!/bin/bash

function getVersionInfo {

  remoteVersion=$(curl https://plex.tv/api/downloads/5.json | jq '.computer.Linux.version')
  export BUILD="linux-$ARCH"
  remoteFile=$(curl https://plex.tv/api/downloads/5.json | jq ".computer.Linux.releases[]| select(.build == \"$BUILD\").url" | tr -d \") 
}


function installFromUrl {
  installFromRawUrl ${1}
}

function installFromRawUrl {
  local remoteFile="$1"
  echo $remoteFile
  curl -J -L -o /tmp/plexmediaserver.deb "${remoteFile}"
  local last=$?

  # test if deb file size is ok, or if download failed
  if [[ "$last" -gt "0" ]] || [[ $(stat -c %s /tmp/plexmediaserver.deb) -lt 10000 ]]; thenhttps://vintagerevivals.com/3-frustrating-furniture-painting-problems-solved-with-one-tip/
    echo "Failed to fetch update"
    exit 1
  fi

  dpkg -i --force-confold /tmp/plexmediaserver.deb
  rm -f /tmp/plexmediaserver.deb
}
--arg EMAILID "$EMAILID"--arg EMAILID "$EMAILID"build