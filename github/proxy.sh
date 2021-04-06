# 来源 https://www.jianshu.com/p/f5a71d801c2c
if [ git ]
then
    git config --global url."https://ghproxy.com/https://github.com".insteadOf "https://github.com" 
else
    echo '请安装 git'
fi