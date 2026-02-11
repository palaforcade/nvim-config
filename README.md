# Neovim Keyboard Shortcuts

Minimal Neovim configuration with LSP, Telescope fuzzy finder, and Oil file explorer.

> **Leader Key:** `Space`

## File Navigation

| Shortcut | Action |
|----------|--------|
| `<Space>e` | Open file explorer (Oil) |
| `<Space>ff` | Find files (all files) |
| `<Space>fG` | Find files (git files only - faster) |
| `<Space>fr` | Recent files |
| `<Space>fb` | List open buffers |
| `<Space>f/` | Search in current buffer |

## Search

| Shortcut | Action |
|----------|--------|
| `<Space>fg` | Live grep (search text in all files) |
| `<Space>fc` | Find word under cursor |
| `<Space>fh` | Search help docs |

## Code Navigation (LSP)

| Shortcut | Action |
|----------|--------|
| `<Space>fs` | Document symbols (functions, classes in current file) |
| `<Space>fS` | Workspace symbols (search symbols in entire project) |
| `<Space>fd` | Show all diagnostics (errors/warnings) |
| `gd` | Go to definition |
| `gr` | Go to references |
| `gI` | Go to implementation |
| `K` | Show documentation |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<Space>d` | Show diagnostic float |

## Code Actions

| Shortcut | Action |
|----------|--------|
| `<Space>ca` | Code actions (fixes, refactors) |
| `<Space>rn` | Rename symbol |

## Git

| Shortcut | Action |
|----------|--------|
| `]h` | Next change |
| `[h` | Previous change |
| `<Space>hp` | Preview change |
| `<Space>hs` | Stage change |
| `<Space>hr` | Reset change |
| `<Space>hb` | Blame line |

## Window Management

| Shortcut | Action |
|----------|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to lower window |
| `<C-k>` | Move to upper window |
| `<C-l>` | Move to right window |

## Editing

| Shortcut | Action |
|----------|--------|
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `<Space>bd` | Close buffer |
| `<Esc>` | Clear search highlight |
| `<` | Indent left (visual mode) |
| `>` | Indent right (visual mode) |
| `J` | Move line down (visual mode) |
| `K` | Move line up (visual mode) |
| `p` | Paste without yanking (visual mode) |

## Scrolling

| Shortcut | Action |
|----------|--------|
| `<C-d>` | Scroll down (centered) |
| `<C-u>` | Scroll up (centered) |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |

## Completion (Insert Mode)

| Shortcut | Action |
|----------|--------|
| `<C-Space>` | Trigger completion |
| `<C-n>` | Next suggestion |
| `<C-p>` | Previous suggestion |
| `<CR>` | Confirm selection |
| `<Tab>` | Next item / expand snippet |
| `<S-Tab>` | Previous item |

## Telescope Picker

Inside Telescope fuzzy finder:

| Shortcut | Action |
|----------|--------|
| `<C-j>` | Next result |
| `<C-k>` | Previous result |
| `<CR>` | Open file |
| `<Esc>` / `q` | Close |
| `<C-v>` | Open in vertical split |
| `<C-x>` | Open in horizontal split |
| `<C-q>` | Send to quickfix list |
| `<C-d>` | Delete buffer (in buffer list) |

## Oil File Explorer

Inside Oil:

| Shortcut | Action |
|----------|--------|
| `<CR>` | Open file/directory |
| `-` | Go to parent directory |
| `g.` | Toggle hidden files |
| `<C-s>` | Open in vertical split |
| `<C-h>` | Open in horizontal split |
| `<C-c>` | Close Oil |
| `g?` | Show help |

## Commands

| Command | Description |
|---------|-------------|
| `:Lazy` | Plugin manager |
| `:Mason` | Install LSP servers |
| `:Telescope` | Fuzzy finder |
| `:Oil` | File explorer |
| `:checkhealth` | System diagnostics |

## Quick Start

1. **Find a file:** `<Space>ff` then type filename
2. **Search in project:** `<Space>fg` then type search term
3. **Browse files:** `<Space>e` to open file explorer
4. **Go to definition:** Put cursor on function, press `gd`
5. **Fix errors:** Put cursor on error, press `<Space>ca`

---

**Installation:** Clone to `~/.config/nvim`, run `nvim` and `:Lazy sync`
**Add LSP servers:** `:Mason` then press `i` to install
