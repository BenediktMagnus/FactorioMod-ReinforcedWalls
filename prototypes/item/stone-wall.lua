require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Stone wall                                                                 --
--------------------------------------------------------------------------------
local stoneWall = data.raw["wall"]["stone-wall"]

-- make sure it has icons, and not icon/icon_size
stoneWall.icons     = lib.prototypes.icons.getItemIcons(stoneWall.type, stoneWall.name, 1, {0,0}, {})
stoneWall.icon      = nil
stoneWall.icon_size = nil
