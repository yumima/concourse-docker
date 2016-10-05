# Setup concourse server on GCE
## Steps:
1. down load env.sh, create-cci.yaml and config-cci.yaml
2. edit env.sh to with the correct email/project/cred json 
3. source env.sh (all the information should be extrated from the json file)
4. ansible-playbook -s create-cci.yaml, will create a server cci on GCE
5  add group cci and IP to /etc/ansible/hosts
6. ansible-playbook -s config-cci.yaml, will configure concourse
7. TODO: 1) parse json file, 2) add host key to instance at creation; 3) add roles to install concourse and start it
