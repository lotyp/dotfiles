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

* [Supported Toolset](#-supported-toolset)
  * [Terminal](#-terminal)
  * [Shell](#-shell)
  * [Shell Theme](#-shell-theme)
  * [Package Management](#-package-management)
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
  * [Development](#-development)
* [License](#-license)
* [Author Information](#-author-information)
* [Credits and Resources](#-credits-and-resources)
* [Contributors](#-contributors)

<br>

## 🛠️ Supported Toolset

Use either one or many of these, the config files will be in place and ready to provide a familiar interface.

### → Terminal

Currently only supported is [iTerm2](https://iterm2.com/) for macOS, but I plan to add [Hyper](https://hyper.is/) to support Linux nativley and on WSL.

| Name                          | Description                 | Config             |
| ----------------------------- | --------------------------- | ------------------ |
| [iTerm2](https://iterm2.com/) | terminal emulator for macOS | `~/.config/iterm/` |

### → Shell

| Name                              | Description                              | Config                |
| --------------------------------- | ---------------------------------------- | --------------------- |
| [zsh](https://zsh.sourceforge.io) | interactive shell                        | `~/.zshrc` and others |
| [ohmyzsh](https://ohmyz.sh)       | framework for managing zsh configuration | `~/.oh-my-zsh/`       |

### → Shell Plugins

List of enabled built-in and third-party omz plugins by default. Plu

| Plugin                                                       | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) | Provides many [aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases) and a few useful [functions](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#functions) |
| [keychain](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/keychain) | Starts [`keychain`](https://www.funtoo.org/Keychain) to set up and load whichever credentials you want for both gpg and ssh connections |
| [gpg-agent](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/gpg-agent/README.md) | Enables [GPG's gpg-agent](https://www.gnupg.org/documentation/manuals/gnupg/) if it is not running |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) _<sup>[3rd-party]</sup>_ | Suggests commands as you type based on history and completions |
| [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo) | Prefix previous commands with `sudo` by pressing `esc` twice |

### → Shell Theme

| Name                                                         | Description      | Config             |
| ------------------------------------------------------------ | ---------------- | ------------------ |
| [spaceship](https://github.com/spaceship-prompt/spaceship-prompt) | zsh prompt theme | `~/.zsh_spaceship` |

### → Package Management

Only minimal list of apps are defined in `~/.Brewfile`.

For full macOS installation and configuration refer to ansible playbook — [mac provisioner](https://github.com/wayofdev/mac-provisioner)

| Name                        | Description               | Config        |
| --------------------------- | ------------------------- | ------------- |
| [Homebrew](https://brew.sh) | package manager for macOS | `~/.Brewfile` |

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
| `ll`    | Lists log list of files, including hidden, with human-readable sizes. Appends `/` to end of directories. |
| `la`    | Lists log list of files, including hidden, excluding `.` and `..` directories, with human-readable sizes. Appends `/` to end of directories. |
| `lsd`   | Lists directories only, in long format                       |
| `lsh`   | Lists hidden files in long format                            |

### → File Management

| Command | Description                                                  |
| ------- | ------------------------------------------------------------ |
| `cpv`   | Copies a file securely using `rsync`                         |
| `fd`    | Finds directories                                            |
| `ff`    | Finds files in current dir, shortcut to `find . -type f -name [expression]` |

### → General Aliases

| Command   | Description                                                  |
| --------- | ------------------------------------------------------------ |
| `alias`   | Lists registered aliases                                     |
| `c`       | Clears the console screen                                    |
| `path`    | Pretty prints registered system $PATH variables              |
| `cm`      | Short command to chezmoi                                     |
| `h`, `hs` | Shows or searches in shell (session) history                 |
| `j`       | Shows list of the jobs that are running in the background and in the foreground |
| `reload`  | Reloads the shell                                            |
| `re.`     | Reloads the shell configuration                              |

### → Networking

| Command                                                      | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `flushdns`                                                   | Flushes the DNS cache                                        |
| `ips`                                                        | Gets all IP addresses                                        |
| `localip`                                                    | Gets local IP address                                        |
| `publicip`                                                   | Gets external IP address                                     |
| `GET`<br/>`HEAD`<br/>`POST`<br/>`PUT`<br/>`DELETE`<br/>`TRACE`<br/>`OPTIONS` | Sends HTTP requests using lwp-request:<br/>_Usage: `GET https://example.com` |
| `fping`                                                      | Pings hostname(s) 30 times in quick succession               |

### → System Administration

| Command   | Description                                                  |
| --------- | ------------------------------------------------------------ |
| `mnt`     | Lists drive mounts                                           |
| `sysinfo` | Shows system info using [neofetch](https://github.com/dylanaraps/neofetch) |
| `top`     | Monitors processes and system resources, uses [htop](https://hisham.hm/htop/). |

### → Power Management

| Command     | Description           |
| ----------- | --------------------- |
| `lock`      | Locks the session     |
| `hibernate` | Hibernates the system |
| `poweroff`  | Shuts down the system |
| `reboot`    | Restarts the system   |

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

| Command | Description                                                |
| ------- | ---------------------------------------------------------- |
| `d`     | Shortcut to `docker`                                       |
| `dc`    | Shortcut to `docker-compose`                               |
| `ds`    | Shortcut to `docker-sync`                                  |
| `g`     | Shortcut to `git`. Full List of git aliases is listed here |
| `gitp`  | Shortcut to `git push --follow-tags origin master`         |

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
