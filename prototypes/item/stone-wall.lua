require "LSlib.lib"

--------------------------------------------------------------------------------
-- Stone wall                                                                 --
--------------------------------------------------------------------------------
local stoneWall = data.raw["wall"]["stone-wall"]

-- make sure it has icons, and not icon/icon_size
stoneWall.icons     = LSlib.item.getIcons(stoneWall.type, stoneWall.name)
stoneWall.icon      = nil
stoneWall.icon_size = nil
