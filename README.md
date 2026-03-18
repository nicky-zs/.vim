# 我的VIM配置

## 使用方法

1. 拉取 .vim 配置目录
```bash
git clone https://github.com/nicky-zs/.vim.git ~/.vim
```

2. 安装 Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. 运行 `vim` 并执行 `:PluginInstall`。也可以通过命令行安装：`vim +PluginInstall +qall`。

4. 安装 YCM
```bash
cd ~/.vim/bundle/YouCompleteMe
python install.py -h   # 视需要安装
```
