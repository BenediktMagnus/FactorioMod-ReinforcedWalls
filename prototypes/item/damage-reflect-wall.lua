require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Damage reflect wall                                                        --
--------------------------------------------------------------------------------
local damageReflectWall = util.table.deepcopy(data.raw["item"]["stone-wall"])
damageReflectWall.name = "damage-reflect-wall"

damageReflectWall.icon      = nil
damageReflectWall.icon_size = nil
damageReflectWall.icons     = lib.prototypes.icons.getItemIcons("item", "stone-wall", 1, {0,0}, require("prototypes/prototype-settings")[damageReflectWall.name]["wall-tint"])

damageReflectWall.order = damageReflectWall.order .. "-b[Reinforced-Walls]-c[" .. damageReflectWall.name .. "]"

damageReflectWall.place_result = damageReflectWall.name

data:extend{damageReflectWall}
