local function run(msg)
if msg.text == "help pv" or "Help pv" and is_owner(msg) then
 return "🔘in private commands🔘\n\nThese commands only works in bots private:\n♨Hammer♨\n💭 [!/]owners group_id [kick|ban|unban] user_id\n💭 [!/]owners 1234567 kick 1234567\n♨cleaning♨\n\n💭 [!/]owners group_id clean [modlist|rules|about]\n💭 [!/]owners 1234567 clean modlist\n\nsetting flood sensitivity ✅\n💭 [!/]owners group_id setflood value\n💭 [!/]owners 1234567 setflood 17\n\n💡lock groups member|name💡\n💭 [!/]owners group_id lock [member|name]\n💭 [!/]owners 1234567 lock member\n\n💡unlock groups member|name💡\n💭 [!/]owner group_id unlock [member|name]\n💭 [!/]owners 1234567 unlock name\n\n▶Group link◀\n💭 [!/]owners group_id get link\n💭 [!/]owners 1234567 get link\n\n💭 [!/]owners group_id new link\n💭 [!/]owners 1234567 new link\n\n⚪change name|rules|name⚪\n💭 [!/]changename [group_id] [name]\n💭 [!/]changename 123456789 PIKA\n\n💭 [!/]changrules [group_id] [rules]\n💭 [!/]changrules 123456789 [rules text]\n\n💭 [!/]changeabout [group_id] [about]\n💭 [!/]changeabout 123456789 [about text]\n\n✴Group log✴\n💭 [!/]loggroup [group_id]\n💭 [!/]loggroup 123456789\n\n🔶Join🔶\n💭 [!/]join [group_id]\n▶This command will add user in [group_id]\n\n\n✔help by @blackwolf_admin \n\nℹour channel\n https://telegram.me/pika_channel "

end
end

return {
 description = "help pv", 
 usage = "help pv",
 patterns = {
  "^[Hh]elp pv$",
}, 
 run = run,
 pre_process = pre_process
}