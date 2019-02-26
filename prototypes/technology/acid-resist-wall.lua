--------------------------------------------------------------------------------
-- Acid resist wall                                                           --
--------------------------------------------------------------------------------
data:extend{
  {
    type = "technology",
    name = "acid-resist-walls",
    --icon = "__Reinforced-Walls__/graphics/icons/tech-tree1.png",
    --icon_size = 128,
    icons = lib.prototypes.icons.getItemIcons("technology", "stone-walls", 1, {0,0}, require("prototypes/prototype-settings")["acid-resist-wall"]["wall-tint"]),
    prerequisites = {"reinforced-walls", "plastics", "military-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "acid-resist-wall",
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30,
    },
    order = "a-k-c",
  },
}
