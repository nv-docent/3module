#!/bin/bash

export PATH=/home/altlinux/.local/bin:$PATH
cd /home/$USER/Projects/Project_02/ansible
sleep 10
ansible-playbook playbook_hosts.yml
sleep 5
ansible-playbook playbook_db-server.yml
sleep 5
ansible-playbook playbook_acm-server.yml
sleep 5
ansible-playbook playbook_bar-agent.yml
sleep 5
ansible-playbook playbook_postgres-agent.yml