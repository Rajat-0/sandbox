# SSH into the Kubernetes master and run the following command
yum install  nfs-utils rpcbind -y
mkdir -p /ckan/pgdata
chmod -R 777 /ckan/pgdata
mkdir -p /ckan/ckanconfig
chmod -R 777 /ckan/ckanconfig
mkdir -p /ckan/db
chmod -R /ckan/db
echo "/ckan *(rw,sync,no_root_squash,no_all_squash)"  >> /etc/exports
systemctl enable --now rpcbind
systemctl enable --now nfs-server
systemctl restart rpcbind
systemctl restart nfs-server
