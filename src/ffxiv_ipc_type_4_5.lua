-- This file is generated by tools/json2lua.js

local M = {}
M.types = {
  MatchQueue = 0x0078,
}

function M.getDissector(type)
  if type == M.types.MatchQueue then
    return Dissector.get('ffxiv_ipc_match_queue')
  else
    return nil
  end
end

return M
