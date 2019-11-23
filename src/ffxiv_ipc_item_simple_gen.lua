-- This file is generated by tools/json2lua.js

local enum = require('ffxiv_enum')
local ffxiv_ipc_item_simple = Proto("ffxiv_ipc_item_simple", "FFXIV-IPC ItemSimple")

local item_simple_fields = {
  index    = ProtoField.uint32("ffxiv_ipc_item_simple.index", "Index", base.DEC),
  location = ProtoField.uint16("ffxiv_ipc_item_simple.location", "Location", base.DEC, enum.reverse.item_location),
  position = ProtoField.uint16("ffxiv_ipc_item_simple.position", "Position", base.DEC),
  amount   = ProtoField.uint32("ffxiv_ipc_item_simple.amount", "Amount", base.DEC),
  unknown0 = ProtoField.uint32("ffxiv_ipc_item_simple.unknown0", "Unknown0", base.DEC),
  item_id  = ProtoField.uint16("ffxiv_ipc_item_simple.item_id", "ItemID", base.DEC),
  unknown1 = ProtoField.uint16("ffxiv_ipc_item_simple.unknown1", "Unknown1", base.DEC),
  unknown2 = ProtoField.uint32("ffxiv_ipc_item_simple.unknown2", "Unknown2", base.DEC),
  unknown3 = ProtoField.uint32("ffxiv_ipc_item_simple.unknown3", "Unknown3", base.DEC),
  unknown4 = ProtoField.uint32("ffxiv_ipc_item_simple.unknown4", "Unknown4", base.DEC),
}

ffxiv_ipc_item_simple.fields = item_simple_fields

function ffxiv_ipc_item_simple.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_item_simple, tvbuf)

  -- dissect the index field
  local index_tvbr = tvbuf:range(0, 4)
  local index_val  = index_tvbr:le_uint()
  tree:add_le(item_simple_fields.index, index_tvbr)

  -- dissect the location field
  local location_tvbr = tvbuf:range(4, 2)
  local location_val  = location_tvbr:le_uint()
  tree:add_le(item_simple_fields.location, location_tvbr)

  -- dissect the position field
  local position_tvbr = tvbuf:range(5, 2)
  local position_val  = position_tvbr:le_uint()
  tree:add_le(item_simple_fields.position, position_tvbr)

  -- dissect the amount field
  local amount_tvbr = tvbuf:range(8, 4)
  local amount_val  = amount_tvbr:le_uint()
  tree:add_le(item_simple_fields.amount, amount_tvbr)

  -- dissect the unknown0 field
  local unknown0_tvbr = tvbuf:range(12, 4)
  local unknown0_val  = unknown0_tvbr:le_uint()
  tree:add_le(item_simple_fields.unknown0, unknown0_tvbr)

  -- dissect the item_id field
  local item_id_tvbr = tvbuf:range(16, 2)
  local item_id_val  = item_id_tvbr:le_uint()
  tree:add_le(item_simple_fields.item_id, item_id_tvbr)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(18, 2)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(item_simple_fields.unknown1, unknown1_tvbr)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(20, 4)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(item_simple_fields.unknown2, unknown2_tvbr)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(24, 4)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(item_simple_fields.unknown3, unknown3_tvbr)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(28, 4)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(item_simple_fields.unknown4, unknown4_tvbr)


  pktinfo.cols.info:set("ItemSimple")
  return tvbuf:len()
end