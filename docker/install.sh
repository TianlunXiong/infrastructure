echo "删除旧docker"
yum remove docker docker-ce

echo "安装yum-config-manager"
yum install -y yum-utils

if [wget]
then
    echo '已安装 wget...ok'
else
    yum install -y wget
fi

# 下载官方源
wget -O /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/centos/docker-ce.repo

# 替换为清华url
sed -i 's+download.docker.com+mirrors.tuna.tsinghua.edu.cn/docker-ce+' /etc/yum.repos.d/docker-ce.repo

echo '开始安装 docker'
yum install -y docker-ce

systemctl enable docker.service
systemctl start docker.service