lua << EOF

-- disable netrw (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.auto_close = 1

-- setup
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  open_on_setup = true,
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
    exclude = { ".gitignore", ".env", ".env.local" },
  },
})

EOF

" Maps for nvim-tree

map <C-n> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeFocus<esc>
inoremap <leader>n <esc>:NvimTreeFocus<esc>

