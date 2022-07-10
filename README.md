<br>

<div align="center">
<img width="456" src="https://raw.githubusercontent.com/wayofdev/ansible-role-tpl/master/assets/logo.gh-light-mode-only.png#gh-light-mode-only">
<img width="456" src="https://raw.githubusercontent.com/wayofdev/ansible-role-tpl/master/assets/logo.gh-dark-mode-only.png#gh-dark-mode-only">
</div>


<br>

<br>

<div align="center">
<a href="https://actions-badge.atrox.dev/lotyp/dotfiles/goto"><img alt="Build Status" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Flotyp%2Fdotfiles%2Fbadge&style=flat-square"/></a>
<a href="#"><img src="https://img.shields.io/github/downloads/lotyp/dotfiles/total.svg?style=flat-square" alt="Downloads"/></a>
<a href="LICENSE"><img src="https://img.shields.io/github/license/lotyp/dotfiles.svg?style=flat-square&color=blue" alt="Software License"/></a>
<a href="#"><img alt="Commits since latest release" src="https://img.shields.io/github/commits-since/lotyp/dotfiles/latest?style=flat-square"></a>
</div>


<br>

# Dotfiles

This repository is a part of [ansible-role-dotfiles](https://github.com/wayofdev/ansible-role-dotfiles) and other [wayofdev](https://github.com/wayofdev) ansible project dependency, but it can also be installed as a stand-alone project using `Makefile` and `make` command.

If you **like/use** this role, please consider **starring** it. Thanks!

<br>

## 🗂 Table of Contents

* [Supported Toolset](#️-supported-toolset)
  * [Shell](#-shell)
  * [Terminal Theme](#-terminal-theme)
  * [System Configs](#-system-configs)
* [Included Aliases and Commands](#-included-aliases-and-commands)
  * [Easier Navigation](#-easier-navigation)
  * [Directory Browsing](#-directory-browsing)
  * [File Management](#-file-management)
  * [General Aliases](#-general-aliases)
  * [Networking](#-networking)
  * [System Administration](#-system-administration)
  * [Paths](#-paths)
  * [Configuration Paths](#-configuration-paths)
  * [IDE's and Editors](#-ides-and-editors)
* [License](#-license)
* [Author Information](#️-author-information)
* [Credits and Resources](#-credits-and-resources)
* [Contributors](#-contributors)

<br>

## 🛠️ Supported Toolset

Use either one or many of these, the config files will be in place and ready to provide a familiar interface.

### → Shell

| Name                              | Description                              | Config                |
| --------------------------------- | ---------------------------------------- | --------------------- |
| [zsh](https://zsh.sourceforge.io) | interactive shell                        | `~/.zshrc` and others |
| [ohmyzsh](https://ohmyz.sh)       | framework for managing zsh configuration | `~/.oh-my-zsh/`       |

### → Shell Theme

| Name                                                         | Description      | Config             |
| ------------------------------------------------------------ | ---------------- | ------------------ |
| [spaceship](https://github.com/spaceship-prompt/spaceship-prompt) | zsh prompt theme | `~/.zsh_spaceship` |

### → System Configs

| Name                                           | Description                           | Config                            |
| ---------------------------------------------- | ------------------------------------- | --------------------------------- |
| [chezmoi](https://www.chezmoi.io/)             | dotfiles manager                      | `~/.chezmoi.toml`                 |
| [curl](https://curl.se)                        | data transfer tool                    | `~/.curlrc`                       |
| [git](https://git-scm.com)                     | version control system                | `~/.gitconfig`                    |
| [nano](https://www.nano-editor.org)            | small terminal text editor            | `~/.nanorc`                       |
| [sqlite3](https://www.sqlite.org/cli.html)     | sql database engine (client settings) | `~/.sqliterc`                     |
| [wget](https://www.gnu.org/software/wget/)     | data transfer tool                    | `~/.wgetrc`                       |
| [screen](https://www.gnu.org/software/screen/) | full-screen window manager            | `~/.screenrc`                     |
| [editorconfig](https://editorconfig.org)       | coding styles for IDE's and editors   | `~/.editorconfig`                 |
| [iterm2](https://iterm2.com)                   | iterm2 shell integration script       | `~/.iterm2_shell_integration.zsh` |

<br>

## 💻 Included Aliases and Commands

These are unified CLI commands available amongst different shells on all platforms. While some of their outputs may differ in style between different environments, their usage and behaviours remain universal.

Additional aliases are provided by [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet) and are listed by using the command `alias`.

### → Easier Navigation

| Command | Description                      |
| ------- | -------------------------------- |
| `~`     | Navigates to user home directory |
| `..`    | Navigates up a directory         |
| `...`   | Navigates up three directories   |
| `....`  | Navigates up four directories    |

### → Directory Browsing

| Command | Description                                                  |
| ------- | ------------------------------------------------------------ |
| `l`     | Show long list with hidden files with human readable sizes   |
| `la`    | Show long list with hidden files with human readable sizes. Appends paths |

### → File Management

| Command | Description                                                  |
| ------- | ------------------------------------------------------------ |
| `cpv`   | Copies a file securely using `rsync`                         |
| `fd`    | Finds directories                                            |
| `ff`    | Finds files in current dir, shortcut to `find . -type f -name [expression]` |

### → General Aliases

| Command | Description                                     |
| ------- | ----------------------------------------------- |
| `alias` | Lists registered aliases                        |
| `c`     | Clears the console screen                       |
| `path`  | Pretty prints registered system $PATH variables |
| `cm`    | Short command to chezmoi                        |
| `h`     | Shows or searches in shell history              |

### → Networking

| Command                                                      | Description                                                |
| ------------------------------------------------------------ | ---------------------------------------------------------- |
| `flushdns`                                                   | Flushes the DNS cache                                      |
| `ips`                                                        | Gets all IP addresses                                      |
| `localip`                                                    | Gets local IP address                                      |
| `publicip`                                                   | Gets external IP address                                   |
| `GET`<br/>`HEAD`<br/>`POST`<br/>`PUT`<br/>`DELETE`<br/>`TRACE`<br/>`OPTIONS` | Sends HTTP requests:<br/>_Usage: `GET https://example.com` |

### → System Administration

| Command   | Description                                                  |
| --------- | ------------------------------------------------------------ |
| `mnt`     | Lists drive mounts                                           |
| `sysinfo` | Shows system info using [neofetch](https://github.com/dylanaraps/neofetch) |
| `top`     | Monitors processes and system resources, uses [htop](https://hisham.hm/htop/). |

### → Paths

| Command | Description                                                  |
| ------- | ------------------------------------------------------------ |
| `dls`   | Navigates to `~/Downloads`                                   |
| `docs`  | Navigates to `~/Documents`                                   |
| `dt`    | Navigates to `~/Desktop`                                     |
| `prj`   | Navigates to `~/Projects` – default developer's projects directory. _<sup>[custom path]</sup>_ |

### → Configuration Paths

| Command    | Description                                                  |
| ---------- | ------------------------------------------------------------ |
| `cm cd`    | Navigates to [Chezmoi](https://www.chezmoi.io/) `~/.local/share/chezmoi` dotfiles repository |
| `sublconf` | Navigates to [Sublime Text](https://www.sublimetext.com/)'s local configuration repo. |

### → IDE's and Editors

| Command        | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| `subl`<br/>`s` | Opens in Sublime Text, example `s ./project`                 |
| `p`            | Opens PhpStorm                                               |
| `pc`           | Pycharm<br>_Usage: `pc ~/Projects/wayofdev/py_project`       |
| `gol`          | Goland                                                       |
| `wbs`          | Webstorm                                                     |
| `vim`          | Opens [neovim](https://neovim.io) instead of vim, if exists in system |

### → Development

| Command | Description                                        |
| ------- | -------------------------------------------------- |
| `d`     | Shortcut to `docker`                               |
| `dc`    | Shortcut to `docker-compose`                       |
| `ds`    | Shortcut to `docker-sync`                          |
| `g`     | Shortcut to `git`                                  |
| `gitp`  | Shortcut to `git push --follow-tags origin master` |

For full list of available commands check [aliases](https://github.com/lotyp/dotfiles/blob/master/dot_gitconfig_aliases) and [functions](https://github.com/lotyp/dotfiles/blob/master/dot_zsh_functions) files.

<br>

## 🤝 License

[![Licence](https://img.shields.io/github/license/lotyp/dotfiles?style=for-the-badge&color=blue)](./LICENSE)

<br>

## 🙆🏼‍♂️ Author Information

Created in **2022** by [lotyp / wayofdev](https://github.com/wayofdev)

<br>

## 🧱 Credits and Resources

**Inspired by:**

* [Why use chezmoi?](https://www.chezmoi.io/why-use-chezmoi/)
* great repository, which shows power of chezmoi [renemarc/dotfiles](https://github.com/renemarc/dotfiles)

<br>

## 🫡 Contributors

<img align="left" src="https://img.shields.io/github/contributors-anon/lotyp/dotfiles?style=for-the-badge"/>

<a href="https://github.com/lotyp/dotfiles/graphs/contributors">
  <img src="https://opencollective.com/wod/contributors.svg?width=890&button=false">
</a>

<br>
