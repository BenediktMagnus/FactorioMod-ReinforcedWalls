require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Acid resist gate                                                           --
--------------------------------------------------------------------------------
local acidResistGate = util.table.deepcopy(data.raw["item"]["gate"])
acidResistGate.name = "acid-resist-gate"

--acidResistGate.icon      = "__Reinforced-Walls__/graphics/icons/reinforced-wall.png"
--acidResistGate.icon_size = 32
acidResistGate.icons     = lib.prototypes.icons.getItemIcons("item", "gate", 1, {0,0}, require("prototypes/prototype-settings")[acidResistGate.name]["wall-tint"])

acidResistGate.order = acidResistGate.order .. "-b[Reinforced-Walls]-b[" .. acidResistGate.name .. "]"

acidResistGate.place_result = acidResistGate.name

data:extend{acidResistGate}
