# orng.nvim

A warm orange-based color scheme for Neovim, inspired by warm autumn colors and designed for comfortable long coding sessions.

## Features

- **Warm orange palette** with carefully chosen contrast ratios
- **Dark and light theme support** with automatic background detection
- **Treesitter support** for enhanced syntax highlighting
- **LSP and diagnostic highlighting**
- **Git integration** with Git Signs support
- **Terminal colors** included

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/orng.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins
  config = function()
    require("orng").setup({
      -- Optional configuration
      transparent_background = false,
      italic_comments = true,
    })
    vim.cmd.colorscheme("orng")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'your-username/orng.nvim',
  config = function()
    require('orng').setup()
    vim.cmd('colorscheme orng')
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'your-username/orng.nvim'

" In your init.vim or init.lua:
lua << EOF
  require('orng').setup()
  vim.cmd('colorscheme orng')
EOF
```

## Configuration

You can configure orng.nvim by passing options to the setup function:

```lua
require("orng").setup({
  -- Enable transparent background
  transparent_background = false,
  
  -- Enable italic text
  italic_comments = true,
  italic_keywords = false,
  italic_functions = false,
  italic_variables = false,
  
  -- Enable bold text
  bold_functions = false,
  bold_keywords = false,
  bold_variables = false,
  
  -- Override colors
  color_overrides = {
    darkStep9 = "#ff6b35", -- Custom orange
  },
  
  -- Override highlight groups
  highlights_overrides = {
    Comment = { fg = "#808080", italic = true },
  }
})
```

## Switching Between Dark and Light Themes

orng.nvim automatically detects your Neovim background setting:

```vim
" For dark theme
:set background=dark

" For light theme
:set background=light
```

## Color Palette

### Dark Theme
- **Primary**: `#EC5B2B` - Warm orange
- **Secondary**: `#EE7948` - Lighter orange
- **Accent**: `#FFF7F1` - Very light cream
- **Background**: `#0a0a0a` - Deep black
- **Text**: `#eeeeee` - Light gray

### Light Theme
- **Primary**: `#EC5B2B` - Warm orange
- **Secondary**: `#EE7948` - Lighter orange
- **Accent**: `#c94d24` - Darker orange
- **Background**: `#ffffff` - Pure white
- **Text**: `#1a1a1a` - Dark gray

## Requirements

- Neovim 0.8+
- `termguicolors` enabled (automatically set by the theme)

## Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by warm autumn color palettes
- Built with the Neovim theme development community in mind