local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_operator'] == '✅' then


if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)

        return 
      end
   end
end

return {patterns = {
    "ایرانسل",
    "تالیا",
    "رایتل",
    "همراه اول",
    "شارژ",
    "[Ii][Rr][Aa][Nn][Cc][Ee][Ll]",
    "[Rr][Ii][Gg][Tt][Ee][Ll]",
    "[Mm][Cc][Ii]",
    "[Tt][Aa][Ll][Ii][Aa]",
    "[Tt][Aa][Ll][Ii][Yy][Aa]"
}, run = run}

--By @Mr_AL_i
