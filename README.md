# sandbox

Step 1: Install Git using

yum install git -y


step 2: Set ssh host key checking to "no"

Add the following options to ssh configuration file /etc/ssh/sshd_config :

   StrictHostKeyChecking no

Now reload your ssh service.


Step 3: Git clone the repo using

git clone https://github.com/rhcayadav/sandbox.git



step 4: Run prerequisite.sh for installing prerequisite envirment setup.

cd sandbox
chmod +x prerequisite.sh
./prerequisite.sh
