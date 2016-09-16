data:extend({

{
    type = "technology",
    name = "reinforced-walls",
    icon = "__Reinforced-Walls__/graphics/icons/tech-tree.png",
	icon_size = 128,
	prerequisites = {"stone-walls", "concrete", "military-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "reinforced-wall"
      }
    },
    unit =
    {
      count = 50,
      ingredients = 
	  {
	      {"science-pack-1", 1},
		  {"science-pack-2", 1},
		  {"science-pack-3", 1}
	  },
      time = 20
    },
    order = "a-k-b"
  },
  {
    type = "technology",
    name = "acid-resist-walls",
    icon = "__Reinforced-Walls__/graphics/icons/tech-tree1.png",
	icon_size = 128,
	prerequisites = {"reinforced-walls", "plastics", "military-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "acid-resist-wall"
      }
    },
    unit =
    {
      count = 100,
      ingredients = 
	  {
	      {"science-pack-1", 1},
		  {"science-pack-2", 1},
		  {"science-pack-3", 1}, 
		  {"alien-science-pack", 1}
	  },
      time = 30
    },
    order = "a-k-c"
  },
  {
    type = "technology",
    name = "damage-reflect-walls",
    icon = "__Reinforced-Walls__/graphics/icons/tech-tree2.png",
	icon_size = 128,
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
		  {"alien-science-pack", 1}
	  },
      time = 30
    },
    order = "a-k-c"
  }
})
