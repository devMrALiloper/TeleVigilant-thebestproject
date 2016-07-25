local function run(msg, matches)
if msg.to.type == "user" then
    local cmd = io.popen('curl http://api.magic-team.ir/cc.php?text='..matches[1])
      local result = cmd:read('*all')
    cmd:close()
    return result
end
end



return {
patterns = {
"^(.*)$",
},
run = run
}