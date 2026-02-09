# Neovim Quick Reference

## First Time Setup

1. **Launch Neovim**: `nvim`
2. **Sync plugins**: `:Lazy sync`
3. **Install LSP servers**: `:Mason` → press `i` on servers
4. **Check health**: `:checkhealth`

## Essential Commands

| Command | Description |
|---------|-------------|
| `:Lazy` | Plugin manager |
| `:Mason` | LSP server installer |
| `:checkhealth` | System diagnostics |
| `:Telescope` | Fuzzy finder |
| `:Oil` | File explorer |

## Key Bindings Quick Reference

### Files & Navigation
| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Search in files (grep) |
| `<Space>fb` | List buffers |
| `<Space>e` | File explorer |
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `<Space>bd` | Close buffer |

### LSP (Code Intelligence)
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Show documentation |
| `<Space>ca` | Code actions |
| `<Space>rn` | Rename symbol |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Git
| Key | Action |
|-----|--------|
| `]h` | Next change |
| `[h` | Previous change |
| `<Space>hp` | Preview change |
| `<Space>hs` | Stage change |
| `<Space>hr` | Reset change |

### Window Management
| Key | Action |
|-----|--------|
| `<C-h>` | Left window |
| `<C-j>` | Down window |
| `<C-k>` | Up window |
| `<C-l>` | Right window |

### Editing
| Key | Action |
|-----|--------|
| `<` | Indent left (visual) |
| `>` | Indent right (visual) |
| `J` | Move line down (visual) |
| `K` | Move line up (visual) |
| `<Esc>` | Clear search highlight |

## Completion (Insert Mode)

| Key | Action |
|-----|--------|
| `<C-Space>` | Trigger completion |
| `<C-n>` | Next suggestion |
| `<C-p>` | Previous suggestion |
| `<CR>` | Confirm selection |
| `<Tab>` | Next item / expand snippet |
| `<S-Tab>` | Previous item |

## Telescope (Fuzzy Finder)

Inside Telescope:
- `<C-j>` / `<C-k>` - Navigate
- `<CR>` - Open file
- `<Esc>` - Close
- `<C-v>` - Open in vertical split
- `<C-x>` - Open in horizontal split

## Oil (File Explorer)

| Key | Action |
|-----|--------|
| `<CR>` | Open file/directory |
| `-` | Go to parent directory |
| `g.` | Toggle hidden files |
| `<C-s>` | Open in vertical split |
| `<C-h>` | Open in horizontal split |

## Tips

- **Search project**: `<Space>fg` then type your query
- **Jump to file**: `<Space>ff` then type filename
- **Browse files**: `<Space>e` for file explorer
- **Quick help**: `<Space>fh` then search help topics
- **Code actions**: Put cursor on error, press `<Space>ca`
- **Rename everywhere**: `<Space>rn` on symbol

## Common Workflows

### Opening Files
1. `<Space>ff` - Fuzzy find by name
2. `<Space>fg` - Search file contents
3. `<Space>e` - Browse directory tree

### Code Navigation
1. Put cursor on function/variable
2. `gd` - See definition
3. `gr` - See all uses
4. `K` - Read docs

### Fixing Code
1. Put cursor on error (red underline)
2. `<Space>d` - See error message
3. `<Space>ca` - See available fixes
4. Choose fix and press `<CR>`

### Git Changes
1. `]h` - Jump to next change
2. `<Space>hp` - Preview what changed
3. `<Space>hs` - Stage it
