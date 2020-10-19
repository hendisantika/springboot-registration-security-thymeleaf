#!/bin/bash

/usr/bin/inotifywait -m -e close_write /var/github-release |
  while read dir action file; do
    if [[ "$file" == "cwt-spring-SNAPSHOT.jar" ]]; then
      echo "cwt-spring-SNAPSHOT.jar received"
      systemctl stop cwt.service
      mv -v "/var/github-release/${file}" /var/cwt/cwt.jar
      systemctl daemon-reload
      systemctl start cwt.service
    fi
  done