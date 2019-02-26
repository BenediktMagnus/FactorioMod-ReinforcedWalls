require "lib/prototypes/icons"

--------------------------------------------------------------------------------
-- Reinforced wall                                                            --
--------------------------------------------------------------------------------
data:extend{
  {
    type = "technology",
    name = "reinforced-walls",
    --icon = "__Reinforced-Walls__/graphics/icons/tech-tree.png",
    --icon_size = 128,
    icons = lib.prototypes.icons.getItemIcons("technology", "stone-walls", 1, {0,0}, require("prototypes/prototype-settings")["reinforced-wall"]["wall-tint"]),
    prerequisites = {"stone-walls", "concrete", "military-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "reinforced-wall",
      }
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 20,
    },
    order = "a-k-b",
  },
}
