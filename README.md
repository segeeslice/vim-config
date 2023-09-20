# Segeeslice's NVIM Config

This is my NVIM config! Made primarily for personal use with
[Neovim](https://neovim.io) across all of my devices. Includes various custom
features and functionalities that I've compiled to improve upon my personal
programming experience.

This is the part where I'd list the features if it was worth the effort... :P

In any case, feel free to look through and see what I have! It's commented
enough to understand the intent. Just be sure to have the **pre-requisites** as
listed below. Otherwise, if you're interested in the configuration, you
probably know enough about VIM to get the gist.

Enjoy :)

## Pre-requisites

- [ripgrep](https://github.com/BurntSushi/ripgrep) installed and added to PATH
  - Installation details on the site (no easy way to make a script in this repo)
  - For Windows, is available on `scoop`!
- `Python` is installed on the machine, with the `neovim` module
  - `pip install neovim`

## Install

1. `git clone` this repository into the NVIM config location
    - On Windows: `~/AppData/Local/nvim`
1. Install [VimPlug](https://github.com/junegunn/vim-plug) within the repo
   (nvim config) directory
    - See `install-vim-plug.ps1` or `install-vim-plug.sh` in this repo for easy
      installation
1. Launch `nvim`. *It'll give some warnings at first - that's okay*
1. Within `nvim`, run `:PlugInstall`
1. Close & re-open `nvim`, and you should be good to go!
