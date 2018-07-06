require 'util'

--------------------------------------------------------------------------------
-- Reinforced wall                                                            --
--------------------------------------------------------------------------------
local reinforcedWall = util.table.deepcopy(data.raw["wall"]["stone-wall"])
reinforcedWall.name = "reinforced-wall"

reinforcedWall.minable.result = "reinforced-wall"

reinforcedWall.icon = data.raw["item"][reinforcedWall.minable.result].icon
reinforcedWall.icon_size = data.raw["item"][reinforcedWall.minable.result].icon_size
reinforcedWall.icons = util.table.deepcopy(data.raw["item"][reinforcedWall.minable.result].icons)

reinforcedWall.max_health = 700
reinforcedWall.repair_speed_modifier = 2
reinforcedWall.resistance =
{
  { type = "physical" , decrease = 3 , percent = 40  },
  { type = "impact"   , decrease = 45, percent = 60  },
  { type = "explosion", decrease = 10, percent = 30  },
  { type = "fire"     , decrease = 0 , percent = 100 },
  { type = "laser"    , decrease = 0 , percent = 70  },
}
reinforcedWall.attack_reaction = nil



--------------------------------------------------------------------------------
-- Acid resistance wall                                                       --
--------------------------------------------------------------------------------
local acidResistWall = util.table.deepcopy(reinforcedWall)
acidResistWall.minable.result = "acid-resist-wall"
acidResistWall.name = data.raw["item"][acidResistWall.minable.result].place_result

acidResistWall.icon = data.raw["item"][acidResistWall.minable.result].icon
acidResistWall.icon_size = data.raw["item"][acidResistWall.minable.result].icon_size
acidResistWall.icons = util.table.deepcopy(data.raw["item"][acidResistWall.minable.result].icons)

acidResistWall.max_health = 700
acidResistWall.repair_speed_modifier = 2
acidResistWall.resistance =
{
  { type = "physical" , decrease = 3 , percent = 50  },
  { type = "impact"   , decrease = 45, percent = 60  },
  { type = "explosion", decrease = 10, percent = 30  },
  { type = "fire"     , decrease = 0 , percent = 100 },
  { type = "acid"     , decrease = 4 , percent = 60  },
  { type = "laser"    , decrease = 0 , percent = 70  },
}
acidResistWall.attack_reaction = nil



--------------------------------------------------------------------------------
-- Damage reflecting wall                                                     --
--------------------------------------------------------------------------------
local damageReflectingWall = util.table.deepcopy(reinforcedWall)
damageReflectingWall.minable.result = "damage-reflect-wall"
damageReflectingWall.name = data.raw["item"][damageReflectingWall.minable.result].place_result

damageReflectingWall.icon = data.raw["item"][damageReflectingWall.minable.result].icon
damageReflectingWall.icon_size = data.raw["item"][damageReflectingWall.minable.result].icon_size
damageReflectingWall.icons = util.table.deepcopy(data.raw["item"][damageReflectingWall.minable.result].icons)

damageReflectingWall.max_health = 700
damageReflectingWall.repair_speed_modifier = 2
damageReflectingWall.resistance = util.table.deepcopy(acidResistWall.resistance)
-- {
--   { type = "physical" , decrease = 3 , percent = 50  },
--   { type = "impact"   , decrease = 45, percent = 60  },
--   { type = "explosion", decrease = 10, percent = 30  },
--   { type = "fire"     , decrease = 0 , percent = 100 },
--   { type = "acid"     , decrease = 4 , percent = 60  },
--   { type = "laser"    , decrease = 0 , percent = 70  },
-- }
damageReflectingWall.attack_reaction =
{
  {
    range = 2,
    --damage_type = "laser",
    reaction_modifier = 0.1,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = { amount = 0.5, type = "laser" },
        },
      },
    },
  },
}



data:extend({
  reinforcedWall,
  acidResistWall,
  damageReflectingWall,
})
