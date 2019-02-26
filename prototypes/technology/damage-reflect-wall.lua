--------------------------------------------------------------------------------
-- Damage reflect wall                                                        --
--------------------------------------------------------------------------------
data:extend{
  {
    type = "technology",
    name = "damage-reflect-walls",
    --icon = "__Reinforced-Walls__/graphics/icons/tech-tree2.png",
    --icon_size = 128,
    icons = lib.prototypes.icons.getItemIcons("technology", "stone-walls", 1, {0,0}, require("prototypes/prototype-settings")["damage-reflect-wall"]["wall-tint"]),
    prerequisites = {"acid-resist-walls", "combat-robotics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "damage-reflect-wall"
      }
    },
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
      },
      time = 30,
    },
    order = "a-k-c",
  },
}
