yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

dnf install -y \
yum-utils device-mapper-persistent-data lvm2
https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.4.4-3.1.el7.x86_64.rpm
docker-ce docker-ce-cli

systemctl enable docker.service
systemctl start docker.service