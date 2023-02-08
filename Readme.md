# 基于Ubuntu 22.04的命令行开发环境

<aside>
💡 本文配置基于josean-dev/dev-environment-files仓库修改而来，如果你觉得有帮助，请给他点赞

</aside>

> josean的仓库：https://github.com/josean-dev/dev-environment-files
> 

> josean的YouTube频道：[https://www.youtube.com/@joseanmartinez](https://www.youtube.com/@joseanmartinez)
> 

![Untitled](%E5%9F%BA%E4%BA%8EUbuntu%2022%2004%E7%9A%84%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83%206ad7a651248b4c3eafc405a663133ba1/Untitled.png)

本仓库中为本人命令行开发环境搭建的配置文件，主要在josean仓库的基础上增加了对Python，C，Cpp，Verilog和SystemVerilog的支持。

# 1. 安装

## 1.1准备工作

请确保安装了以下内容：

- **支持TrueColor的终端：**可以使用以下代码检查中断是否为TureColorhttps://github.com/termstandard/colors，如果支持颜色条应该是连续的。
    
    ```bash
    awk 'BEGIN{
        s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
        for (colnum = 0; colnum<77; colnum++) {
            r = 255-(colnum*255/76);
            g = (colnum*510/76);
            b = (colnum*255/76);
            if (g>255) g = 510-g;
            printf "\033[48;2;%d;%d;%dm", r,g,b;
            printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
            printf "%s\033[0m", substr(s,colnum+1,1);
        }
        printf "\n";
    }'
    ```
    
- **Nerdfont:** [Nerd Fonts - Iconic font aggregator, glyphs/icons collection, & fonts patcher](https://www.nerdfonts.com/)
- **Ripgrep:** https://github.com/BurntSushi/ripgrep
    
    ```bash
    sudo apt-get install ripgrep
    ```
    
- **Tree-sitter CLI:** https://github.com/tree-sitter/tree-sitter-cli
    
    ```bash
    npm install -g tree-sitter-cli
    ```
    
- 将本仓库内容克隆到本地

## 1.2 Terminal配置

### 安装zsh

```bash
sudo apt-get install zsh
```

### 安装ohmyzsh

OhMyZsh网站：[https://ohmyz.sh/](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

将本仓库中.zshrc文件放置于~目录下即可

## 1.3 NeoVim配置

### 安装NeoVim

版本：V 0.82

NeoVim网站：[https://neovim.io/](https://neovim.io/)

注：在Ubuntu 22.04上安装NeoVim需要手动在Github上下载包并安装，直接使用sudo命令获取的版本较老

```bash
1. Download nvim-linux64.deb
2. Install the package using sudo apt install ./nvim-linux64.deb
3. Run nvim
```

### 使用配置文件

在~目录下新建.config文件夹，如果有的话则不需要新建，将本仓库中的nvim文件夹放置于~/.config目录下即可。

启动nvim，使用命令:PackerSync更新插件

![Untitled](%E5%9F%BA%E4%BA%8EUbuntu%2022%2004%E7%9A%84%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83%206ad7a651248b4c3eafc405a663133ba1/Untitled%201.png)

使用命令:Mason安装对应语言服务

![Untitled](%E5%9F%BA%E4%BA%8EUbuntu%2022%2004%E7%9A%84%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83%206ad7a651248b4c3eafc405a663133ba1/Untitled%202.png)

## 1.4 tmux配置

### 安装tmux

网站：[Home · tmux/tmux Wiki (github.com)](https://github.com/tmux/tmux/wiki)

```bash
sudo apt-get install tmux
```

### 使用配置文件

将仓库中提供的.tmux.config文件放置于~目录下即可，进入tmux后使用快捷键Ctrl + a + I (Shift i)安装需要的插件和主题即可

# 2. 具体插件与常用键位

所用插件基本与josean相同，Mason中多安装了SVLangserver/clangd/Pyright等服务，具体请见思维导图

## Neovim编辑器

![Neovim编辑器 配置.png](%E5%9F%BA%E4%BA%8EUbuntu%2022%2004%E7%9A%84%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83%206ad7a651248b4c3eafc405a663133ba1/Neovim%25E7%25BC%2596%25E8%25BE%2591%25E5%2599%25A8_%25E9%2585%258D%25E7%25BD%25AE.png)

## tmux设置

![tmux设置.png](%E5%9F%BA%E4%BA%8EUbuntu%2022%2004%E7%9A%84%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83%206ad7a651248b4c3eafc405a663133ba1/tmux%25E8%25AE%25BE%25E7%25BD%25AE.png)

# 3. 下一步工作

- [ ]  缩短Nvim启动时间至100ms以内（目前为250ms左右）
- [ ]  选定一个DashBoard图案
- [ ]  将命令行以及部分语言的调试器集成进来