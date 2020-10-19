#!/bin/bash

/usr/bin/inotifywait -m -e close_write /var/github-release |
  while read dir action file; do
    if [[ "$file" == "springboot-registration-security-thymeleaf-0.0.1.jar" ]]; then
      echo "springboot-registration-security-thymeleaf-0.0.1.jar received"
      systemctl stop cwt.service
      mv -v "/var/github-release/${file}" /var/cwt/cwt.jar
      systemctl daemon-reload
      systemctl start cwt.service
    fi
  done
