# 重定向到登陆页面
redirect_url="http://123.123.123.123/"
# 获得登陆页面地址
auth_url=`curl -s $redirect_url`
# 发送POST包的地址
login_url="http://auth.dlut.edu.cn/eportal/InterFace.do?method=login"
userId="123123123"
password="456456456"
# 从登陆页面的网址中获得queryString
# 删掉左侧字符
queryString=${auth_url#*index.jsp?}
# 删掉右侧字符
queryString=${queryString%\'*}
# 替换=
queryString=${queryString//=/\%253D}
# 替换&
queryString=${queryString//&/\%2526}
# 发送登陆POST包
login_res=`curl -s "$login_url" -X 'POST' --data "userId=$userId&password=$password&service=&queryString=$queryString&operatorPwd=&operatorUserId=&validcode="`
# 打印登陆结果
echo $login_res
