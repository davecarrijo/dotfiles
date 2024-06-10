local plugins = {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {},
    config = function()
      require "configs.colorizer"
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- Rainbow bracket colorizer for Neovim
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
  },
  {
    "folke/zen-mode.nvim",
    opts = {},
  },
  {
    "folke/twilight.nvim",
    opts = {},
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension "ui-select"
    end,
    event = "VeryLazy",
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
    event = "BufEnter",
  },
  {
    "lewis6991/satellite.nvim",
    config = function()
      require("satellite").setup {}
    end,
    event = "BufEnter",
  },
  -- Nice cmdliner command
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {

      views = {
        -- visual of the cmdliner
        cmdline_popup = {
          border = {
            style = "none",
            -- padding = { 1, 1 },
          },
          position = {
            row = 36,
            col = "3%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          filter_options = {},
          win_options = {
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
        popupmenu = {
          enabled = true, -- enables the Noice popupmenu UI
          relative = "editor",
          backend = "cmp", -- backend to use to show regular cmdline completions
          position = {
            row = 8,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
        -- visual of the search one
        search_up = {
          view = "cmdline",
        },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = false,
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = true,
      },
    },
  },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    },
  }
}

return plugins
