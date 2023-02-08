# 基于 Ubuntu 22.04 的命令行开发环境

<aside>
💡 本文配置基于josean-dev/dev-environment-files仓库修改而来，如果你觉得有帮助，请给他点赞

</aside>

> josean 的仓库：https://github.com/josean-dev/dev-environment-files

> josean 的 YouTube 频道：[https://www.youtube.com/@joseanmartinez](https://www.youtube.com/@joseanmartinez)

![Untitled](IMAGE/Untitled.png)

本仓库中为本人命令行开发环境搭建的配置文件，主要在 josean 仓库的基础上增加了对 Python，C，Cpp，Verilog 和 SystemVerilog 的支持。

# 1. 安装

## 1.1 准备工作

请确保安装了以下内容：

- **支持 TrueColor 的终端：**可以使用以下代码检查中断是否为 TureColorhttps://github.com/termstandard/colors，如果支持颜色条应该是连续的。
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

## 1.2 Terminal 配置

### 安装 zsh

```bash
sudo apt-get install zsh
```

### 安装 ohmyzsh

OhMyZsh 网站：[https://ohmyz.sh/](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

将本仓库中.zshrc 文件放置于~目录下即可

## 1.3 NeoVim 配置

### 安装 NeoVim

版本：V 0.82

NeoVim 网站：[https://neovim.io/](https://neovim.io/)

注：在 Ubuntu 22.04 上安装 NeoVim 需要手动在 Github 上下载包并安装，直接使用 sudo 命令获取的版本较老

```bash
1. Download nvim-linux64.deb
2. Install the package using sudo apt install ./nvim-linux64.deb
3. Run nvim
```

### 使用配置文件

在\~目录下新建.config 文件夹，如果有的话则不需要新建，将本仓库中的 nvim 文件夹放置于\~ /.config 目录下即可。

启动 nvim，使用命令:PackerSync 更新插件

![Untitled](IMAGE/Untitled%201.png)

使用命令:Mason 安装对应语言服务

![Untitled](IMAGE/Untitled%202.png)

## 1.4 tmux 配置

### 安装 tmux

网站：[Home · tmux/tmux Wiki (github.com)](https://github.com/tmux/tmux/wiki)

```bash
sudo apt-get install tmux
```

### 使用配置文件

将仓库中提供的.tmux.config 文件放置于~目录下即可，进入 tmux 后使用快捷键 Ctrl + a + I (Shift i)安装需要的插件和主题即可

# 2. 具体插件与常用键位

所用插件基本与 josean 相同，Mason 中多安装了 SVLangserver/clangd/Pyright 等服务，具体请见思维导图

## Neovim 编辑器

![Neovim编辑器 配置.png](IMAGE/Neovim.png)

## tmux 设置

![tmux设置.png](IMAGE/tmux.png)

# 3. 下一步工作

- [ ] 缩短 Nvim 启动时间至 100ms 以内（目前为 250ms 左右）
- [ ] 选定一个 DashBoard 图案
- [ ] 将命令行以及部分语言的调试器集成进来
