yum install epel-release -y
yum install ansible -y
yum install python-pip -y
pip install -U ansible
pip install shade
echo "+++++++++++++++please source your openstack auth/rc file here+++++++++++++"
sed -i '/host_key_checking = False/s/^#//g' /etc/ansible/ansible.cfg
echo "+++++++++++++ we are done with prerequisite ++++++++++++"
echo "++++++++ please edit cloud-config.yaml file for inputs and run this command    'ansible-playbook site.yaml'     ++++++++++ "

