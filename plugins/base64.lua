--[[
developer @negative
copy right MIT
@taylor_team
]]
function run(msg, matches)
local url , res = http.request('http://bot-negative23.rhcloud.com/s.php?text='..matches[2])
if res ~= 200 then return "Error encoding" end
local jdat = json:decode(url)
local send = 'code : '..jdat.base64
return send
end
return {
  patterns = {
    "^[/!]([Bb]ase64) (.*)$",
    "^([Bb]ase64) (.*)"
},
run = run
}
