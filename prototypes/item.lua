data:extend({
 {
    type = "item",
    name = "reinforced-wall",
    icon = "__Reinforced-Walls__/graphics/icons/reinforced-wall.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[stone-wall]-b[reinforced-wall]",
    place_result = "reinforced-wall",
    stack_size = 100
  },
  {
     type = "item",
    name = "acid-resist-wall",
    icon = "__Reinforced-Walls__/graphics/icons/acid-resist-wall.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[stone-wall]-c[acid-resist-wall]",
    place_result = "acid-resist-wall",
    stack_size = 100
  },
  {
     type = "item",
    name = "damage-reflect-wall",
    icon = "__Reinforced-Walls__/graphics/icons/damage-reflect-wall.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[stone-wall]-c[damage-reflect-wall]",
    place_result = "damage-reflect-wall",
    stack_size = 100
  }
  
})
