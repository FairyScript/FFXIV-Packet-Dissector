-- This file is generated by tools/json2lua.js

local enum = require('ffxiv_enum')
local ffxiv_ipc_effect_entry = Proto("ffxiv_ipc_effect_entry", "FFXIV-IPC EffectEntry")

local effect_entry_fields = {
  effect_type      = ProtoField.uint8("ffxiv_ipc_effect_entry.effect_type", "effectType", base.DEC, enum.reverse.action_effect_type),
  hit_severity     = ProtoField.uint8("ffxiv_ipc_effect_entry.hit_severity", "hitSeverity", base.DEC, enum.reverse.action_hit_severity_type),
  param            = ProtoField.uint8("ffxiv_ipc_effect_entry.param", "param", base.DEC),
  bonus_percent    = ProtoField.int8("ffxiv_ipc_effect_entry.bonus_percent", "bonusPercent", base.DEC),
  value_multiplier = ProtoField.uint8("ffxiv_ipc_effect_entry.value_multiplier", "valueMultiplier", base.DEC),
  flags            = ProtoField.uint8("ffxiv_ipc_effect_entry.flags", "flags", base.DEC),
  value            = ProtoField.int16("ffxiv_ipc_effect_entry.value", "value", base.DEC),
}

ffxiv_ipc_effect_entry.fields = effect_entry_fields

function ffxiv_ipc_effect_entry.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_effect_entry, tvbuf)
  pktinfo.cols.info:set("EffectEntry")

  local len = tvbuf:len()

  -- dissect the effect_type field
  local effect_type_tvbr = tvbuf:range(0, 1)
  local effect_type_val  = effect_type_tvbr:le_uint()
  tree:add_le(effect_entry_fields.effect_type, effect_type_tvbr, effect_type_val)

  local effect_type_display = ", effectType: " .. (enum.reverse.action_effect_type[effect_type_val] or "(unknown)")
  pktinfo.cols.info:append(effect_type_display)
  tree:append_text(effect_type_display)

  -- dissect the hit_severity field
  local hit_severity_tvbr = tvbuf:range(1, 1)
  local hit_severity_val  = hit_severity_tvbr:le_uint()
  tree:add_le(effect_entry_fields.hit_severity, hit_severity_tvbr, hit_severity_val)

  -- dissect the param field
  local param_tvbr = tvbuf:range(2, 1)
  local param_val  = param_tvbr:le_uint()
  tree:add_le(effect_entry_fields.param, param_tvbr, param_val)

  -- dissect the bonus_percent field
  local bonus_percent_tvbr = tvbuf:range(3, 1)
  local bonus_percent_val  = bonus_percent_tvbr:le_int()
  tree:add_le(effect_entry_fields.bonus_percent, bonus_percent_tvbr, bonus_percent_val)

  -- dissect the value_multiplier field
  local value_multiplier_tvbr = tvbuf:range(4, 1)
  local value_multiplier_val  = value_multiplier_tvbr:le_uint()
  tree:add_le(effect_entry_fields.value_multiplier, value_multiplier_tvbr, value_multiplier_val)

  -- dissect the flags field
  local flags_tvbr = tvbuf:range(5, 1)
  local flags_val  = flags_tvbr:le_uint()
  tree:add_le(effect_entry_fields.flags, flags_tvbr, flags_val)

  -- dissect the value field
  local value_tvbr = tvbuf:range(6, 2)
  local value_val  = value_tvbr:le_int()
  tree:add_le(effect_entry_fields.value, value_tvbr, value_val)

  local value_display = ", value: " .. value_val
  pktinfo.cols.info:append(value_display)
  tree:append_text(value_display)

  if effect_type_val == 0 then
    tree:set_hidden(true)
  end

  return len
end