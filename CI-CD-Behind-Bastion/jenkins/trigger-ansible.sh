#!/bin/bash

/usr/bin/docker exec ansible-container ansible-playbook /ansible/playbooks/playbook.yml -i /ansible/hosts -f 5 #ansible running inside container

#or

docker exec ansible-container ansible-playbook \  #from host
  /ansible/playbook.yml \
  -i /ansible/hosts

