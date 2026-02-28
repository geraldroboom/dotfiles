-- Definieren versch. themes in versch. Variabeln. Dann kannst du den return value austauschen, um das Theme auszutauschen.


vscode = {
  'Mofiqul/vscode.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = 'dark'
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      transparent = true,
      italic_comments = true,
      underlune_links = true,
      disable_nvimtree_bg = true,
      color_overrides = {},
      group_overrides = {}
    })
    vim.cmd.colorscheme('vscode')
  end,
}

return vscode
