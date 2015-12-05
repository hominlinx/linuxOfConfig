linuxOfConfig
=============

####my config on linux(such as vim /tmux etc)

####由于使用多个unbuntu系统（公司虚拟机/自己本子/落云），所以建立了这个仓库。
####该仓库包含了各种配置文件，并且继续加入

######首先配置github

*安装git:*

> sudo apt-get install git

*生成ssh rsa 密码对*

```
cd ~/.ssh
ssh-keygen -t rsa -C "monkeyyuan635@gmail.com" -f ~/.ssh/github.com_rsa
```

生成密钥对的时候其他使用回车默认，生成的公钥在`~/.ssh`下面

*在github里面添加生成的ssh密钥*

生成的pub密钥添加到github中。 密钥的权限是0600

*测试密钥文件*

`ssh -T git@github.com`
或者：`ssh -vT git@github.com` 这个可以看到更详细的信息

注意： 有时候`github.com_rsa` 可能不行，需要在`~/.ssh/config`文件里加入：

```
host github
user hoominlinx
hostname github.com
port 22
identityfile ~/.ssh/github.com_rsa

```
这样就可以了

--------------

######配置文件可以一键部署，现在包含一下几个子模块

> 1. [vim](https://github.com/hominlinx/vim)
> 2.  tmux
> 3. shadowsocks
> 4. vimperator
> 5. firefox

####QA

1. tmux中vim的colorscheme显示不对。解决方法：
	> 执行tmux时键入-2.可以在ubuntu的~/.bashrc中添加：
	```
		alias tmux='tmux -2'
	```


