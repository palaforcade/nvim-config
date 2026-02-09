# Quick Start Guide

## Installation Complete! ✓

Your minimal Neovim configuration has been set up. Here's how to get started:

## Step 1: Launch Neovim

```bash
nvim
```

On first launch:
- Lazy.nvim will automatically install (plugin manager)
- All plugins will be downloaded and installed
- This may take 30-60 seconds

## Step 2: Install LSP Servers

Once Neovim opens:

1. Type `:Mason` and press Enter
2. Use `j` and `k` to navigate
3. Press `i` on any server to install it

**Recommended servers**:
- `lua_ls` - Lua (already configured)
- `pyright` - Python
- `ts_ls` - TypeScript/JavaScript
- `rust_analyzer` - Rust
- `gopls` - Go

Press `q` to close Mason when done.

## Step 3: Test It Out

Try these commands:

1. **Find a file**:
   - Press `Space` then `f` then `f`
   - Type a filename
   - Press Enter to open

2. **Search in files**:
   - Press `Space` then `f` then `g`
   - Type what you're looking for
   - Press Enter to open result

3. **Browse files**:
   - Press `Space` then `e`
   - Navigate with `j`/`k`
   - Press Enter to open
   - Press `-` to go up a directory

## What You Get

✓ **Beautiful theme** - Catppuccin Mocha
✓ **Code completion** - Auto-complete as you type
✓ **Syntax highlighting** - Treesitter-powered
✓ **Go to definition** - Jump to code with `gd`
✓ **Find anything** - Fuzzy finder with `<Space>ff`
✓ **Git integration** - See changes in sidebar
✓ **Fast startup** - Under 50ms

## Key Bindings to Remember

| Keys | What It Does |
|------|--------------|
| `Space ff` | Find files |
| `Space fg` | Search in files |
| `Space e` | File explorer |
| `gd` | Go to definition (in code) |
| `K` | Show documentation (in code) |
| `Space ca` | Code actions (fix errors) |

## Need Help?

- Full keybindings: See `CHEATSHEET.md`
- Configuration details: See `README.md`
- Check for issues: Run `:checkhealth`

## Customization

All configuration is in Lua files:

- `lua/config/options.lua` - Editor settings
- `lua/config/keymaps.lua` - Key bindings
- `lua/plugins/*.lua` - Plugin configurations

Just edit any file and restart Neovim - changes apply immediately!

## Troubleshooting

**Plugins not loading?**
```vim
:Lazy sync
```

**LSP not working?**
```vim
:Mason
```
Make sure the server for your language is installed.

**Need to check health?**
```vim
:checkhealth
```

## Next Steps

1. Install LSP servers for your languages (`:Mason`)
2. Customize keybindings in `lua/config/keymaps.lua`
3. Add more plugins by creating files in `lua/plugins/`
4. Read `README.md` for complete documentation

Enjoy your minimal, blazing-fast Neovim setup! 🚀
