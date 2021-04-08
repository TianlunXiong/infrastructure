cd /etc/yum.repos.d/
cp ./CentOS-Base.repo ./CentOS-Base-repo.bak

if [ curl ]
then
    curl http://mirrors.163.com/.help/CentOS7-Base-163.repo -o CentOS-Base.repo
else
    echo '请安装curl'
    exit
fi

yum makecache
yum update
