# SSH into the Kubernetes master and run the following command
mkdir -p /ckan/pgdata
chmod -R 777 /ckan/pgdata
mkdir -p /ckan/ckanconfig
chmod -R 777 /ckan/ckanconfig
mkdir -p /ckan/db
chmod -R /ckan/db
echo "/ckan *(rw,sync,no_root_squash,no_all_squash)"  >> /etc/exports
