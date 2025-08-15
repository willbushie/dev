## Nvim Setup

Simple explination for directories and their purpose for when I forget what is going on here. 

Directory Structure: 

```
~/.config/nvim/
├── init.lua                -- the first file nvim loads
├── lua/
│   └── prime/             
│       ├── install-lsp.sh  -- script to brew install currently used LSPs
│       ├── init.lua        -- this file contains `require('prime.remap)` and `require('prime.set')`
│       ├── lsp.lua         -- lsp config 
│       ├── packer.lua      -- packer config 
│       ├── remap.lua       -- custom remaps
│       └── set.lua         -- usual vim settings/config
├── after/
│   └── plugin/             
│       ├── colors.lua      -- terminal colors and stuff like that  
│       ├── fugitive.lua    -- fugitive config    
│       ├── harpoon.lua     -- harppon config   
│       ├── telescope.lua   -- telescope config     
│       ├── treesitter.lua  -- treesitter config      
│       ├── undotree.lua    -- undotree config    
│       └── whichkey.lua    -- which_key config
└── plugin/
    └── packer_compiled.lua -- auto generated file from packer
```

### init.lua

The first file that nvim will load. Only contains `require('prime')`.

### /lua/prime/

This is the core configuration directory. Nvim setup, not usually for plug specific configurations. 

### /after/plugin/

This directory is for custom plugin setups. No custom load order control.

Use this directory when: 
+ Plugin must be loaded before the configs run.
+ The config is completely standalone.
+ Ordering for the config does not matter. 



## Guides

Guides on how to do typical things. 

### Where Do Config Changes Go?

Ask these questions to determine where configuration changes should be placed. 

_"Does this need to be loaded in a specific order?"_
Yes: `lua/prime/`
Anything that depends on other parts of the config or other plugins. 
No: `after/plugin/`
If the plugin is independent and just needs to be installed, and alphabetical order doesn't matter. 

_"Is this a core part of the editor's setup?"_
Yes: `lua/prime/`
Settings, remaps, editor behavior, LSP, core plugin integrations.
No: `after/plugin/`
Small, optional tweaks, like coloring for a specific plugin or extra keybinds.

_"Will it need to be explicitly required?"_
Yes: `lua/prime/`
If precise control or the config is multi file. 
No: `after/plugin/`
It can just run automatically once the plugin is loaded, without other dependencies. 

_"Does it configure multiple plugins together?"_
Yes: `lua/prime/`
For example, LSP + completion + snippets. 
No: `after/plugin/`
Single-plugin tweaks are fine. 

_"Is predictable debugging/load order necessary?"_
Yes: `lua/prime/`
Can control exactly what runs and in what order using `require()`.
No: `after/plugin/`
Fine for things that are isolated and easy to fix if they break.

### Install A Plugin

How to install and configure a new plugin. 

1. Add plugin to `/lua/prime/packer.lua`
    `use('<plugin URL>)`
2. Write file, shoutout (`:so`), install plugin (`:PackerSync`).
3. Add configuration file to `/after/plugin/`.

### Add New LSP

How add a new LSP.

1. Install LSP on local machine. 
This will vary depending on OS, but using `:help lspconfig-all` to search for LSP servers. 
2. Check nvim can see the LSP. 
Using `:echo executable('pyright')` _(pyright is an example)_, if a 1 is returned, nvim can see the LSP. 
_Note: If the installed LSP is not contained in the $PATH, nvim will likely not be able to see it._
3. Update `lua/prime/lsp.lua` (bare minimum)
```
-- add LSP (pyright as an example) - bare minimum required
require('lspconfig').pyright.setup()

-- if LSP has more custom settings, this can be configured here too
local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup {
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = { command = "clippy" },
    }
  }
}
```
4. Restart nvim
5. Open a file that the new LSP will function with and check `:LspInfo` to ensure it is "active."
