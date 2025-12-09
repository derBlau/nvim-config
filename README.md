# About this config

The current config aims at serving as a simple, but effective environment
to write simple projects in rust, c, c++, python and javascript.

# Current state

The configuration is currently largely incomplete and a lot of the most basic functionality
provided by most, if not all, IDEs is missing. 

Please do not use.

## To integrate functionality

The items below are to be included in the config. The order in which they are
listed does not represent their priority.

- [] autopairs (), {}, [], "", and so on.
- [] LSP integration
- [] Autocompletion
- [] Rust support
- [] Javascript support
- [] Typescript support
- [] C support
- [] C++ support
- [] Python support
- [] LUA support
- [] Neotree
- [] Treesitter

## Config

The config folder contains basic configuration files that set basic functionality and support all plugins
used in this config.

- Lazy manages all plugins and its UI can be called via `:Lazy` 
- Keymaps contains all the shorcuts used in the config that do not depend on plugins, for instance:
  CTRL + S whilst in normal or insert mode to save the current buffer
- Opts exposes the vim api and sets the values used in this config, for instance:
  sets leader, having [relative] number lines, search behaviour, UI, and so on

## Plugins

The plugins folder contains all plugins that are used in the config. The plugins are called by lazy and loaded
automatically upon initialising NeoVim.

- Lualine is a simple statusbar
