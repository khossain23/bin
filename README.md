# bin
Utility functions for the Windows subsystem for linux, __WSL__.

## WSL Installation
For instructions, see [here](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

## Configuration
After Installing WSL, follow the prompts to set up a Unix username and password.
Then pull `bin` from GitHub and call `config-home` to configure the home directory.
```
git clone https://github.com/twesleyb/bin.git
~/bin/config-home
```
This will:
* Pull my `dotfiles` from GitHub.
* Set-up Vim.

## Note
These functions are often specific for my OS and file architecture.
Therefore, most functions use paths that are specific for my computer.

