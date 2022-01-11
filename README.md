# Shell-Login-DLUT-LingShui
Shell命令行登陆大连理工大学校园网
# 使用方法
修改字段
```bash
userId="123123123"
password="456456456"
```
然后
```bash
bash login.sh
```
# About
解决无头设备的登陆问题。虽然已经有人写了Python实现的登陆，但是有的设备没有Python，又或者是懒得装requests库。总之，用Unix自带的一些工具实现更简洁和方便一点。  

实现的思路就是浏览器抓包，然后右键发送登陆信息的那条记录，复制为curl命令，然后分析。  