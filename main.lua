MASQ_UTIL = {}

-- Load utility functions
SMODS.load_file("utilities/functions.lua")()
SMODS.load_file("utilities/definitions.lua")()

-- Load atlases
SMODS.load_file("content/atlas.lua")()

-- Load Jokers
MASQ_UTIL.load_items(MASQ_UTIL.ENABLED_JOKERS, "content/jokers")