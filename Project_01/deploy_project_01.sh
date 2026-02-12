#!/bin/bash

cd /home/$USER/Projects
source cloudinit.conf
cd /home/$USER/Projects/Project_01/terraform
terraform init
terraform apply -auto-approve

sleep 60
echo "done"