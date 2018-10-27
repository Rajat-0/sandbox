# SSH into the Kubernetes master and run the following command
yum install  nfs-utils rpcbind -y
mkdir -p /opt/data
chmod 777 /opt/data
echo "/opt/data *(rw,sync,no_root_squash,no_all_squash)"  >> /etc/exports
systemctl enable --now rpcbind
systemctl enable --now nfs-server
systemctl restart rpcbind
systemctl restart nfs-server
mkdir -p /opt/data/vol/0
mkdir -p /opt/data/vol/1
mkdir -p /opt/data/vol/2
mkdir -p /opt/data/content
