--------------------------------------------------------------------------------
-- Reinforced wall                                                            --
--------------------------------------------------------------------------------
data:extend{
  {
    type = "recipe",
    name = "reinforced-wall",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"concrete"  , 5},
      {"iron-stick", 5},
    },
    result = "reinforced-wall",
    requester_paste_multiplier = 10
  },
}
