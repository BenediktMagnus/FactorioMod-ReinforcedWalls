require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Acid resist wall                                                           --
--------------------------------------------------------------------------------
local acidResistWall = util.table.deepcopy(data.raw["item"]["stone-wall"])
acidResistWall.name = "acid-resist-wall"

acidResistWall.icon      = nil
acidResistWall.icon_size = nil
acidResistWall.icons     = lib.prototypes.icons.getItemIcons("item", "stone-wall", 1, {0,0}, require("prototypes/prototype-settings")[acidResistWall.name]["wall-tint"])

acidResistWall.order = acidResistWall.order .. "-b[Reinforced-Walls]-b[" .. acidResistWall.name .. "]"

acidResistWall.place_result = acidResistWall.name

data:extend{acidResistWall}
