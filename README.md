# NVIM

## Prerequisites

Install these before launching this config:

- `neovim` 0.11+
- `git`
- `ripgrep` (`rg`) for Telescope live grep
- `cmake` plus a C/C++ toolchain (`gcc`/`clang`, `make` or `ninja`) for native plugin builds
- `python3` (used by `nvim-dap-python`)
- Nerd Font (recommended for icon rendering in UI/completion)

Language servers enabled in this config:

- `lua-language-server` (`lua_ls`)
- `ruff` (LSP + formatting for Python)
- `pyrefly`
- `clangd`
- `rust-analyzer`

Formatters configured in this config:

- `shfmt`
- `stylua`
- `ruff`
- `clang-format`
- `rustfmt`

Rust tooling expected by this config:

- `clippy` (used by `rust-analyzer` check command)
- `rustfmt`

Optional but useful:

- `glow` (for markdown preview via `<leader>md`)
- `tmux` (for `vim-tmux-navigator` keybindings)
