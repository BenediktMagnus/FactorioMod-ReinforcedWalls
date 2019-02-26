require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Reinforced wall                                                            --
--------------------------------------------------------------------------------
local reinforcedWall = util.table.deepcopy(data.raw["item"]["stone-wall"])
reinforcedWall.name = "reinforced-wall"

--reinforcedWall.icon      = "__Reinforced-Walls__/graphics/icons/reinforced-wall.png"
--reinforcedWall.icon_size = 32
reinforcedWall.icons     = lib.prototypes.icons.getItemIcons("item", "stone-wall", 1, {0,0}, require("prototypes/prototype-settings")[reinforcedWall.name]["wall-tint"])

reinforcedWall.order = reinforcedWall.order .. "-b[Reinforced-Walls]-a[" .. reinforcedWall.name .. "]"

reinforcedWall.place_result = reinforcedWall.name

data:extend{reinforcedWall}
