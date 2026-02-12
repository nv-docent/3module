#!/bin/bash

source /home/$USER/Projects/cloudinit.conf
cd /home/$USER/Projects/Project_01/terraform
terraform destroy -auto-approve
rm -f ~/.ssh/known_hosts