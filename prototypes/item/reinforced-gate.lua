require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Reinforced gate                                                            --
--------------------------------------------------------------------------------
local reinforcedGate = util.table.deepcopy(data.raw["item"]["gate"])
reinforcedGate.name = "reinforced-gate"

--reinforcedGate.icon      = "__Reinforced-Walls__/graphics/icons/reinforced-wall.png"
--reinforcedGate.icon_size = 32
reinforcedGate.icons     = lib.prototypes.icons.getItemIcons("item", "gate", 1, {0,0}, require("prototypes/prototype-settings")[reinforcedGate.name]["wall-tint"])

reinforcedGate.order = reinforcedGate.order .. "-b[Reinforced-Walls]-a[" .. reinforcedGate.name .. "]"

reinforcedGate.place_result = reinforcedGate.name

data:extend{reinforcedGate}
