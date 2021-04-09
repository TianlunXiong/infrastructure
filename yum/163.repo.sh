#!/usr/bin/env bash

yum install -y epel-release

cd /etc/yum.repos.d/
mv ./CentOS-Base.repo ./CentOS-Base-repo.bak

if [ !wget ]
then
   yum install -y wget
fi

wget http://mirrors.163.com/.help/CentOS7-Base-163.repo -o CentOS-Base.repo

yum makecache
yum update
