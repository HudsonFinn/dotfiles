# My personal dotfiles setup

# Overview

General overview for my dev setup

## Terminal: Alacritty (https://github.com/alacritty/alacritty)

- It's cross platform, even though I only develop on Mac, I like the idea that I could switch to other platforms and still have it working pretty quickly.
- It's rendering is exceptionally fast.
- It's configured in TOML which I really like the syntax for.

## Multiplexer: TMUX (https://github.com/tmux/tmux/wiki)

I was previously using WezTerm (https://wezterm.org) as it seemed to combine the idea of tmux with a terminal. However I've now switched to Tmux x Alacritty. This is for two main reasons. First, Wezterm has a few rough edges and has a fair amount of setup to get it working correctly with VIM ect. Second, the principle of having one program do each thing well seems to have made more and more sense as I've gone on. Third, tmux is installed or is one download away from being installed and works on virtually every platform and version, learning it is probably worth it in the long term.

## Editor: NEOVIM (https://neovim.io)

I used vscode for a long time and then watched a video lecture (will find it again one day) of a guy using vim like a god. I had no idea what he was using at the time but his ability to move around and code at such speed was insane. I learnt to touch type in my second year of Uni and then found out about VIM and started learning the bindings. It never really went anywhere. 

Then at work I decided I would use VSCode with the VIM bindings, it was probably the worst of both worlds. Trying to using vim motions while also never really being invested in the VSCode bindings was a fine experience but not great.

Finally I saw a friend with a cool VIM setup and decided to just bite the bullet. Setup my dotfiles and started to use VIM exclusively for personal work. I installed the hardtime plugin and forced myself to properly learn it. I only occasionally use VSCode for much larger projects where I'm still not comfortable navigating in VIM.

I will add some explanations of my plugin setup at some point soon. TODO: Update

## Clipboard/Window management: Raycast (https://www.raycast.com/)

You might have heard of alfred or others, general managers for mac. They can do all sorts of stuff from application launching, file search and more. I generally just use it for managing window tiling and accessing the clipboard history on Mac.


## Shell: ZSH

It's the default for Mac and I develop on mac, no other reason for it.

All of my ZSH stuff lives in the ZSH directory of this repo. It has `zshrc_conf.sh` file that you source from your default `.zshrc`. The base file sources everything else. I use Zinit for faster startup times as I got tired of the multiple second long startup times caused by NPM. I will probably switch this out at some point as it's syntax is not to my liking but I don't know when I'll get around to that.

The main thing is add this to your `.zshrc`
```bash
source '~/.config/ZSH/zshrc_conf.sh`
```

Keep all of the secrets and anything else you don't want tracked by git in the main `.zshrc` file.
