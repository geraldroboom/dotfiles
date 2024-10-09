-- [[ Obsidian ]]
return {
  workspaces = {
    {
      name = "Studium",
      path = "~/Documents/Studium",
    },
    {
      name = "Ubersreik",
      path = "~/Documents/Ubersreik",
    },
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true, desc = 'Go to File' },
    },
    -- Toggle check-boxes.
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true, desc = 'Toggle check-boxes' },
    },
  },

  finder_mappings = {},
  new_notes_location = "current_dir",
  wiki_link_func = "prepend_note_path",
  preferred_link_style = "wiki",

  image_name_func = function()
    -- Prefix image names with timestamp.
    return string.format("%Y%m%d_%H%M%S", os.time())
  end,

  note_id_func = function (title)
    title = string.lower(title)
    title = string.gsub(title, " ", "_")
    title = string.gsub(title, ".md", "")
    return title
  end,

  disable_frontmatter = false,

  -- Optional, alternatively you can customize the frontmatter data.
  note_frontmatter_func = function(note)
     -- Add the title of the note as an alias.
    if note.title then
      note:add_alias(note.title)
    end

    -- This is equivalent to the default frontmatter function.
    local out = { id = note.id, aliases = note.aliases, tags = note.tags }

    -- `note.metadata` contains any manually added fields in the frontmatter.
    -- So here we just make sure those fields are kept in the frontmatter.
    if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end
    return out
  end,

  -- Optional, for templates (see below).
  templates = {
    subdir = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    -- A map for custom variables, the key should be the variable and the value a function
    substitutions = {},
  },

  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
  -- URL it will be ignored but you can customize this behavior here.
  follow_url_func = function(url)
    vim.fn.jobstart({"firefox", url})
  end,

  picker = {
    name = "telescope.nvim",
    mappings = {
      -- Create a new note from your query.
      new = "<C-x>",
      -- Insert a link to the selected note.
      insert_link = "<C-l>",
    },
  },

  sort_by = "modified",
  sort_reversed = true,
  search_max_lines = 1000,

  open_notes_in = "current",

  ui = {
    enable = false,  -- set to false to disable all additional syntax features
  },

  -- Specify how to handle attachments.
  attachments = {
    img_folder = "attachments",  -- This is the default
    ---@param client obsidian.Client
    ---@param path Path the absolute path to the image file
    ---@return string
    img_text_func = function(client, path)
      local link_path
      local vault_relative_path = client:vault_relative_path(path) or path
      return string.format("![%s](%s)", path.name, link_path)
    end,
  },
}

