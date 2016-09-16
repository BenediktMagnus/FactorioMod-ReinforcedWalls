data:extend({
  {
    type = "recipe",
    name = "reinforced-wall",
	energy_required = 2,
    enabled = false,
    ingredients = 
	{
	   {"concrete", 5},
	   {"iron-stick",5}
	},
    result = "reinforced-wall",
    requester_paste_multiplier = 10
  },
    {
    type = "recipe",
    name = "acid-resist-wall",
	energy_required = 2,
    enabled = false,
    ingredients = 
	{
	   {"reinforced-wall", 1},
	   {"plastic-bar",5}
	},
    result = "acid-resist-wall",
    requester_paste_multiplier = 10
  },
  {
    type = "recipe",
    name = "damage-reflect-wall",
	energy_required = 2,
    enabled = false,
    ingredients = 
	{
	   {"acid-resist-wall", 1},
	   {"defender-capsule", 1}
	},
    result = "damage-reflect-wall",
    requester_paste_multiplier = 10
  }
  })