-- lua/plugins/colorscheme.lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure it loads first to prevent flickering
    config = function()
      require("catppuccin").setup({
        -- Customize the colorscheme here
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        background = {     -- :h background
            light = "latte",
            dark = "frappe",
        },
        transparent_background = true,
        term_colors = true,
        no_italic = false,
        no_bold = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        -- Integrations with other plugins
        integrations = {
          telescope = true,
          -- For more integrations, see: https://github.com/catppuccin/nvim#integrations
        },
      })
      
      -- Set the colorscheme
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
