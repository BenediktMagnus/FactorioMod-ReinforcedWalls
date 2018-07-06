--------------------------------------------------------------------------------
-- Reinforced wall                                                            --
--------------------------------------------------------------------------------
local reinforcedWall = util.table.deepcopy(data.raw["item"]["stone-wall"])

reinforcedWall.name = "reinforced-wall"

reinforcedWall.icon = "__Reinforced-Walls__/graphics/icons/reinforced-wall.png"
reinforcedWall.icon_size = 32
reinforcedWall.icons = nil

reinforcedWall.order = data.raw["item"]["stone-wall"].order .. "-b[Reinforced-Walls]-a[" .. reinforcedWall.name .. "]"

reinforcedWall.place_result = "reinforced-wall"



--------------------------------------------------------------------------------
-- Acid resistance wall                                                       --
--------------------------------------------------------------------------------
local acidResistWall = util.table.deepcopy(reinforcedWall)
acidResistWall.name = "acid-resist-wall"

acidResistWall.icon = "__Reinforced-Walls__/graphics/icons/acid-resist-wall.png"
acidResistWall.icon_size = 32
acidResistWall.icons = nil

acidResistWall.order = data.raw["item"]["stone-wall"].order .. "-b[Reinforced-Walls]-b[" .. acidResistWall.name .. "]"

acidResistWall.place_result = "acid-resist-wall"


--------------------------------------------------------------------------------
-- Damage reflecting wall                                                     --
--------------------------------------------------------------------------------
local damageReflectingWall = util.table.deepcopy(reinforcedWall)
damageReflectingWall.name = "damage-reflect-wall"

damageReflectingWall.icon = "__Reinforced-Walls__/graphics/icons/damage-reflect-wall.png"
damageReflectingWall.icon_size = 32
damageReflectingWall.icons = nil

damageReflectingWall.order = data.raw["item"]["stone-wall"].order .. "-b[Reinforced-Walls]-c[" .. damageReflectingWall.name .. "]"

damageReflectingWall.place_result = "damage-reflect-wall"



data:extend({
  reinforcedWall,
  acidResistWall,
  damageReflectingWall,
})
