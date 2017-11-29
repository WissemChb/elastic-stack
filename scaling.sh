#! /bin/bash

#ansible-galaxy install -r requirements.txt -p $(pwd)
#vagrant up 
ansible-playbook stack.yml -i inventories/hosts