-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- [[ Custom Options ]]
vim.o.splitright = true
vim.o.hidden = true
vim.o.errorbells = false
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.incsearch = true
vim.o.scrolloff = 8
vim.o.showmode = false
vim.o.list = true
vim.o.listchars = "tab:»·,eol:↲,trail:·,extends:»,precedes:«,nbsp:·"
vim.o.showbreak = "↪ "
vim.wo.cursorline = true
vim.wo.colorcolumn = "80,120"

-- [[ Custom Keymap ]]
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', '<leader>+', '<cmd>vertical resize +5<CR>')
vim.keymap.set('n', '<leader>-', '<cmd>vertical resize -5<CR>')
vim.keymap.set('n', '<leader>S', '<cmd>set spell!<CR>')
vim.keymap.set('n', 'U', '<cmd>earlier 1f<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>bd!<CR>')
vim.keymap.set('n', '<TAB>', '<cmd>bn<CR>')
vim.keymap.set('n', '<S-TAB>', '<cmd>bp<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Github Copilot Config
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

return {
  -- [[ Custom Plugins ]]
  {
    -- Theme
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },

  {
    -- Select and move text.
    'echasnovski/mini.nvim',
    version = "*",
    config = function()
      require('mini.move').setup()
      require('mini.surround').setup()
      require('mini.colors').setup()
    end
  },

  {
    -- Github Copilot
    'github/copilot.vim',
    version = "*",
  },

  {
    -- Variable highlighter
    'RRethy/vim-illuminate',
    version = '*',
  },

  {
    -- Syntax highlight comment
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

  {
    -- Center the editor
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    opts = {
      autocmds = { enableOnVimEnter = false, },
      mappings = { enabled = true, toggle = "<leader>np", },
      width = 135,
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
