data:extend({

{
    type = "technology",
    name = "reinforced-walls",
    icon = "__base__/graphics/technology/stone-walls.png",
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
      count = 100,
      ingredients = 
	  {
	      {"science-pack-1", 1},
		  {"science-pack-2", 1},
		  {"science-pack-3", 1}
	  },
      time = 20
    },
    order = "a-k-a"
  }
})
