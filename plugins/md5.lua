function run(msg, matches)
local url , res = http.request('http://bot-negative23.rhcloud.com/s.php?text='..matches[2])
if res ~= 200 then return "Error encoding" end
local jdat = json:decode(url)
local send = 'code : '..jdat.md5
return send
end
return {
  patterns = {
    "^[/!]([Mm]d5) (.*)$",
    "^([Mm]d5) (.*)"
},
run = run
}
