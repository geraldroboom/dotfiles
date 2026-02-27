-- functions from https://nickjanetakis.com/blog/modify-lualine-in-neovim-to-show-word-count-and-reading-time
local function get_wordcount()
  local word_count = 0

  if vim.fn.mode():find("[vV]") then
    word_count = vim.fn.wordcount().visual_words
  else
    word_count = vim.fn.wordcount().words
  end

  return word_count
end


local function wordcount()
  local label = "word"
  local word_count = get_wordcount()

  if word_count > 1 then
    label = label .. "s"
  end

  return word_count .. " " .. label
end


local function is_prose()
  return vim.bo.filetype == "markdown" or vim.bo.filetype == "text"
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
                    { wordcount, cond = is_prose },
                },
            },
        },
    }
