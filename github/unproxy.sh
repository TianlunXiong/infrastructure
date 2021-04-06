if [ git ]
then
    git config --global --unset url."https://ghproxy.com/https://github.com".insteadOf "https://github.com" 
else
    echo '请安装 git'
fi