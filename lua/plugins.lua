local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    -- theme
    "folke/tokyonight.nvim",
    lazy = false,
  },
  {
    -- fuzzy finding
    cmd = "Telescope", -- this plugin will not load until you execute this command
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" },
  },
  {
    -- indent-blankline
    "lukas-reineke/indent-blankline.nvim",
  },
  {
    -- portable package manager for LSP servers, DAP servers and other things.
    event = "VeryLazy",
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  },
  {
    event = "VeryLazy",
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  },
  {
    event = "VeryLazy",
    "hrsh7th/nvim-cmp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      -- 常见编程语言代码段
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
  },
  {
    -- description for function call
    "folke/neodev.nvim",
  },
  {
    -- surround
    "ur4ltz/surround.nvim",
  },
  {
    -- Comment
    "numToStr/Comment.nvim",
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    -- UI 增强
    "onsails/lspkind-nvim",
    "tami5/lspsaga.nvim",
    event = "VeryLazy",
  },
  {
    -- git related
    event = "VeryLazy",
    "tpope/vim-fugitive",
    cmd = "Git",
  },
  {
    -- git related
    event = "VeryLazy",
    "lewis6991/gitsigns.nvim",
  },
  {
    -- move between tmux and neovim
    event = "VeryLazy",
    "numToStr/Navigator.nvim",
  },
  {
    -- highlight the grammar based on language
    event = "VeryLazy",
    "nvim-treesitter/nvim-treesitter",
  },
  {
    -- make the language becmoe object based on the semantic tree
    event = "VeryLazy",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  {
    -- dap related
    "mfussenegger/nvim-dap",
  },
  {
    -- dap related
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    event = "VeryLazy",
    "jinh0/eyeliner.nvim",
  },
  {
    -- disable highlight searche when you move
    event = "VeryLazy",
    "romainl/vim-cool",
  },
  {
    event = "VeryLazy",
    "akinsho/toggleterm.nvim",
  },
  {
    event = "VeryLazy",
    "nvim-lualine/lualine.nvim",
    "arkav/lualine-lsp-progress",
    dependencies = { "kyazdani42/nvim-web-devicons" },
  },
  {
    -- coq
    event = "VeryLazy",
    "whonore/Coqtail",
    ft = 'coq'
  },
})
