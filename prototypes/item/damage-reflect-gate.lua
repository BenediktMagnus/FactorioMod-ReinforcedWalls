require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Damage reflect gate                                                        --
--------------------------------------------------------------------------------
local damageReflectGate = util.table.deepcopy(data.raw["item"]["gate"])
damageReflectGate.name = "damage-reflect-gate"

--damageReflectGate.icon      = "__Reinforced-Walls__/graphics/icons/reinforced-wall.png"
--damageReflectGate.icon_size = 32
damageReflectGate.icons     = lib.prototypes.icons.getItemIcons("item", "gate", 1, {0,0}, require("prototypes/prototype-settings")[damageReflectGate.name]["wall-tint"])

damageReflectGate.order = damageReflectGate.order .. "-b[Reinforced-Walls]-c[" .. damageReflectGate.name .. "]"

damageReflectGate.place_result = damageReflectGate.name

data:extend{damageReflectGate}
