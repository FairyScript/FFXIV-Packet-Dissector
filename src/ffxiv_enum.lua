-- This file is generated by tools/json2lua.js

local M = {
  forward = {},
  reverse = {}
}

local function makeValString(enumTable)
  local t = {}
  for name,num in pairs(enumTable) do
      t[num] = name
  end
  return t
end


M.forward.actor_control142_type = {
  DoT = 23,
  CancelAbility = 15,
  Death = 6,
  TargetIcon = 34,
  BuffRemove = 21,
  NameToggle = 54,
}
M.reverse.actor_control142_type = makeValString(M.forward.actor_control142_type)

M.forward.actor_control143_type = {
  ExpGain = 7,
  ServerTime = 24,
  FateStart = 116,
  FateEnd = 121,
  FateProgress = 155,
  FateNpc = 178,
  PlayerCurrency = 378,
}
M.reverse.actor_control143_type = makeValString(M.forward.actor_control143_type)

M.forward.client_action_type = {
  Action = 8,
  CraftAction = 9,
  InvalidAction = 10,
}
M.reverse.client_action_type = makeValString(M.forward.client_action_type)

M.forward.cfnotify_type = {
  Cancelled = 3,
  Matched = 4,
  Enter = 6,
}
M.reverse.cfnotify_type = makeValString(M.forward.cfnotify_type)

M.forward.group_message_type = {
  Linkshell = 2,
  FreeCompany = 3,
  NoviceNetwork = 4,
  Time = 333,
}
M.reverse.group_message_type = makeValString(M.forward.group_message_type)

M.forward.match_event_type = {
  Cancel = 3,
  Matched = 4,
  Enter = 6,
}
M.reverse.match_event_type = makeValString(M.forward.match_event_type)

M.forward.public_message_type = {
  Shout = 11,
  Yell = 30,
  Say = 10,
}
M.reverse.public_message_type = makeValString(M.forward.public_message_type)

M.forward.item_quality = {
  NormalQuality = 0,
  HighQuality = 1,
  Collectables = 8,
}
M.reverse.item_quality = makeValString(M.forward.item_quality)

M.forward.item_location = {
  Inventory0 = 0,
  Inventory1 = 1,
  Inventory2 = 2,
  Inventory3 = 3,
  ArmouryEquipped = 1000,
  Currency = 2000,
  Crystal = 2001,
  ArmouryOffHand = 3200,
  ArmouryHead = 3201,
  ArmouryBody = 3202,
  ArmouryHands = 3203,
  ArmouryWaist = 3204,
  ArmouryLegs = 3205,
  ArmouryFeet = 3206,
  ArmouryEars = 3207,
  ArmouryNeck = 3208,
  ArmouryWrists = 3209,
  ArmouryRightRing = 3210,
  ArmouryLeftRing = 3211,
  ArmouryRing = 3300,
  SoulCrystal = 3400,
  ArmouryMainHand = 3500,
  Saddlebag0 = 4000,
  Saddlebag1 = 4001,
}
M.reverse.item_location = makeValString(M.forward.item_location)

M.forward.item_armoury_position = {
  MainHand = 0,
  OffHand = 1,
  Head = 2,
  Body = 3,
  Hands = 4,
  Waist = 5,
  Legs = 6,
  Feet = 7,
  Ears = 8,
  Neck = 9,
  Wrists = 10,
  RightRing = 11,
  LeftRing = 12,
  SoulCrystal = 13,
}
M.reverse.item_armoury_position = makeValString(M.forward.item_armoury_position)

M.forward.item_quality = {
  NormalQuality = 0,
  HighQuality = 1,
  Collectables = 8,
}
M.reverse.item_quality = makeValString(M.forward.item_quality)

M.forward.item_location = {
  Inventory0 = 0,
  Inventory1 = 1,
  Inventory2 = 2,
  Inventory3 = 3,
  ArmouryEquipped = 1000,
  Currency = 2000,
  Crystal = 2001,
  ArmouryOffHand = 3200,
  ArmouryHead = 3201,
  ArmouryBody = 3202,
  ArmouryHands = 3203,
  ArmouryWaist = 3204,
  ArmouryLegs = 3205,
  ArmouryFeet = 3206,
  ArmouryEars = 3207,
  ArmouryNeck = 3208,
  ArmouryWrists = 3209,
  ArmouryRightRing = 3210,
  ArmouryLeftRing = 3211,
  ArmouryRing = 3300,
  SoulCrystal = 3400,
  ArmouryMainHand = 3500,
  Saddlebag0 = 4000,
  Saddlebag1 = 4001,
}
M.reverse.item_location = makeValString(M.forward.item_location)

M.forward.item_armoury_position = {
  MainHand = 0,
  OffHand = 1,
  Head = 2,
  Body = 3,
  Hands = 4,
  Waist = 5,
  Legs = 6,
  Feet = 7,
  Ears = 8,
  Neck = 9,
  Wrists = 10,
  RightRing = 11,
  LeftRing = 12,
  SoulCrystal = 13,
}
M.reverse.item_armoury_position = makeValString(M.forward.item_armoury_position)

return M
