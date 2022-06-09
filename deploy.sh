#!/bin/bash
#Alpha
ansible-playbook -i hosts k-alpha.yml -e 'ansible_user=root ansible_password=root_password'

#Masters
ansible-playbook -i '192.168.29.32', -e 'host_name=k8s-master-2 p_value=254 ansible_user=root ansible_password=root_password' k-master.yml
ansible-playbook -i '192.168.29.33', -e 'host_name=k8s-master-3 p_value=253 ansible_user=root ansible_password=root_password' k-master.yml

#Slave
ansible-playbook -i '192.168.29.34', -e 'host_name=k8s-node-1 ansible_user=root ansible_password=root_password' k-slave.yml
ansible-playbook -i '192.168.29.35', -e 'host_name=k8s-node-2 ansible_user=root ansible_password=root_password' k-slave.yml
ansible-playbook -i '192.168.29.36', -e 'host_name=k8s-node-3 ansible_user=root ansible_password=root_password' k-slave.yml
ansible-playbook -i '192.168.29.37', -e 'host_name=k8s-node-4 ansible_user=root ansible_password=root_password' k-slave.yml
ansible-playbook -i '192.168.29.38', -e 'host_name=k8s-node-5 ansible_user=root ansible_password=root_password' k-slave.yml
ansible-playbook -i '192.168.29.39', -e 'host_name=k8s-node-5 ansible_user=root ansible_password=root_password' k-slave.yml
