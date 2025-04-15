---Loads a list of items
---@param items table
---@param path string
function MASQ_UTIL.load_items(items, path)
    for i = 1, #items do
      SMODS.load_file(path .. "/" .. items[i] .. ".lua")()
    end
  end