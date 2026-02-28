local function wordcount_prose()
  local label = "word"
  local word_count = 0

  if vim.fn.mode():find("[vV]") then
    word_count = vim.fn.wordcount().visual_words
  else
    word_count = vim.fn.wordcount().words
  end

  if word_count > 1 then
    label = label .. "s"
  end

  return word_count .. " " .. label
end

local function wordcount_tex()
  local label = "word"
  local word_count = 0

  -- local output = vim.cmd('VimtexCountWords')

  -- word_count = require('vimtex.misc').wordcount({ count_letters = 0, detailed = 0 })

  if word_count > 1 then
    label = label .. "s"
  end

  return word_count .. " " .. label
end

local function is_prose()
  return vim.bo.filetype == "markdown" or vim.bo.filetype == "text" or vim.bo.filetype == "help"
end

local function is_tex()
  return vim.bo.filetype == "tex"
end


return {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                -- icons_enabled = false,
                theme = 'codedark',
                component_separators = '|',
                section_separators = '',
            },
            sections = {
                lualine_z = {
                    { 'location' },
                    { wordcount_prose, cond = is_prose },
                    { wordcount_tex, cond = is_tex },
                },
            },
        },
    }
