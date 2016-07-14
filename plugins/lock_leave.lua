local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_leave'] == '✅' then


if msg.to.type == 'channel' and not is_momod(msg) then
	ban_user(msg.from.id, msg.to.id)
	
        return 'user banned'
      end
   end
end

return {patterns = {
      "^!!tgservice (chat_del_user)$"
}, run = run}

--By DRAGON
