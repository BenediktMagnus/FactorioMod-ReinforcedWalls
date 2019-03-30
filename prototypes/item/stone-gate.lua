require "LSlib.lib"

--------------------------------------------------------------------------------
-- Stone wall                                                                 --
--------------------------------------------------------------------------------
local stoneGate = data.raw["gate"]["gate"]

-- make sure it has icons, and not icon/icon_size
stoneGate.icons     = LSlib.item.getIcons(stoneGate.type, stoneGate.name)
stoneGate.icon      = nil
stoneGate.icon_size = nil
