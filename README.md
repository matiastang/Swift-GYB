# Swift GYB

[Swift GYB](https://nshipster.cn/swift-gyb/)

## 安装问题

* brew install nshipster/formulae/gyb

```
Updating Homebrew...
==> Installing gyb from nshipster/formulae
==> Downloading https://raw.githubusercontent.com/apple/swift/dab60f04ca98c573378a5e78ed85d5a27a7ca2e0/utils

curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused
Error: Failed to download resource "gyb--gyb.py"
Download failed: https://raw.githubusercontent.com/apple/swift/dab60f04ca98c573378a5e78ed85d5a27a7ca2e0/utils/gyb.py
```
访问地址`https://raw.githubusercontent.com/`不能成功

通过 [IPAddress.com](https://www.ipaddress.com) 首页，输入`raw.githubusercontent.com` 查询到真实IP地址。
修改 /etc/hosts，Ubuntu，CentOS 及 macOS 直接在终端输入
```
$ sudo vi /etc/hosts
```
如果是第一次需要输入开机密码
添加以下内容保存即可
```
199.232.68.133  raw.githubusercontent.com
```
重新访问 `https://raw.githubusercontent.com/`，发现可以访问了。
再`brew install nshipster/formulae/gyb`就可以成功了。
```
brew install nshipster/formulae/gyb
==> Installing gyb from nshipster/formulae
==> Downloading https://raw.githubusercontent.com/apple/swift/dab60f04ca98c573378a5e78ed85d5a27a7ca2e0/utils
######################################################################## 100.0%
==> Downloading https://raw.githubusercontent.com/apple/swift/17e5594bec7cebe980857e4fe3e05837708f9f62/utils
######################################################################## 100.0%
==> chmod +x /usr/local/Cellar/gyb/2019-01-18/bin/gyb
🍺  /usr/local/Cellar/gyb/2019-01-18: 4 files, 39.1KB, built in 5 seconds
```