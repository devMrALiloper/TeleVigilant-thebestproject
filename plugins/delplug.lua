
local function run(msg, matches)
    if matches[1] == "delplug" and is_sudo(msg) then
text = io.popen("cd plugins && rm "..matches[2]..".lua")
reply_msg(msg['id'], "پلاگین ["..matches[2].."] با موفقیت حذف شد", ok_cb, false)
return text
end 
end

return { 
patterns = {
 
'^[!/](delplug) (.*)$' 
},
run = run,
}
--@TeleVigilant_Team
