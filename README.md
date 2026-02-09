# Minimal Neovim Configuration

A super lightweight Neovim setup with modern LSP, Treesitter, and a clean Catppuccin Mocha theme.

## Features

- **Colorscheme**: Catppuccin Mocha
- **LSP**: Language Server Protocol with Mason
- **Completion**: nvim-cmp with LSP integration
- **Syntax**: Treesitter for advanced highlighting
- **Navigation**: Telescope (fuzzy finder) + Oil (file explorer)
- **UI**: Mini.statusline + Gitsigns
- **Performance**: <50ms startup time

## Installation

1. Backup your existing config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. Clone or copy this config to `~/.config/nvim`

3. Launch Neovim:
   ```bash
   nvim
   ```
   Lazy.nvim will automatically install on first launch.

4. Install plugins:
   ```
   :Lazy sync
   ```

5. Install LSP servers:
   ```
   :Mason
   ```
   Press `i` to install servers (lua_ls is pre-configured)

## Key Bindings

### Leader Key
`Space` - Leader key

### Navigation
- `<C-h/j/k/l>` - Navigate between windows
- `<leader>ff` - Find files (Telescope)
- `<leader>fg` - Live grep (Telescope)
- `<leader>fb` - List buffers (Telescope)
- `<leader>fh` - Help tags (Telescope)
- `<leader>e` - Open file explorer (Oil)

### LSP
- `gd` - Go to definition
- `gr` - Go to references
- `gI` - Go to implementation
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `[d` / `]d` - Navigate diagnostics
- `<leader>d` - Show diagnostic float

### Git
- `]h` / `[h` - Next/previous hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line

### Editing
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>bd` - Delete buffer
- `<Esc>` - Clear search highlight
- `<` / `>` - Indent (visual mode, stays selected)

## Structure

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # Plugin manager bootstrap
│   │   ├── options.lua        # Neovim settings
│   │   ├── keymaps.lua        # Key bindings
│   │   └── autocmds.lua       # Auto commands
│   └── plugins/
│       ├── colorscheme.lua    # Catppuccin theme
│       ├── treesitter.lua     # Syntax highlighting
│       ├── lsp.lua            # LSP configuration
│       ├── completion.lua     # Completion engine
│       ├── telescope.lua      # Fuzzy finder
│       ├── ui.lua             # Statusline + Git signs
│       └── oil.lua            # File explorer
```

## Adding LSP Servers

1. Open Mason: `:Mason`
2. Navigate with `j/k`, press `i` to install
3. Common servers:
   - `lua_ls` - Lua
   - `pyright` - Python
   - `ts_ls` - TypeScript/JavaScript
   - `rust_analyzer` - Rust
   - `gopls` - Go

Servers are automatically configured when installed via Mason.

## Performance

Check startup time:
```
:Lazy profile
```

Expected: <50ms with 2 plugins loaded at startup (colorscheme, treesitter).

## Customization

- **Add keybindings**: Edit `lua/config/keymaps.lua`
- **Change options**: Edit `lua/config/options.lua`
- **Add plugins**: Create new files in `lua/plugins/`
- **Modify theme**: Edit `lua/plugins/colorscheme.lua`

## Philosophy

This config prioritizes:
- **Speed**: Aggressive lazy-loading
- **Minimalism**: No sidebars, command-based navigation
- **Simplicity**: ~10 core plugins, clear structure
- **Maintainability**: Modular Lua files

## Troubleshooting

### Check health
```
:checkhealth
```

### Plugin issues
```
:Lazy
```
Press `U` to update plugins, `X` to clean unused plugins.

### LSP not working
1. Verify server is installed: `:Mason`
2. Check LSP status: `:LspInfo`
3. Check logs: `:lua vim.cmd('e ' .. vim.lsp.get_log_path())`

### Treesitter issues
```
:TSInstall <language>
:TSUpdate
```

## License

MIT
