#!/bin/bash

export PATH=/home/altlinux/.local/bin:$PATH
cd /home/$USER/Projects/Project_01/ansible
sleep 10
ansible-playbook playbook_docker.yml
sleep 5
ansible-playbook playbook_haproxy.yml