#!/bin/bash

source /home/$USER/Projects/cloudinit.conf
cd /home/$USER/Projects/Project_02/terraform
terraform destroy -auto-approve
rm -f ~/.ssh/known_hosts