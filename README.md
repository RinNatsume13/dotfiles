# My personal configuration files :D

## Neovim

**Packages to install before:**
-	neovim
-	nodejs
-	npm


Every plugin is installed by vim-plug. To install vim-plug, use the command bellow.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Now, copy nvim folder from here to `~/.config/nvim` and type:

```
nvim ~/.config/nvim
```

and in normal mode, type `:PlugInstall`.  

- Note: Probably Coc will give a error message when you open Neovim. If this is the case, you should go to this directory `~/.local/share/nvim/plugged/coc.nvim/` and do a `yarn install`

## Gnome Extention

**Prerequisite**

-	extension-manager 

After this, just install the follow extension:

[Extention](img/gnome-extention.png)
