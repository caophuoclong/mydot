-- kyazdani42/nvim-tree.lua
require("nvim-tree").setup({
  disable_netrw = false,
  hijack_netrw = false,
  ignore_ft_on_setup = {},
  hijack_directories = {
   enable = true,
    auto_open = true,
  },
  update_cwd = true,
  diagnostics = {enable=true},
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  actions = {
    open_file = {
      resize_window = true
    },
  },
    view = {
    width = 38,
    side = "left",
    mappings = {
      custom_only = false,
      list = {},
    },
  },
})

map("n", "<leader>n", ":NvimTreeToggle<CR>")
